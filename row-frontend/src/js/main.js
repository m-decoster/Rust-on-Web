const backend = import("../wasm/row_backend");
backend.then(m => m.greet("World!"));
