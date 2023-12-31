# Control Flow

The standard `if-else` statements we use in different high level programs are not available in x86 assembly. Instead, there are jump statments which makes the instruction pointer jump from instruction to another.

Furthermore, there are conditional jump statments so that we can jump to a different instruction or a program label based on some condition.

![conditional-jumps](../../assets/control-flow/2023-07-13-21-06-31.png)

The following C code:

```c
int check_leet(int authed) {
    if(authed) return 1337;
    else return 0;
}

int main() {
    check_leet(1);
    check_leet(0);
    exit();
}
```

Translates to the following x86 assembly

```nasm
# main

mov rdi, 0
call FUNC_CHECK_LEET
mov rdi, 1
call FUNC_CHECK_LEET
call EXIT

# check_leet

FUNC_CHECK_LEET:
    test rdi, rdi
    jnz LEET
    mov ax, 0
    ret
    LET:
    mov ax, 1337
    ret
 
FUNC_EXIT:
```

# References

- [Calling functions in x86 assembly](https://www.mourtada.se/calling-functions-in-x86-assembly/)
- [Control flow in x86 assembly](https://en.wikibooks.org/wiki/X86_Assembly/Control_Flow)


