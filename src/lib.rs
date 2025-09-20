#![no_std]


pub fn my_syscall(buf: &[u8; 64]) {
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


