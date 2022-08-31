function t(t, n) {
  var s = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (s) return (s = s.call(t)).next.bind(s);

  if (Array.isArray(t) || (s = i(t)) || (n && t && 'number' == typeof t.length)) {
    if (s) t = s;
    var l = 0;
    return function () {
      return l >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[l++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function i(t, i) {
  if (t) {
    if ('string' == typeof t) return n(t, i);
    var s = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === s && t.constructor) s = t.constructor.name;
    return 'Map' === s || 'Set' === s ? Array.from(t) : 'Arguments' === s || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(s) ? n(t, i) : undefined;
  }
}

function n(t, i) {
  if (null == i || i > t.length) i = t.length;

  for (var n = 0, s = new Array(i); n < i; n++) s[n] = t[n];

  return s;
}

exports.implementation = (function (i) {
  function n(i, s, l) {
    var o = l.doNotStripQMark,
      u = undefined !== o && o;

    require('./7')(this, n);

    var a = s[0];
    if (((this._list = []), (this._url = null), u || 'string' != typeof a || '?' !== a[0] || (a = a.slice(1)), Array.isArray(a)))
      for (var c, h = t(a); !(c = h()).done; ) {
        var f = c.value;
        if (2 !== f.length) throw new TypeError("Failed to construct 'URLSearchParams': parameter 1 sequence's element does not contain exactly two elements.");

        this._list.push([f[0], f[1]]);
      }
    else if ('object' == typeof a && null === Object.getPrototypeOf(a))
      for (var p = 0, v = Object.keys(a); p < v.length; p++) {
        var y = v[p],
          _ = a[y];

        this._list.push([y, _]);
      }
    else this._list = require('./1024').parseUrlencoded(a);
  }

  require('./8')(n, [
    {
      key: '_updateSteps',
      value: function () {
        if (null !== this._url) {
          var module1024 = require('./1024').serializeUrlencoded(this._list);

          if ('' === module1024) module1024 = null;
          this._url._url.query = module1024;
        }
      },
    },
    {
      key: 'append',
      value: function (t, i) {
        this._list.push([t, i]);

        this._updateSteps();
      },
    },
    {
      key: 'delete',
      value: function (t) {
        for (var i = 0; i < this._list.length; ) this._list[i][0] === t ? this._list.splice(i, 1) : i++;

        this._updateSteps();
      },
    },
    {
      key: 'get',
      value: function (i) {
        for (var n, s = t(this._list); !(n = s()).done; ) {
          var l = n.value;
          if (l[0] === i) return l[1];
        }

        return null;
      },
    },
    {
      key: 'getAll',
      value: function (i) {
        for (var n, s = [], l = t(this._list); !(n = l()).done; ) {
          var o = n.value;
          if (o[0] === i) s.push(o[1]);
        }

        return s;
      },
    },
    {
      key: 'has',
      value: function (i) {
        for (var n, s = t(this._list); !(n = s()).done; ) {
          if (n.value[0] === i) return true;
        }

        return false;
      },
    },
    {
      key: 'set',
      value: function (t, i) {
        for (var n = false, s = 0; s < this._list.length; ) this._list[s][0] === t ? (n ? this._list.splice(s, 1) : ((n = true), (this._list[s][1] = i), s++)) : s++;

        if (!n) this._list.push([t, i]);

        this._updateSteps();
      },
    },
    {
      key: 'sort',
      value: function () {
        var t, i;
        this._list =
          ((t = this._list),
          (i = function (t, i) {
            return t[0] > i[0];
          }),
          t
            .map(function (t, i) {
              return {
                item: t,
                index: i,
              };
            })
            .sort(function (t, n) {
              return i(t.item, n.item) || t.index - n.index;
            })
            .map(function (t) {
              return t.item;
            }));

        this._updateSteps();
      },
    },
    {
      key: i,
      value: function () {
        return this._list[Symbol.iterator]();
      },
    },
    {
      key: 'toString',
      value: function () {
        return require('./1024').serializeUrlencoded(this._list);
      },
    },
  ]);

  return n;
})(Symbol.iterator);
