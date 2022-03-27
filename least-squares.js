function leastSquares(flatMatrix, xres, yres) {
  const matrix = createMatrix(flatMatrix, xres * yres, 1);
  const coeffMatrix = createCoefficientMatrix(xres, yres);
  const qrRes = qrDecomposition(coeffMatrix);
  const qr = qrRes.qr;
  const rdiag = qrRes.rdiag;

  let count = 1; // matrix[0].length;
  let X = cloneMatrix(matrix);
  let n = 3; // qr[0].length;
  let m = xres * yres; // qr.length;
  let i, j, k, s;

  for (k = 0; k < n; k++) {
    for (j = 0; j < count; j++) {
      s = 0;
      for (i = k; i < m; i++) {
        s += qr[i][k] * X[i][j];
      }
      s = -s / qr[k][k];
      for (i = k; i < m; i++) {
        X[i][j] = X[i][j] + s * qr[i][k];
      }
    }
  }
  for (k = n - 1; k >= 0; k--) {
    for (j = 0; j < count; j++) {
      X[k][j] = X[k][j] / rdiag[k];
    }
    for (i = 0; i < k; i++) {
      for (j = 0; j < count; j++) {
        X[i][j] = X[i][j] - X[k][j] * qr[i][k];
      }
    }
  }

  const result = subMatrix(X, 0, n - 1, 0, count - 1);
  return matrixToFloat64Array(result);
}

function qrDecomposition(matrix) {
  const qr = cloneMatrix(matrix);
  let m = matrix.length;
  let n = 3;
  let rdiag = new Float64Array(n);
  let i, j, k, s;

  for (k = 0; k < n; k++) {
    let nrm = 0;
    for (i = k; i < m; i++) {
      nrm = hypotenuse(nrm, qr[i][k]);
    }
    if (nrm !== 0) {
      if (qr[k][k] < 0) {
        nrm = -nrm;
      }
      for (i = k; i < m; i++) {
        qr[i][k] = qr[i][k] / nrm;
      }
      qr[k][k] = qr[k][k] + 1;
      for (j = k + 1; j < n; j++) {
        s = 0;
        for (i = k; i < m; i++) {
          s += qr[i][k] * qr[i][j];
        }
        s = -s / qr[k][k];
        for (i = k; i < m; i++) {
          qr[i][j] = qr[i][j] + s * qr[i][k];
        }
      }
    }
    rdiag[k] = -nrm;
  }
  return { qr: qr, rdiag: rdiag };
}

function declareMatrix(rows, columns) {
  const matrix = new Array(rows);
  for (let row = 0; row < rows; row++) {
    matrix[row] = new Array(columns);
  }
  return matrix;
}

function createMatrix(flatMatrix, rows, columns) {
  const matrix = declareMatrix(rows, columns);
  let n = 0;
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < columns; col++) {
      matrix[row][col] = flatMatrix[n];
      n++;
    }
  }
  return matrix;
}

function cloneMatrix(matrix) {
  const rows = matrix.length;
  const cols = matrix[0].length;
  const clone = declareMatrix(rows, cols);
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < cols; col++) {
      clone[row][col] = matrix[row][col];
    }
  }
  return clone;
}

function matrixToFloat64Array(matrix) {
  const rows = matrix.length;
  const cols = matrix[0].length;
  let matrixFlat = new Float64Array(rows * cols);
  let i = 0;
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < cols; col++) {
      matrixFlat[i] = matrix[row][col];
      i++;
    }
  }
  return matrixFlat;
}

function matrixToInt32Array(matrix) {
  const rows = matrix.length;
  const cols = matrix[0].length;
  let matrixFlat = new Int32Array(rows * cols);
  let i = 0;
  for (let row = 0; row < rows; row++) {
    for (let col = 0; col < cols; col++) {
      matrixFlat[i] = matrix[row][col];
      i++;
    }
  }
  return matrixFlat;
}

function hypotenuse(a, b) {
  let r = 0;
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

function subMatrix(matrix, startRow, endRow, startColumn, endColumn) {
  let newMatrix = declareMatrix(
    endRow - startRow + 1,
    endColumn - startColumn + 1
  );
  for (let i = startRow; i <= endRow; i++) {
    for (let j = startColumn; j <= endColumn; j++) {
      newMatrix[i - startRow][j - startColumn] = matrix[i][j];
    }
  }
  return newMatrix;
}

function createCoefficientMatrix(rows, columns) {
  const len = rows * columns;
  const coeffMatrix = declareMatrix(len, 3);

  let n = 0;
  let m = 0;
  for (let row = 0; row < len; row++) {
    coeffMatrix[row][0] = 1; // always 1
    coeffMatrix[row][1] = n; // 512x(0 - 512) -> 512x(0 - 512) -> ...
    coeffMatrix[row][2] = m; // 512x0 -> 512x1 -> 512x2 -> ...
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

export { leastSquares, createCoefficientMatrix };
