import { Matrix, solve } from "ml-matrix";
import { createCoefficientMatrix } from "./least-squares.js";

function leastSquaresMlMatrix(array, xres, yres) {
  const matrix = Matrix.columnVector(array);
  const coeffMatrix = new Matrix(createCoefficientMatrix(xres, yres));

  const leastSquares = solve(coeffMatrix, matrix);
  return new Float64Array(leastSquares.to1DArray());
}

export default leastSquaresMlMatrix;
