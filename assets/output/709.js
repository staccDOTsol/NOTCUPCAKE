exports.addEventListener = function (n) {
  for (var t, o = arguments.length, v = new Array(o > 1 ? o - 1 : 0), u = 1; u < o; u++) v[u - 1] = arguments[u];

  var f = v[0],
    l = v[1],
    s = false;
  return null != (t = n.addEventListener(f, l))
    ? t
    : {
        remove: function () {
          if (!s) {
            n.removeEventListener(f, l);
            s = true;
          }
        },
      };
};

exports.addListener = function (n) {
  for (var t, o = arguments.length, v = new Array(o > 1 ? o - 1 : 0), u = 1; u < o; u++) v[u - 1] = arguments[u];

  var f = v[0],
    l = v[1],
    s = false;
  return null != (t = n.addListener(f, l))
    ? t
    : {
        remove: function () {
          if (!s) {
            n.removeEventListener(f, l);
            s = true;
          }
        },
      };
};
