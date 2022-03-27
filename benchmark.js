import Benchmark from "benchmark";
import { leastSquares } from "./least-squares.js";
import leastSquaresMlMatrix from "./least-squares-ml-matrix.js";
import { wasmLeastSquares } from "./build/release.js";
import Mul from "./mulfile_sync.js";

function runSuite(suite) {
  console.log("Running", suite.name);

  suite
    .on("cycle", (event) => {
      console.log(String(event.target));
    })
    .on("complete", function () {
      console.log("\nFastest is " + this.filter("fastest").map("name"));
    })
    .run();
}

function LeastSquaresTest() {
  const filename = "./tests/stm-aarhus-mul-a.mul";
  const mul = new Mul(filename);
  const array = new Uint16Array(mul.data[0].imgData.flat());
  const xres = mul.data[0].xres;
  const yres = mul.data[0].yres;

  const test = Benchmark.Suite("Least Square Test\n");

  test
    .add("JavaScript ml-matrix\t", function () {
      leastSquaresMlMatrix(array, xres, yres);
    })
    .add("JavaScript\t\t", function () {
      leastSquares(array, xres, yres);
    })
    .add("AssemblyScript\t\t", function () {
      wasmLeastSquares(array, xres, yres);
    });
  runSuite(test);
}

LeastSquaresTest();
