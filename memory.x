ENTRY(0x9280)
SECTIONS
{
  . = 0x9280;
  .text :
  {
    KEEP(*(.text)); 
  }  
}

PROVIDE(_stack_start=0x5000000);
