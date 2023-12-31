# Writing Assembly

*Recall*

Every programming compiles to machine code/binary which is executed by the CPU/GPU(for our purpose these 2 aren't different so I'll be calling the processing unit as CPU/CU).

Humans don't understand binary easily. So we made some text to represent it and we called this text **assembly**.

```
+-------------------------------+
| 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 |
+-------------------------------+

[       "push"      ][   "rbp"  ] 
```

Assembly is atomic. 

A single binary statment translates to a single assembly statment. Unlike high-level languages like python, in which a single python statment translates to multiple binary statments that do multiple things.

Assembly is the *simplest* programming language, because CPUs need to understand it.

The CPU handles **data**. More importantly, 3 types of data:

- data given as *instructions*
- data that is close in hand, *registers*
- data that in the *storage*

Some common operations that we can perform on the data and that is also provided as assembly instructions are:

- `add`  -> adds some data
- `sub`  -> subtracts some data
- `mul`  -> multiplies some data
- `div`  -> divides some data
- `mov`  -> moves some data
- `cmp`  -> compare some data
- `test` -> performs a bitwise AND on some data and changes some flag(more on this later)


Now, different CPUs produce different binaries so every architecture have their own flavour of assembly. Some common are:

- `x86` => most popular. Used in Intel processors
- `arm` => probably second most popular. Used in recent MacBooks and your phone probably.

There more architectures like MIPS, RISC-V, etc. 

AT&T made a different syntax for x86 but its terrible so we'll be using the Intel x86 syntax.

# References

- [Assembly wikipedia](https://en.wikipedia.org/wiki/Assembly_language)
- [Intel x86 Manual](https://sites.cs.ucsb.edu/~rich/class/cs293b-cloud/papers/intel-arch-bible.pdf)

