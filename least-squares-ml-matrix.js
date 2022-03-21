const { Matrix, solve } = require('ml-matrix');
const { createCoefficientMatrix } = require('./least-squares')

function leastSquaresMlMatrix(array) {
  const matrix = Matrix.columnVector(array)

  // const arr = [...new Array(512)].map((x,i) => x = i)
  // const xArr = new Matrix([arr]).repeat({ rows: 512 }) //xres
  // const yArr = xArr.transpose()

  // const newArr = Matrix.ones(512 * 512, 1);
  // newArr.addColumn(xArr.to1DArray())
  // newArr.addColumn(yArr.to1DArray())
  const coeffMatrix = new Matrix(createCoefficientMatrix(512, 512))

  leastSquares = solve(coeffMatrix, matrix)
  return new Float64Array(leastSquares.to1DArray())
}

module.exports = leastSquaresMlMatrix;
