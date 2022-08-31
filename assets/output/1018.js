var e = Symbol('wrapper'),
  t = Symbol('impl'),
  o = Symbol('SameObject caches'),
  p = Symbol.for('[webidl2js]  constructor registry');

function n(t) {
  return t ? t[e] : null;
}

function y(e) {
  return e ? e[t] : null;
}

var i = Symbol('internal'),
  l = Object.getPrototypeOf(Object.getPrototypeOf([][Symbol.iterator]()));
var s = Object.getOwnPropertyDescriptor(ArrayBuffer.prototype, 'byteLength').get;
var u = Symbol('supports property index'),
  c = Symbol('supported property indices'),
  b = Symbol('supports property name'),
  S = Symbol('supported property names'),
  f = Symbol('indexed property get'),
  x = Symbol('indexed property set new'),
  O = Symbol('indexed property set existing'),
  w = Symbol('named property get'),
  j = Symbol('named property set new'),
  P = Symbol('named property set existing'),
  I = Symbol('named property delete');
module.exports = {
  isObject: function (e) {
    return 'object' == typeof e ? null !== e : 'function' == typeof e;
  },
  hasOwn: function (e, t) {
    return Object.prototype.hasOwnProperty.call(e, t);
  },
  wrapperSymbol: e,
  implSymbol: t,
  getSameObject: function (e, t, p) {
    if (!e[o]) e[o] = Object.create(null);
    if (t in e[o]) return e[o][t];
    else {
      e[o][t] = p();
      return e[o][t];
    }
  },
  ctorRegistrySymbol: p,
  wrapperForImpl: n,
  implForWrapper: y,
  tryWrapperForImpl: function (e) {
    var t = n(e);
    return t || e;
  },
  tryImplForWrapper: function (e) {
    var t = y(e);
    return t || e;
  },
  iterInternalSymbol: i,
  IteratorPrototype: l,
  isArrayBuffer: function (e) {
    try {
      s.call(e);
      return true;
    } catch (e) {
      return false;
    }
  },
  isArrayIndexPropName: function (e) {
    if ('string' != typeof e) return false;
    var t = e >>> 0;
    return t !== 2 ** 32 - 1 && e === '' + t;
  },
  supportsPropertyIndex: u,
  supportedPropertyIndices: c,
  supportsPropertyName: b,
  supportedPropertyNames: S,
  indexedGet: f,
  indexedSetNew: x,
  indexedSetExisting: O,
  namedGet: w,
  namedSetNew: j,
  namedSetExisting: P,
  namedDelete: I,
};
