# as-benchmark

This is a benchmark for the calculation of a fitted plane via least squares regression for a 512 &times; 512 pixel STM image.
Three implementation are compared:

- Javascript with usage of [ml-matrix](https://github.com/mljs/matrix)
- Webassembly written with Assemblyscript; basically a minimal working example with the algorithm from ml-matrix
- Javascript with a 1:1 implementation as the Assemblyscript

 
## Run the benchmark

```bash
$ npm install
$ npm run asbuild
$ npm run benchmark
```
