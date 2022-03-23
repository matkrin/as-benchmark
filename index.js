const fs = require("fs");
const loader = require("@assemblyscript/loader");
const { resourceLimits } = require("worker_threads");
const imports = { /* imports go here */ };


const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + "/build/optimized.wasm"), imports);

function wasmLeastSquares(array, xres, yres) {
  const { __newArray, __getFloat64Array, Uint16Array_ID, leastSquares } = wasmModule.exports;
  const typedArray = __newArray(Uint16Array_ID, array);
  const arrPtr = leastSquares(typedArray, xres, yres)
  const result = __getFloat64Array(arrPtr)
  return result;
}

async function wasmLeastSquaresAsync(array, xres, yres) {
  const wasmModule = await loader.instantiate(fs.promises.readFile(__dirname + "/build/optimized.wasm"));
  const { __newArray, __getFloat64Array, Uint16Array_ID, leastSquares } = wasmModule.exports;
  const typedArray = __newArray(Uint16Array_ID, array);
  const arrPtr = leastSquares(typedArray, xres, yres)
  const result = __getFloat64Array(arrPtr)
  return result;
}

module.exports = {wasmLeastSquares, wasmLeastSquaresAsync};
