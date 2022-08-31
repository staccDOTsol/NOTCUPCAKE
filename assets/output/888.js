var t = Object.prototype.hasOwnProperty,
  n = '~';

function o() {}

function s(t, n, o) {
  this.fn = t;
  this.context = n;
  this.once = o || false;
}

function i(t, o, i, c, f) {
  if ('function' != typeof i) throw new TypeError('The listener must be a function');
  var u = new s(i, c || t, f),
    v = n ? n + o : o;
  if (t._events[v]) t._events[v].fn ? (t._events[v] = [t._events[v], u]) : t._events[v].push(u);
  else {
    t._events[v] = u;
    t._eventsCount++;
  }
  return t;
}

function c(t, n) {
  if (0 == --t._eventsCount) t._events = new o();
  else delete t._events[n];
}

function f() {
  this._events = new o();
  this._eventsCount = 0;
}

if (Object.create) {
  o.prototype = Object.create(null);
  if (!new o().__proto__) n = false;
}

f.prototype.eventNames = function () {
  var o,
    s,
    i = [];
  if (0 === this._eventsCount) return i;

  for (s in (o = this._events)) t.call(o, s) && i.push(n ? s.slice(1) : s);

  return Object.getOwnPropertySymbols ? i.concat(Object.getOwnPropertySymbols(o)) : i;
};

f.prototype.listeners = function (t) {
  var o = n ? n + t : t,
    s = this._events[o];
  if (!s) return [];
  if (s.fn) return [s.fn];

  for (var i = 0, c = s.length, f = new Array(c); i < c; i++) f[i] = s[i].fn;

  return f;
};

f.prototype.listenerCount = function (t) {
  var o = n ? n + t : t,
    s = this._events[o];
  return s ? (s.fn ? 1 : s.length) : 0;
};

f.prototype.emit = function (t, o, s, i, c, f) {
  var u = n ? n + t : t;
  if (!this._events[u]) return false;
  var v,
    l,
    h = this._events[u],
    p = arguments.length;

  if (h.fn) {
    switch ((h.once && this.removeListener(t, h.fn, undefined, true), p)) {
      case 1:
        h.fn.call(h.context);
        return true;

      case 2:
        h.fn.call(h.context, o);
        return true;

      case 3:
        h.fn.call(h.context, o, s);
        return true;

      case 4:
        h.fn.call(h.context, o, s, i);
        return true;

      case 5:
        h.fn.call(h.context, o, s, i, c);
        return true;

      case 6:
        h.fn.call(h.context, o, s, i, c, f);
        return true;
    }

    for (l = 1, v = new Array(p - 1); l < p; l++) v[l - 1] = arguments[l];

    h.fn.apply(h.context, v);
  } else {
    var _,
      y = h.length;

    for (l = 0; l < y; l++)
      switch ((h[l].once && this.removeListener(t, h[l].fn, undefined, true), p)) {
        case 1:
          h[l].fn.call(h[l].context);
          break;

        case 2:
          h[l].fn.call(h[l].context, o);
          break;

        case 3:
          h[l].fn.call(h[l].context, o, s);
          break;

        case 4:
          h[l].fn.call(h[l].context, o, s, i);
          break;

        default:
          if (!v) for (_ = 1, v = new Array(p - 1); _ < p; _++) v[_ - 1] = arguments[_];
          h[l].fn.apply(h[l].context, v);
      }
  }

  return true;
};

f.prototype.on = function (t, n, o) {
  return i(this, t, n, o, false);
};

f.prototype.once = function (t, n, o) {
  return i(this, t, n, o, true);
};

f.prototype.removeListener = function (t, o, s, i) {
  var f = n ? n + t : t;
  if (!this._events[f]) return this;

  if (!o) {
    c(this, f);
    return this;
  }

  var u = this._events[f];
  if (u.fn) u.fn !== o || (i && !u.once) || (s && u.context !== s) || c(this, f);
  else {
    for (var v = 0, l = [], h = u.length; v < h; v++) (u[v].fn !== o || (i && !u[v].once) || (s && u[v].context !== s)) && l.push(u[v]);

    if (l.length) this._events[f] = 1 === l.length ? l[0] : l;
    else c(this, f);
  }
  return this;
};

f.prototype.removeAllListeners = function (t) {
  var s;

  if (t) {
    s = n ? n + t : t;
    if (this._events[s]) c(this, s);
  } else {
    this._events = new o();
    this._eventsCount = 0;
  }

  return this;
};

f.prototype.off = f.prototype.removeListener;
f.prototype.addListener = f.prototype.on;
f.prefixed = n;
f.EventEmitter = f;
if (undefined !== module) module.exports = f;
