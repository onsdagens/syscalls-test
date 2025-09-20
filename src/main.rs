#![no_std]
#![no_main]
#[unsafe(no_mangle)]

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
    syscalls_test::my_syscall(&buf);

    #[cfg(target_arch = "aarch64")]
    unsafe{core::arch::asm!("
                mov x8, 94
                mov x0, 19
                svc 0
   ")}
    
    #[cfg(target_arch = "x86_64")]
    unsafe{core::arch::asm!("
                // write
                mov rax,1 
                // stdout
                mov rbx,0
                syscall
   ")}
}

#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
        loop{}
}

#[unsafe(no_mangle)]
fn abort() -> ! {
    let mut buf: [u8; 64] = [0u8; 64];
    buf[0] = 'a' as u8;
    buf[1] = 'b' as u8;
    buf[2] = 'o' as u8;
    buf[3] = 'r' as u8;
    buf[4] = 't' as u8;
    syscalls_test::my_syscall(&buf);
    loop{}
}

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
