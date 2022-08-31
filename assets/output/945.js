exports.read = function (o, t, h, M, f) {
  var w,
    p,
    i = 8 * f - M - 1,
    n = (1 << i) - 1,
    N = n >> 1,
    e = -7,
    u = h ? f - 1 : 0,
    s = h ? -1 : 1,
    c = o[t + u];

  for (u += s, w = c & ((1 << -e) - 1), c >>= -e, e += i; e > 0; w = 256 * w + o[t + u], u += s, e -= 8);

  for (p = w & ((1 << -e) - 1), w >>= -e, e += M; e > 0; p = 256 * p + o[t + u], u += s, e -= 8);

  if (0 === w) w = 1 - N;
  else {
    if (w === n) return p ? NaN : (1 / 0) * (c ? -1 : 1);
    p += 2 ** M;
    w -= N;
  }
  return (c ? -1 : 1) * p * 2 ** (w - M);
};

exports.write = function (o, t, h, M, f, w) {
  var p,
    i,
    n,
    N = 8 * w - f - 1,
    e = (1 << N) - 1,
    u = e >> 1,
    s = 23 === f ? 2 ** -24 - 2 ** -77 : 0,
    c = M ? 0 : w - 1,
    l = M ? 1 : -1,
    d = t < 0 || (0 === t && 1 / t < 0) ? 1 : 0;

  for (
    t = Math.abs(t),
      isNaN(t) || t === 1 / 0
        ? ((i = isNaN(t) ? 1 : 0), (p = e))
        : ((p = Math.floor(Math.log(t) / Math.LN2)),
          t * (n = 2 ** -p) < 1 && (p--, (n *= 2)),
          (t += p + u >= 1 ? s / n : s * 2 ** (1 - u)) * n >= 2 && (p++, (n /= 2)),
          p + u >= e ? ((i = 0), (p = e)) : p + u >= 1 ? ((i = (t * n - 1) * 2 ** f), (p += u)) : ((i = t * 2 ** (u - 1) * 2 ** f), (p = 0)));
    f >= 8;
    o[h + c] = 255 & i, c += l, i /= 256, f -= 8
  );

  for (p = (p << f) | i, N += f; N > 0; o[h + c] = 255 & p, c += l, p /= 256, N -= 8);

  o[h + c - l] |= 128 * d;
};
