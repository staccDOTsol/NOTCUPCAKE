module.exports = function (n, t) {
  t = t || new FormData();
  var f = [];

  function o(n) {
    return null === n
      ? ''
      : require('./558').isDate(n)
      ? n.toISOString()
      : require('./558').isArrayBuffer(n) || require('./558').isTypedArray(n)
      ? 'function' == typeof Blob
        ? new Blob([n])
        : Buffer.from(n)
      : n;
  }

  (function n(s, u) {
    if (require('./558').isPlainObject(s) || require('./558').isArray(s)) {
      if (-1 !== f.indexOf(s)) throw Error('Circular reference detected in ' + u);
      f.push(s);

      require('./558').forEach(s, function (f, s) {
        if (!require('./558').isUndefined(f)) {
          var c,
            p = u ? u + '.' + s : s;
          if (f && !u && 'object' == typeof f)
            if (require('./558').endsWith(s, '{}')) f = JSON.stringify(f);
            else if (require('./558').endsWith(s, '[]') && (c = require('./558').toArray(f)))
              return void c.forEach(function (n) {
                if (!require('./558').isUndefined(n)) t.append(p, o(n));
              });
          n(f, p);
        }
      });

      f.pop();
    } else t.append(u, o(s));
  })(n);

  return t;
};
