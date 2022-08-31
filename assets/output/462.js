var t = {};
t['[object Float32Array]'] = t['[object Float64Array]'] = t['[object Int8Array]'] = t['[object Int16Array]'] = t['[object Int32Array]'] = t['[object Uint8Array]'] = t[
  '[object Uint8ClampedArray]'
] = t['[object Uint16Array]'] = t['[object Uint32Array]'] = true;
t['[object Arguments]'] = t['[object Array]'] = t['[object ArrayBuffer]'] = t['[object Boolean]'] = t['[object DataView]'] = t['[object Date]'] = t['[object Error]'] = t[
  '[object Function]'
] = t['[object Map]'] = t['[object Number]'] = t['[object Object]'] = t['[object RegExp]'] = t['[object Set]'] = t['[object String]'] = t['[object WeakMap]'] = false;

module.exports = function (o) {
  return require('./405')(o) && require('./463')(o.length) && !!t[require('./420')(o)];
};
