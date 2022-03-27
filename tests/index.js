import assert from "assert";

import { wasmLeastSquares } from "../build/release.js";
import { leastSquares } from "../least-squares.js";
import leastSquaresMlMatrix from "../least-squares-ml-matrix.js";
import Mul from "../mulfile_sync.js";

const filename = "./tests/stm-aarhus-mul-a.mul";
const mul = new Mul(filename);
const array = new Uint16Array(mul.data[0].imgData.flat());
const xres = mul.data[0].xres;
const yres = mul.data[0].yres;

assert.strictEqual(
  leastSquares(array, xres, xres, yres)[0],
  leastSquaresMlMatrix(array, xres, yres)[0]
);
assert.strictEqual(
  leastSquares(array, xres, yres)[0],
  wasmLeastSquares(array, xres, yres)[0]
);
assert.strictEqual(
  leastSquaresMlMatrix(array, xres, yres)[0],
  wasmLeastSquares(array, xres, yres)[0]
);
assert.strictEqual(
  leastSquaresMlMatrix(array, xres, yres)[0],
  20227.999333141444
);
assert.strictEqual(leastSquares(array, xres, yres)[0], 20227.999333141444);
assert.strictEqual(wasmLeastSquares(array, xres, yres)[0], 20227.999333141444);

assert.strictEqual(leastSquaresMlMatrix(array, xres, yres).length, 3);
assert.strictEqual(leastSquares(array, xres, yres).length, 3);
assert.strictEqual(wasmLeastSquares(array, xres, yres).length, 3);

console.log("ok");
