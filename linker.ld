
SECTIONS
{
  . = 10000;
  INPUT(boot.o, kernel.c)
  .text : { *(.text) }
  . = 0x8000000;
  .data : { *(.data) }
  .bss : { *(.bss) }
}
