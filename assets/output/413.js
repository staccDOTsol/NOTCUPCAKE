var t = /^\[object .+?Constructor\]$/,
  o = Function.prototype,
  n = Object.prototype,
  c = o.toString,
  p = n.hasOwnProperty,
  u = RegExp(
    '^' +
      c
        .call(p)
        .replace(/[\\^$.*+?()[\]{}|]/g, '\\$&')
        .replace(/hasOwnProperty|(function).*?(?=\\\()| for .+?(?=\\\])/g, '$1.*?') +
      '$'
  );

module.exports = function (o) {
  return !(!require('./414')(o) || require('./415')(o)) && (require('./419')(o) ? u : t).test(require('./409')(o));
};
