export const Int32Array_ID = idof<Int32Array>();
export const Float64Array_ID = idof<Float64Array>();
export const Uint16Array_ID = idof<Uint16Array>();

type Matrix = Array<Float64Array>

class QrResult {
  qr: Matrix;
  rdiag: Float64Array;
}

export function leastSquares(flatMatrix: Uint16Array, xres: i32, yres: i32): Float64Array {
  const matrix = createMatrix(flatMatrix, xres * yres, 1);
  const coeffMatrix = createCoefficientMatrix(512, 512);
  const qrRes: QrResult = qrDecomposition(coeffMatrix);
  const qr: Matrix = qrRes.qr;
  const rdiag: Float64Array = qrRes.rdiag;

  let count = 1;  // unchecked(matrix[0].length);
  let X = cloneMatrix(matrix);
  let n = 3;  // unchecked(qr[0].length);
  let m = xres * yres;  // qr.length;
  let i: i32, j: i32, k: i32, s: f64;

  for (k = 0; k < n; k++) {
    for (j = 0; j < count; j++) {
      s = 0;
      for (i = k; i < m; i++) {
        s += unchecked(qr[i][k]) * unchecked(X[i][j]);
      }
      s = -s / qr[k][k];
      for (i = k; i < m; i++) {
        unchecked(X[i][j] = unchecked(X[i][j]) + s * unchecked(qr[i][k]));
      }
    }
  }
  for (k = n - 1; k >= 0; k--) {
    for (j = 0; j < count; j++) {
      unchecked(X[k][j] = unchecked(X[k][j]) / unchecked(rdiag[k]));
    }
    for (i = 0; i < k; i++) {
      for (j = 0; j < count; j++) {
        unchecked(X[i][j] = unchecked(X[i][j]) - unchecked(X[k][j]) * unchecked(qr[i][k]));
      }
    }
  }

  const result = subMatrix(X, 0, n - 1, 0, count - 1);
  return matrixToFloat64Array(result);
}

function qrDecomposition(matrix: Matrix): QrResult {
  let qr = cloneMatrix(matrix);
  let m = 262144; //rows
  let n = 3; //columns
  let rdiag = new Float64Array(n);
  let i: i32;
  let j: i32;
  let k: i32;
  let s: f64;

  for (k = 0; k < n; k++) {
    let nrm: f64 = 0;

    for (i = k; i < m; i++) {
      nrm = hypotenuse(nrm, unchecked(qr[i][k]));
    }

    if (nrm !== 0) {

      if (unchecked(qr[k][k]) < 0) {
        nrm = -nrm;
      }

      for (i = k; i < m; i++) {
        unchecked(qr[i][k] = unchecked(qr[i][k]) / nrm);
      }
      unchecked(qr[k][k] = unchecked(qr[k][k]) + 1);

      for (j = k + 1; j < n; j++) {
        s = 0;

        for (i = k; i < m; i++) {
          s += unchecked(qr[i][k]) * unchecked(qr[i][j]);
        }
        s = -s / unchecked(qr[k][k]);

        for (i = k; i < m; i++) {
          unchecked(qr[i][j] = unchecked(qr[i][j]) + s * unchecked(qr[i][k]));
        }
      }
    }
    unchecked(rdiag[k] = -nrm);
  }
  return { qr: qr, rdiag: rdiag }
}


function declareMatrix(rows: i32, columns: i32): Matrix {
  const matrix: Matrix = new Array(rows);
  for (let row = 0; row < rows; row++) {
    unchecked(matrix[row] = new Float64Array(columns));
  }
  return matrix;
}

function createMatrix(flatMatrix: Uint16Array, rows: i32, columns: i32): Matrix {
  const matrix = declareMatrix(rows, columns);
  let n = 0;
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < columns; col++) {
      unchecked(matrix[row][col] = unchecked(flatMatrix[n]));
      n++;
    }
  }
  return matrix;
}

function cloneMatrix(matrix: Matrix): Matrix {
  const rows = matrix.length;
  const cols = matrix[0].length;
  const clone: Matrix = declareMatrix(rows, cols)
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < cols; col++) {
      unchecked(clone[row][col] = unchecked(matrix[row][col]));
    }
  }
  return clone;
}

function matrixToFloat64Array(matrix: Matrix): Float64Array {
  const rows = matrix.length;
  const cols = matrix[0].length;
  let matrixFlat = new Float64Array(rows * cols);
  let i = 0;
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < cols; col++) {
      unchecked(matrixFlat[i] = unchecked(matrix[row][col]));
      i++;
    }
  }
  return matrixFlat;
}

function matrixToInt32Array(matrix: Matrix): Int32Array {
  const rows = matrix.length;
  const cols = matrix[0].length;
  let matrixFlat = new Int32Array(rows * cols);
  let i = 0;
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < cols; col++) {
      unchecked(matrixFlat[i] = unchecked(matrix[row][col]));
      i++;
    }
  }
  return matrixFlat;
}


function hypotenuse(a: f64, b: f64): f64 {
  let r: f64 = 0;
  if (Math.abs(a) > Math.abs(b)) {
    r = b / a;
    return Math.abs(a) * Math.sqrt(1 + r * r);
  }
  if (b !== 0) {
    r = a / b;
    return Math.abs(b) * Math.sqrt(1 + r * r);
  }
  return 0;
}


function subMatrix(matrix: Matrix, startRow: i32, endRow: i32, startColumn: i32, endColumn: i32): Matrix {
  let newMatrix = declareMatrix(
    endRow - startRow + 1,
    endColumn - startColumn + 1,
  );
  for (let i = startRow; i <= endRow; i++) {
    for (let j = startColumn; j <= endColumn; j++) {
      unchecked(newMatrix[i-startRow][j-startColumn] = unchecked(matrix[i][j]));
    }
  }
  return newMatrix;
}


function createXFitMatrix(rows: i32, columns: i32): Matrix {
  const matrix = declareMatrix(rows, columns);
  for (let i = 0; i < rows; i++) {
    for (let j = 0; j < columns; j++)
    matrix[i][j] = j
  }
  return matrix;
}

function createYFitMatrix(rows: i32, columns: i32): Matrix {
  const matrix = declareMatrix(rows, columns);
  for (let i = 0; i < rows; i++) {
    for (let j = 0; j < columns; j++)
    matrix[i][j] = i
  }
  return matrix;

}

function createCoefficientMatrix(rows: i32, columns: i32): Matrix {
  const len = rows * columns
  const coeffMatrix = declareMatrix(len, 3)

  let n = 0
  let m = 0
  for (let row = 0; row < len; row++) {
    unchecked(coeffMatrix[row][0] = 1);
    unchecked(coeffMatrix[row][1] = n);
    unchecked(coeffMatrix[row][2] = m);
    n++;
    if (n >= rows) {
        n = 0;
    }
    if ((row + 1) % rows == 0) {
        m++;
    }
  }
  return coeffMatrix;
}
