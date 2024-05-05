## Firefox memory leak

This repo is to repro a memory leak that occurs with emscripten in Firefox. Start the server by running `bash run.sh`

1. Open [http://localhost:3000](http://localhost:3000) in firefox.
2. This will run fine *until* the console is opened at which point the following error occurs

```
caught RuntimeError: Aborted(out of memory)
    x http://localhost:3000/index.js:1
    ae http://localhost:3000/index.js:1
    promise callback*344/o</ae< http://localhost:3000/index.js:1
    ae http://localhost:3000/index.js:1
    o http://localhost:3000/index.js:1
    <anonymous> http://localhost:3000/:13
    <anonymous> http://localhost:3000/:13
localhost:3000:19:17
    <anonymous> http://localhost:3000/:19
```
