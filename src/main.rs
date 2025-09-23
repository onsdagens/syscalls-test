#![no_std]
#![no_main]


// aarch64-unknown-none is the bare metal triple.
// build command is 'cargo build --target=aarch64-unknown-none'
// similar target exists for x86 (x86_64-unknown-none)
#[cfg(all(target_arch = "aarch64", target_os = "none"))]
core::arch::global_asm!("
.text
.section .init
init:       
b main
 
"
    );

#[cfg(not(target_os = "none"))]
#[unsafe(no_mangle)]
extern "C" fn __libc_start_main() {
    main();
}


// rustc claims this is not needed but it definitely is
#[unsafe(no_mangle)]
extern "C" fn main() {
    let mut buf: [u8; 64] = [0u8; 64];
    buf[0] = 'h' as u8;
    buf[1] = 'i' as u8;
    syscalls_test::write(&buf);
    syscalls_test::exit();

}



#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
        loop{}
}

#[cfg(not(target_os = "none"))]
#[unsafe(no_mangle)]
fn abort() -> ! {
    let mut buf: [u8; 64] = [0u8; 64];
    buf[0] = 'a' as u8;
    buf[1] = 'b' as u8;
    buf[2] = 'o' as u8;
    buf[3] = 'r' as u8;
    buf[4] = 't' as u8;
    syscalls_test::write(&buf);
    loop{}
}

#[cfg(all(target_arch = "x86_64", not(target_os = "none")))]
#[unsafe(no_mangle)]
fn memset() -> ! {
    let mut buf: [u8; 64] = [0u8; 64];
    buf[0] = 'a' as u8;
    buf[1] = 'b' as u8;
    buf[2] = 'o' as u8;
    buf[3] = 'r' as u8;
    buf[4] = 't' as u8;
    syscalls_test::my_syscall(&buf);
    loop{}
}

