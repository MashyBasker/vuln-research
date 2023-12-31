# Computer Architecture

- Everything compiles to machine code and is executed by the CPU(or GPU)
- This computing and execution is performed by digital logic gates at the lowest level
- At a much higher level we have the memory, disk, CPU, etc. interlinked together

![comp-arch](../../assets/computer_arch/2023-07-11-10-49-40.png)

Disk access is slower than memory access. Hence we have different types of memory in the CPU for fast access like registers, cache etc.

When we request for some data from the memory, it goes into a place called the cache and the data is read from the cache. It is much master faster but also much smaller. 

Moreover, cache and registers are more expensive hence we cannot have lots of them.

These days, CPU have multiple cores and so the architecture is a bit different.

![multi-core-arch](../../assets/computer_arch/2023-07-11-10-56-26.png)

These type of architecture is called the Von-Neumann architecture, but was actually created by 3 people.

![3-johns](../../assets/computer_arch/2023-07-11-10-58-52.png)

The main idea behind this architecture is that the CPU does not differentiate between data and code(which brings in a lot vulnerabilities, but fortunately modern OSs have fixed this issue).

# References

- [Von Neumann Architecture Draft Paper on the EDVAC](http://abelgo.cn/cs101/papers/Neumann.pdf)
- [Computer Architecture Wikipedia](https://en.wikipedia.org/wiki/Computer_architecture)
