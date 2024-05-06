FROM emscripten/emsdk:3.1.57
COPY ./hello_world.c ./hello_world.c
RUN emcc ./hello_world.c -s SINGLE_FILE -s WASM=1 -s MODULARIZE=1 -s EXPORT_NAME=SWIPL
