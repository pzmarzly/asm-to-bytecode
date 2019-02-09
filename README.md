# ASM to bytecode

Compiles ASM, runs it with `strace`, prints bytecode (disassembler view). Supports AMD64 CPUs only but both AMD64 and i386 ASM.

See [`output/call64.txt`](output/call64.txt) for an example.

This was done to ensure that `push rpb, callq, pop rbp` has same length as `set eax, syscall`.

## Usage

Put assembly files in `input`, then run e.g.

```bash
bin/bytecode64 call64
bin/bytecode64 exit64
bin/bytecode32 exit32
```

## Tip: to get bytecode of Rust projects

```bash
rustup target add x86_64-unknown-linux-musl
cargo new proj
cd proj
cargo build --release --target=x86_64-unknown-linux-musl
objdump -d target/x86_64-unknown-linux-musl/release/proj > proj.txt
```
