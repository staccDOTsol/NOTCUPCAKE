var t = new RegExp('%[a-f0-9]{2}', 'gi'),
  n = new RegExp('(%[a-f0-9]{2})+', 'gi');

function o(t, n) {
  try {
    return decodeURIComponent(t.join(''));
  } catch (t) {}

  if (1 === t.length) return t;
  n = n || 1;
  var c = t.slice(0, n),
    p = t.slice(n);
  return Array.prototype.concat.call([], o(c), o(p));
}

function c(n) {
  try {
    return decodeURIComponent(n);
  } catch (i) {
    for (var c = n.match(t), p = 1; p < c.length; p++) c = (n = o(c, p).join('')).match(t);

    return n;
  }
}

function p(t) {
  for (
    var o = {
        '%FE%FF': '\ufffd\ufffd',
        '%FF%FE': '\ufffd\ufffd',
      },
      p = n.exec(t);
    p;

  ) {
    try {
      o[p[0]] = decodeURIComponent(p[0]);
    } catch (t) {
      var i = c(p[0]);
      if (i !== p[0]) o[p[0]] = i;
    }

    p = n.exec(t);
  }

  o['%C2'] = '\ufffd';

  for (var f = Object.keys(o), u = 0; u < f.length; u++) {
    var y = f[u];
    t = t.replace(new RegExp(y, 'g'), o[y]);
  }

  return t;
}

module.exports = function (t) {
  if ('string' != typeof t) throw new TypeError('Expected `encodedURI` to be of type `string`, got `' + typeof t + '`');

  try {
    t = t.replace(/\+/g, ' ');
    return decodeURIComponent(t);
  } catch (n) {
    return p(t);
  }
};
