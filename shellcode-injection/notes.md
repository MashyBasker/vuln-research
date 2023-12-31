# Example program

The program `vulnerable.c` shows a common problem of the Von Neumann architecture which treats data
and value as same. This way we can pass the function pointer in place of the data and it will be
compiled. Albeit, the program will crash due to `illegal hardware instruction`.

```
❯ ./vulnerable
okabe
Hello UH��H�`!
[1]    10403 segmentation fault (core dumped)  ./vulnerable
❯ ./vulnerable
okabe
Hello okabe!
Farewell

```

The shellcode we created in the `shellcode-raw` file can be passed into the `vulnerable.c` program
and now we can have a shell through an exploit.

## Running Shellcode

```
$ gcc -nostdlib -static shellcode.s -o shellcode-elf
$ ./shellcode-elf
```

This ELF file is helpful for testing out the shellcode.

To copy the raw shellcode

`objcopy --dumpsection .text=shellcode-raw shellcode-elf`
