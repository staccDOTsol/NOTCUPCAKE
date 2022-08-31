exports.default = function (n) {
  var t, f;
  return function (...args) {
    if (t) {
      if (t.length !== args.length) l = true;
      else
        for (var v = 0; v < t.length; v++)
          if (t[v] !== args[v]) {
            l = true;
            break;
          }
    } else l = true;

    t = args;
    if (l || undefined === f) f = n.apply(undefined, args);
    return f;
  };
};
