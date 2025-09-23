#![no_std]


pub fn write(buf: &[u8; 64]) {
    #[cfg(target_arch = "aarch64")]
    unsafe {
        core::arch::asm!("
            
            mov x8, 64 // aarch
            mov x0, 1
            mov x1, {buf}
            mov x2, {count}
            svc 0",
            buf = in(reg) buf,
            count = in(reg) buf.len());
    }
    
    #[cfg(target_arch = "x86_64")]
    unsafe {
        core::arch::asm!("
            
            mov rax, 1 // x86
            mov rbx, {buf}
            mov rcx, {count}
            syscall",
            buf = in(reg) buf,
            count = in(reg) buf.len());
    }
}

pub fn exit() -> ! {
    // ARM
    #[cfg(target_arch = "aarch64")]
    unsafe{core::arch::asm!("
                // exit syscall
                mov x8, 94
                //exit code 0
                mov x0, 0
                svc 0
   ", options(noreturn))}
    // X86
    #[cfg(target_arch = "x86_64")]
    unsafe{core::arch::asm!("
                // exit
                mov rax,60
                // exit code 0
                mov rbx,0
                syscall
   ", options(noreturn))}
}
