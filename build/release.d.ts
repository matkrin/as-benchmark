/** assembly/index/Int32Array_ID */
export declare const Int32Array_ID: {
  /** @type `u32` */
  get value(): number
};
/** assembly/index/Float64Array_ID */
export declare const Float64Array_ID: {
  /** @type `u32` */
  get value(): number
};
/** assembly/index/Uint16Array_ID */
export declare const Uint16Array_ID: {
  /** @type `u32` */
  get value(): number
};
/**
 * assembly/index/wasmLeastSquares
 * @param flatMatrix `~lib/typedarray/Uint16Array`
 * @param xres `i32`
 * @param yres `i32`
 * @returns `~lib/typedarray/Float64Array`
 */
export declare function wasmLeastSquares(flatMatrix: Uint16Array, xres: number, yres: number): Float64Array;
