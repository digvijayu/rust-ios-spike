## 1. Create cargo library
```
cargo new hworld --lib
```

## 2. Created ios app

## 3.
```
rustup target add aarch64-apple-ios x86_64-apple-ios

```

## 4
```
cargo install cargo-lipo
cargo install cbindgen
```

## 5 Generate c headers
```
cbindgen src/lib.rs -l c > hworld.h
```

## 6. add lib details
```
[lib]
name = "rust"
crate-type = ["staticlib", "cdylib"]
```

and build 

```
cargo lipo --release
```

If all goes well you should have a `librust.a` file located in `target/universal/release/`.
