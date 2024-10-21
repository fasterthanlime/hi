run-all:
    ./target/aarch64-apple-darwin/debug/hi
    ./target/x86_64-apple-darwin/debug/hi
    docker run --rm -it --platform linux/amd64 -v $(pwd)/target:/target ubuntu:20.04 target/x86_64-unknown-linux-gnu/debug/hi
    docker run --rm -it --platform linux/arm64 -v $(pwd)/target:/target ubuntu:20.04 target/aarch64-unknown-linux-gnu/debug/hi
    wine ./target/x86_64-pc-windows-msvc/debug/hi.exe
    wine ./target/i686-pc-windows-msvc/debug/hi.exe
