function t(t) {
  for (var n = [1, 1, 1, 1, 2, 2, 3, 0], o = t.length, i = '', u = 0; u < o; ) {
    var f = t[u++];

    if (128 & f) {
      var c = n[(f >> 3) & 7];
      if (!(64 & f) || !c || u + c > o) return null;

      for (f &= 63 >> c; c > 0; c -= 1) {
        var h = t[u++];
        if (128 != (192 & h)) return null;
        f = (f << 6) | (63 & h);
      }
    }

    i += String.fromCharCode(f);
  }

  return i;
}

function n(t) {
  for (var n = [], o = 0, i = 0; i < t.length; i++) {
    var u = t.charCodeAt(i);
    if (u < 128) n[o++] = u;
    else if (u < 2048) {
      n[o++] = (u >> 6) | 192;
      n[o++] = (63 & u) | 128;
    } else if (55296 == (64512 & u) && i + 1 < t.length && 56320 == (64512 & t.charCodeAt(i + 1))) {
      u = 65536 + ((1023 & u) << 10) + (1023 & t.charCodeAt(++i));
      n[o++] = (u >> 18) | 240;
      n[o++] = ((u >> 12) & 63) | 128;
      n[o++] = ((u >> 6) & 63) | 128;
      n[o++] = (63 & u) | 128;
    } else {
      n[o++] = (u >> 12) | 224;
      n[o++] = ((u >> 6) & 63) | 128;
      n[o++] = (63 & u) | 128;
    }
  }

  return n;
}

module.exports = {
  stringToBytes: function (t) {
    return n(t);
  },
  bytesToString: function (n) {
    return 'string' == typeof n ? n : t(n);
  },
  bytesToHexString: function (t) {
    for (var n, o = '', i = 0; i < t.length; i++) {
      if (1 === (n = (t[i] >= 0 ? t[i] : 256 + t[i]).toString(16)).length) n = '0' + n;
      o += n;
    }

    return o;
  },
  toHex: function (t) {
    var n;
    if (t < 0) t += 256;
    if (1 === (n = t.toString(16)).length) n = '0' + n;
    return n;
  },
  toPrintable: function (t) {
    return (t >= 32) & (t <= 127) ? String.fromCharCode(t) : '.';
  },
};
