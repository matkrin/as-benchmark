const { wasmLeastSquares, wasmLeastSquaresAsync } = require(".");
const { leastSquares } = require("./least-squares");
const leastSquaresMlMatrix = require("./least-squares-ml-matrix");
const Mul = require("./mulfile_sync");


const filename = "./tests/stm-aarhus-mul-a.mul";
const mul = new Mul(filename);
const array = new Uint16Array(mul.data[0].imgData.flat());
const xres = mul.data[0].xres;
const yres = mul.data[0].yres;

const startJSMlMatrix = performance.now()
leastSquaresMlMatrix(array, xres, yres);
console.log("JS ml-matrix Performance: ", performance.now() - startJSMlMatrix)

const startJS = performance.now()
leastSquares(array, xres, yres);
console.log("JS Performance: ", performance.now() - startJS)

const startAS = performance.now()
wasmLeastSquares(array, xres, yres);
console.log("AS Performance: ", performance.now() - startAS)

async function printWasmResult () {
  const startASAsync = performance.now();
  res = await wasmLeastSquaresAsync(array, xres, yres);
  console.log("AS Async Performance: ", performance.now() - startASAsync)
}
printWasmResult();
