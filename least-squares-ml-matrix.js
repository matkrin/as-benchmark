const { Matrix, solve } = require('ml-matrix');
const { createCoefficientMatrix } = require('./least-squares')

function leastSquaresMlMatrix(array, xres, yres) {
  const matrix = Matrix.columnVector(array)
  const coeffMatrix = new Matrix(createCoefficientMatrix(xres, yres))

  leastSquares = solve(coeffMatrix, matrix)
  return new Float64Array(leastSquares.to1DArray())
}

module.exports = leastSquaresMlMatrix;
