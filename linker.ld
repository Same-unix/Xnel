ENTRY(start)

SECTIONS
{
    . = 1M;

    .boot :
    {
        KEEP(*(variableName))
    }

    .text : 
    {
        *(.text)
    }
}