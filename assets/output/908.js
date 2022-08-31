var t, n;
t = this;

n = function (t) {
  (function () {
    var n = t,
      i = n.lib.WordArray;
    n.enc.Base64url = {
      stringify: function (t) {
        var n = !(arguments.length > 1 && undefined !== arguments[1]) || arguments[1],
          i = t.words,
          f = t.sigBytes,
          o = n ? this._safe_map : this._map;
        t.clamp();

        for (var s = [], h = 0; h < f; h += 3)
          for (
            var c =
                (((i[h >>> 2] >>> (24 - (h % 4) * 8)) & 255) << 16) |
                (((i[(h + 1) >>> 2] >>> (24 - ((h + 1) % 4) * 8)) & 255) << 8) |
                ((i[(h + 2) >>> 2] >>> (24 - ((h + 2) % 4) * 8)) & 255),
              p = 0;
            p < 4 && h + 0.75 * p < f;
            p++
          )
            s.push(o.charAt((c >>> (6 * (3 - p))) & 63));

        var v = o.charAt(64);
        if (v) for (; s.length % 4; ) s.push(v);
        return s.join('');
      },
      parse: function (t) {
        var n = !(arguments.length > 1 && undefined !== arguments[1]) || arguments[1],
          i = t.length,
          o = n ? this._safe_map : this._map,
          s = this._reverseMap;

        if (!s) {
          s = this._reverseMap = [];

          for (var h = 0; h < o.length; h++) s[o.charCodeAt(h)] = h;
        }

        var c = o.charAt(64);

        if (c) {
          var p = t.indexOf(c);
          if (-1 !== p) i = p;
        }

        return f(t, i, s);
      },
      _map: 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=',
      _safe_map: 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_',
    };

    function f(t, n, f) {
      for (var o = [], s = 0, h = 0; h < n; h++)
        if (h % 4) {
          var c = (f[t.charCodeAt(h - 1)] << ((h % 4) * 2)) | (f[t.charCodeAt(h)] >>> (6 - (h % 4) * 2));
          o[s >>> 2] |= c << (24 - (s % 4) * 8);
          s++;
        }

      return i.create(o, s);
    }
  })();

  return t.enc.Base64url;
};

if ('object' == typeof exports) module.exports = exports = n(require('crypto-js'));
else if ('function' == typeof define && define.amd) define(['./core'], n);
else n(t.CryptoJS);
