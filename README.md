# Rust on Web

Rust on Web (RoW) is a proof of concept of using Rust and WebAssembly
with wasm-bindgen and webpack. This is not the first proof of concept,
but it should build out of the box.

RoW was created primarily as a learning exercise for me, and to experiment
with WebAssembly and Rust.

It is very much based on [this blog post](https://hacks.mozilla.org/2018/04/javascript-to-rust-and-back-again-a-wasm-bindgen-tale/) by Alex Crichton.
I mainly filled in the gaps where there were broken links to a GitHub repository and structured the code in a way that Rust code is separated
from HTML and JavaScript, and in a way that the entire project can be built
with a single command. Again, Alex really did most of the work.

## Project structure

The project is structured into a "backend" and a "frontend". The backend
is a Rust project and the frontend is a project created with NPM.

## Prerequisites

RoW requires a nightly Rust compiler and the wasm32-unknown-unknown toolchain. It also requires NPM.

Below are the commands that you can use on MacOS. I haven't tried building this project on other operating systems, though it should work out of the box on Unix based systems provided that you install these prerequisites.

```
rustup target add wasm32-unknown-unknown --toolchain nightly
brew install node
```

## Building

Simply call `./build.sh debug` or `./build.sh release`.

## Running

You can run the project by starting a simple HTTP server in the resulting
`build/` folder. You can do this with Python 3: `python3 -m http.server`.
If you then go to `localhost:8000` in your browser, you should see an alert.
