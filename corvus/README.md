# Corvus
![](birb.jpg)
Query Junø contrarct via `flutter_rust_bridge`

```
bip32 = { version = "0.4", optional = true }
cosmrs = { version = "0.9.0", features = [ "cosmwasm"] }
tendermint-rpc = { version = "0.23.9", features= ["http"] }
serde = { version = "1.0", default-features = false, features = ["derive"] }
```
## Prerequisites

To begin, ensure that you have a working installation of the following items:
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Rust language](https://rustup.rs/)
- Appropriate [Rust targets](https://rust-lang.github.io/rustup/cross-compilation.html) for cross-compiling to your device
- For Android targets:
    - Install [cargo-ndk](https://github.com/bbqsrc/cargo-ndk#installing)
    - Install Android NDK 22, then put its path in one of the `gradle.properties`, e.g.:

```
echo "ANDROID_NDK=.." >> ~/.gradle/gradle.properties
```

- Web is not supported yet.

Then go ahead and run `flutter run`! When you're ready, refer to our documentation
[here](https://fzyzcjy.github.io/flutter_rust_bridge/index.html)
to learn how to write and use binding code.
