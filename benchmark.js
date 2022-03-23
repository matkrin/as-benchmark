const Benchmark = require("benchmark");
const { leastSquares } = require("./least-squares");
const leastSquaresMlMatrix = require("./least-squares-ml-matrix")
const { wasmLeastSquares, wasmLeastSquaresAsync } = require(".");
const Mul = require("./mulfile_sync");

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
    .add("JavaScript ml-matrix\t", function() {
      leastSquaresMlMatrix(array, xres, yres);
    })
    .add("JavaScript\t\t", function () {
      leastSquares(array, xres, yres);
    })
    .add("AssemblyScript\t\t", function () {
      wasmLeastSquares(array, xres, yres);
    })
    .add("AssemblyScript Async\t", {
      defer: true,
      fn: async function(deferred) {
      await wasmLeastSquaresAsync(array, xres, yres);
      deferred.resolve();
    }})
    runSuite(test);
}

LeastSquaresTest();
