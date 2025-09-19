#![no_std]


pub fn my_syscall(buf: &[u8; 64]) {
    unsafe {
        core::arch::asm!("
            
            mov x8, 64 // replace these with x86 equivalent
            mov x0, 1
            mov x1, {buf}
            mov x2, {count}
            svc 0",
            buf = in(reg) buf,
            count = in(reg) buf.len());
    }
}


