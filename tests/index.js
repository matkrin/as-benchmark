const assert = require("assert");

const { wasmLeastSquares, wasmLeastSquaresAsync } = require("..");
const { leastSquares } = require("../least-squares");
const leastSquaresMlMatrix = require("../least-squares-ml-matrix")
const Mul = require("../mulfile_sync");

const filename = "./tests/stm-aarhus-mul-a.mul";
const mul = new Mul(filename);
const array = new Uint16Array(mul.data[0].imgData.flat());
const xres = mul.data[0].xres;
const yres = mul.data[0].yres;

assert.strictEqual(leastSquares(array, xres, xres, yres)[0], leastSquaresMlMatrix(array, xres, yres)[0]);
assert.strictEqual(leastSquares(array, xres, yres)[0], wasmLeastSquares(array)[0]);
assert.strictEqual(leastSquaresMlMatrix(array, xres, yres)[0], wasmLeastSquares(array)[0]);

assert.strictEqual(leastSquaresMlMatrix(array, xres, yres)[0], 20227.999333141444);
assert.strictEqual(leastSquares(array, xres, yres)[0], 20227.999333141444);
assert.strictEqual(wasmLeastSquares(array)[0], 20227.999333141444);

assert.strictEqual(leastSquaresMlMatrix(array, xres, yres).length, 3)
assert.strictEqual(leastSquares(array, xres, yres).length, 3)
assert.strictEqual(wasmLeastSquares(array).length, 3)


console.log("ok");
