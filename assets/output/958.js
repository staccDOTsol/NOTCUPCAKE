function n(n) {
  for (var t = [], u = 32 * n.length, f = 0; f < u; f += 8) {
    var o = (n[f >> 5] >>> f % 32) & 255,
      a = parseInt('0123456789abcdef'.charAt((o >>> 4) & 15) + '0123456789abcdef'.charAt(15 & o), 16);
    t.push(a);
  }

  return t;
}

function t(n) {
  return 14 + (((n + 64) >>> 9) << 4) + 1;
}

function u(n, u) {
  n[u >> 5] |= 128 << u % 32;
  n[t(u) - 1] = u;

  for (var f = 1732584193, a = -271733879, l = -1732584194, d = 271733878, s = 0; s < n.length; s += 16) {
    var p = f,
      A = a,
      y = l,
      _ = d;
    a = h(
      (a = h(
        (a = h(
          (a = h(
            (a = v(
              (a = v(
                (a = v(
                  (a = v(
                    (a = i(
                      (a = i(
                        (a = i(
                          (a = i(
                            (a = c(
                              (a = c(
                                (a = c(
                                  (a = c(
                                    a,
                                    (l = c(l, (d = c(d, (f = c(f, a, l, d, n[s], 7, -680876936)), a, l, n[s + 1], 12, -389564586)), f, a, n[s + 2], 17, 606105819)),
                                    d,
                                    f,
                                    n[s + 3],
                                    22,
                                    -1044525330
                                  )),
                                  (l = c(l, (d = c(d, (f = c(f, a, l, d, n[s + 4], 7, -176418897)), a, l, n[s + 5], 12, 1200080426)), f, a, n[s + 6], 17, -1473231341)),
                                  d,
                                  f,
                                  n[s + 7],
                                  22,
                                  -45705983
                                )),
                                (l = c(l, (d = c(d, (f = c(f, a, l, d, n[s + 8], 7, 1770035416)), a, l, n[s + 9], 12, -1958414417)), f, a, n[s + 10], 17, -42063)),
                                d,
                                f,
                                n[s + 11],
                                22,
                                -1990404162
                              )),
                              (l = c(l, (d = c(d, (f = c(f, a, l, d, n[s + 12], 7, 1804603682)), a, l, n[s + 13], 12, -40341101)), f, a, n[s + 14], 17, -1502002290)),
                              d,
                              f,
                              n[s + 15],
                              22,
                              1236535329
                            )),
                            (l = i(l, (d = i(d, (f = i(f, a, l, d, n[s + 1], 5, -165796510)), a, l, n[s + 6], 9, -1069501632)), f, a, n[s + 11], 14, 643717713)),
                            d,
                            f,
                            n[s],
                            20,
                            -373897302
                          )),
                          (l = i(l, (d = i(d, (f = i(f, a, l, d, n[s + 5], 5, -701558691)), a, l, n[s + 10], 9, 38016083)), f, a, n[s + 15], 14, -660478335)),
                          d,
                          f,
                          n[s + 4],
                          20,
                          -405537848
                        )),
                        (l = i(l, (d = i(d, (f = i(f, a, l, d, n[s + 9], 5, 568446438)), a, l, n[s + 14], 9, -1019803690)), f, a, n[s + 3], 14, -187363961)),
                        d,
                        f,
                        n[s + 8],
                        20,
                        1163531501
                      )),
                      (l = i(l, (d = i(d, (f = i(f, a, l, d, n[s + 13], 5, -1444681467)), a, l, n[s + 2], 9, -51403784)), f, a, n[s + 7], 14, 1735328473)),
                      d,
                      f,
                      n[s + 12],
                      20,
                      -1926607734
                    )),
                    (l = v(l, (d = v(d, (f = v(f, a, l, d, n[s + 5], 4, -378558)), a, l, n[s + 8], 11, -2022574463)), f, a, n[s + 11], 16, 1839030562)),
                    d,
                    f,
                    n[s + 14],
                    23,
                    -35309556
                  )),
                  (l = v(l, (d = v(d, (f = v(f, a, l, d, n[s + 1], 4, -1530992060)), a, l, n[s + 4], 11, 1272893353)), f, a, n[s + 7], 16, -155497632)),
                  d,
                  f,
                  n[s + 10],
                  23,
                  -1094730640
                )),
                (l = v(l, (d = v(d, (f = v(f, a, l, d, n[s + 13], 4, 681279174)), a, l, n[s], 11, -358537222)), f, a, n[s + 3], 16, -722521979)),
                d,
                f,
                n[s + 6],
                23,
                76029189
              )),
              (l = v(l, (d = v(d, (f = v(f, a, l, d, n[s + 9], 4, -640364487)), a, l, n[s + 12], 11, -421815835)), f, a, n[s + 15], 16, 530742520)),
              d,
              f,
              n[s + 2],
              23,
              -995338651
            )),
            (l = h(l, (d = h(d, (f = h(f, a, l, d, n[s], 6, -198630844)), a, l, n[s + 7], 10, 1126891415)), f, a, n[s + 14], 15, -1416354905)),
            d,
            f,
            n[s + 5],
            21,
            -57434055
          )),
          (l = h(l, (d = h(d, (f = h(f, a, l, d, n[s + 12], 6, 1700485571)), a, l, n[s + 3], 10, -1894986606)), f, a, n[s + 10], 15, -1051523)),
          d,
          f,
          n[s + 1],
          21,
          -2054922799
        )),
        (l = h(l, (d = h(d, (f = h(f, a, l, d, n[s + 8], 6, 1873313359)), a, l, n[s + 15], 10, -30611744)), f, a, n[s + 6], 15, -1560198380)),
        d,
        f,
        n[s + 13],
        21,
        1309151649
      )),
      (l = h(l, (d = h(d, (f = h(f, a, l, d, n[s + 4], 6, -145523070)), a, l, n[s + 11], 10, -1120210379)), f, a, n[s + 2], 15, 718787259)),
      d,
      f,
      n[s + 9],
      21,
      -343485551
    );
    f = o(f, p);
    a = o(a, A);
    l = o(l, y);
    d = o(d, _);
  }

  return [f, a, l, d];
}

function f(n) {
  if (0 === n.length) return [];

  for (var u = 8 * n.length, f = new Uint32Array(t(u)), o = 0; o < u; o += 8) f[o >> 5] |= (255 & n[o / 8]) << o % 32;

  return f;
}

function o(n, t) {
  var u = (65535 & n) + (65535 & t);
  return (((n >> 16) + (t >> 16) + (u >> 16)) << 16) | (65535 & u);
}

function a(n, t, u, f, a, c) {
  return o(((i = o(o(t, n), o(f, c))) << (v = a)) | (i >>> (32 - v)), u);
  var i, v;
}

function c(n, t, u, f, o, c, i) {
  return a((t & u) | (~t & f), n, t, o, c, i);
}

function i(n, t, u, f, o, c, i) {
  return a((t & f) | (u & ~f), n, t, o, c, i);
}

function v(n, t, u, f, o, c, i) {
  return a(t ^ u ^ f, n, t, o, c, i);
}

function h(n, t, u, f, o, c, i) {
  return a(u ^ (t | ~f), n, t, o, c, i);
}

var l = function (t) {
  if ('string' == typeof t) {
    var o = unescape(encodeURIComponent(t));
    t = new Uint8Array(o.length);

    for (var a = 0; a < o.length; ++a) t[a] = o.charCodeAt(a);
  }

  return n(u(f(t), 8 * t.length));
};

exports.default = l;
