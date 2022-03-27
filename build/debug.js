async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    Int32Array_ID: {
      // assembly/index/Int32Array_ID: u32
      valueOf() { return this.value; },
      get value() {
        return exports.Int32Array_ID.value >>> 0;
      }
    },
    Float64Array_ID: {
      // assembly/index/Float64Array_ID: u32
      valueOf() { return this.value; },
      get value() {
        return exports.Float64Array_ID.value >>> 0;
      }
    },
    Uint16Array_ID: {
      // assembly/index/Uint16Array_ID: u32
      valueOf() { return this.value; },
      get value() {
        return exports.Uint16Array_ID.value >>> 0;
      }
    },
    wasmLeastSquares(flatMatrix, xres, yres) {
      // assembly/index/wasmLeastSquares(~lib/typedarray/Uint16Array, i32, i32) => ~lib/typedarray/Float64Array
      flatMatrix = __lowerTypedArray(Uint16Array, 5, 1, flatMatrix) || __notnull();
      return __liftTypedArray(Float64Array, exports.wasmLeastSquares(flatMatrix, xres, yres) >>> 0);
    },
  }, exports);
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    const memoryU32 = new Uint32Array(memory.buffer);
    return new constructor(
      memory.buffer,
      memoryU32[pointer + 4 >>> 2],
      memoryU32[pointer + 8 >>> 2] / constructor.BYTES_PER_ELEMENT
    ).slice();
  }
  function __lowerTypedArray(constructor, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 0)) >>> 0,
      header = exports.__new(12, id) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[header + 0 >>> 2] = buffer;
    memoryU32[header + 4 >>> 2] = buffer;
    memoryU32[header + 8 >>> 2] = length << align;
    new constructor(memory.buffer, buffer, length).set(values);
    exports.__unpin(buffer);
    return header;
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  return adaptedExports;
}
export const {
  Int32Array_ID,
  Float64Array_ID,
  Uint16Array_ID,
  wasmLeastSquares
} = await (async url => instantiate(
  await (
    typeof globalThis.fetch === "function"
      ? WebAssembly.compileStreaming(globalThis.fetch(url))
      : WebAssembly.compile(await (await import("node:fs/promises")).readFile(url))
  ), {
  }
))(new URL("debug.wasm", import.meta.url));
