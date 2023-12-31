# Registers

CPU processes data. But it also needs to have somewhere to store it close to itself for rapid access to it. Something like a short-term memory.

For this, we have registers, and they are extremely fast.

Registers are present inside the CPU, so we don't have many of them. Different architectures provide various general purpose registers.

`amd64` provides the most amount of general purpose registers. Registers store some important data. For example, there is register for storing the address of the next instruction. 

We have `eip` (x86), `rip` (amd64), `r15` (arm) for this purpose.

Registers can be accessed completely by their names. Eg. `rax`. Or they can be partially accessed by using different versions of their names:

![partial-access](../../assets/registers/2023-07-11-12-37-05.png)

Some common partial accesses in `amd64` are:

![amd64-partial-access](../../assets/registers/2023-07-11-12-38-50.png)

**Setting the registers**

To load some data into a register, we use the `mov` command

```nasm
mov rax, 0x539
mov rbx, 1337
```

This type of data directly being passed in an assembly instruction is known as an immediate value.

*Note*: The `mov` command does not actually move the data. It gets copied (scientists are bad at naming)

**The caution with 32-bit and 64-bit partial accesses**

[Read this StackOverflow post](https://stackoverflow.com/questions/35873182/assembly-partial-registers)

This is a list of all the arithmetic instructions that can be done in x86 assembly

[x86 Arithmetic Wiki](https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic)

There are some registers we should not fiddle with. Such as the `rip` (ip = instruction pointer) register is for the next assembly instruction.

Another one is the `rsp` (sp = stack pointer) for storing temporal data.

*Some more*

Some registers used by the Operating System itself (useful for kernel security ;3 )

- [Registers in x86 assembly](https://www.cs.uaf.edu/2017/fall/cs301/lecture/09_11_registers.html)
- [x86 Architecture WikiBook](https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture)
- [Other x86 Assembly Instructions](https://en.wikibooks.org/wiki/X86_Assembly/Other_Instructions)





