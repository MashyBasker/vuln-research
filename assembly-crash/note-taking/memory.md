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
