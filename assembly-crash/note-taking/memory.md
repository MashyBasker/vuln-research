# Memory

We can't store most of our data in registers, because there is so less of them. For this, we need memory and we also require decently fast access to it.

*Recall*

![multi-core-arch](../../assets/computer_arch/2023-07-11-10-56-26.png)

This is what the CPU looks like.

The memory stores all the data required during the running of a process (Stack, heap, etc.)

Memory is addressed linearyly (like an array) from `0x1000` to `0x7fffffffffff`. Each memory address references a single byte. Which means 127 terabytes of addressable RAM.

We know we do not have so much RAM in our computers. Most modern computers have 8GB, 16GB or 32GB RAMs. 

*So how do we have so much addressable space?*

We don't. It's all virtual memory (we'll learn more on it during during kernel security)

![memory-layout](../../assets/memory/2023-07-11-20-12-49.png)

### Stack

When a process starts, a space in memory is created known as the stack at some random address. 

For storing some temporary value like from a register or intermediate, we can push it onto the stack and later pop it. 

```nasm
mov rax, 0xc001ca75
push rax
push 0xb0bacafe
push rax
```
On most modern systems, data is stored backwards. Because of historical reasons.

Let's say we want to store `0xc001ca75` in some address.

```nasm
mov eax, 0xc001ca75 # set as | c0 | 01 | ca | 75 |
mov rcx, 0x100000
mov [rcx], eax # stored as | 75 | ca | 01 | c0 |
mov bh, [rcx] # reads the value at rcx i.e 75
```

The first company that used memory endianess is Intel for 8008, so that arithmetic operations were easier (we start adding from the right which is the least endianess)

*Bytes get flipped. Not the bits*

### Adress calculation

Start with some offset and keep incrementing. Let's say we are pushing `dword` to stack.

```nasm
mov rax, 0 # offset
mov rbx, [rsp+rax*8] # storing the value of rbx at address 0
inc rax # incrementing rax by 1
mov rcx, [rsp+rax*8] # storing the value of rbx at address 8
```

The `rax` is multiplied by 8 because the size of a `dword` is 8 and hence it will take up that much space and so the next `dword` should placed after 8 spaces. Math checks out. 👍

It can also be done using the [`lea`](http://www.nacad.ufrj.br/online/intel/vtune/users_guide/mergedProjects/analyzer_ec/mergedProjects/reference_olh/mergedProjects/instructions/instruct32_hh/vc150.htm) register.

### RIP-Relative Addressing

`rip` stores the address of the next instruction

```nasm
lea rax, [rip]
lea rax, [rip+8] # address of the current instruction + 8 bytes
```

We can even write at that address

```nasm
mov [rip], rax
```
Probable potential for program corruption 🤌 More about this in the shellocoding module

The stack isn't the only one. There are other regions mapped in memory. Functions like `mmap` and `malloc` can used to map them as well.

# References

- [Stack Wikipedia](https://en.wikipedia.org/wiki/Stack-based_memory_allocation)
- [Endianness Wikipedia](https://en.wikipedia.org/wiki/Endianness)








