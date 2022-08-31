var t,
  n =
    (this && this.__extends) ||
    ((t = function (n, e) {
      return (t =
        Object.setPrototypeOf ||
        ({
          __proto__: [],
        } instanceof Array &&
          function (t, n) {
            t.__proto__ = n;
          }) ||
        function (t, n) {
          for (var e in n) Object.prototype.hasOwnProperty.call(n, e) && (t[e] = n[e]);
        })(n, e);
    }),
    function (n, e) {
      if ('function' != typeof e && null !== e) throw new TypeError('Class extends value ' + String(e) + ' is not a constructor or null');

      function o() {
        this.constructor = n;
      }

      t(n, e);
      n.prototype = null === e ? Object.create(e) : ((o.prototype = e.prototype), new o());
    });

function e(t) {
  if (!(t instanceof Uint8Array)) throw new TypeError('b must be a Uint8Array');
}

function o(t) {
  e(t);
  return require('./947').Buffer.from(t.buffer, t.byteOffset, t.length);
}

exports.__esModule = true;
exports.checkUint8Array = e;
exports.uint8ArrayToBuffer = o;

var module29 = (function () {
  function t(t, n) {
    if (!Number.isInteger(t)) throw new TypeError('span must be an integer');
    this.span = t;
    this.property = n;
  }

  t.prototype.makeDestinationObject = function () {
    return {};
  };

  t.prototype.decode = function (t, n) {
    throw new Error('Layout is abstract');
  };

  t.prototype.encode = function (t, n, e) {
    throw new Error('Layout is abstract');
  };

  t.prototype.getSpan = function (t, n) {
    if (0 > this.span) throw new RangeError('indeterminate span');
    return this.span;
  };

  t.prototype.replicate = function (t) {
    var n = Object.create(this.constructor.prototype);

    require('./29')(n, this);

    n.property = t;
    return n;
  };

  t.prototype.fromArray = function (t) {};

  return t;
})();

function u(t, n) {
  return n.property ? t + '[' + n.property + ']' : t;
}

exports.Layout = module29;
exports.nameWithProperty = u;

exports.bindConstructorLayout = function (t, n) {
  if ('function' != typeof t) throw new TypeError('Class must be constructor');
  if (Object.prototype.hasOwnProperty.call(t, 'layout_')) throw new Error('Class is already bound to a layout');
  if (!(n && n instanceof module29)) throw new TypeError('layout must be a Layout');
  if (Object.prototype.hasOwnProperty.call(n, 'boundConstructor_')) throw new Error('layout is already bound to a constructor');
  t.layout_ = n;
  n.boundConstructor_ = t;

  n.makeDestinationObject = function () {
    return new t();
  };

  Object.defineProperty(t.prototype, 'encode', {
    value: function (t, e) {
      return n.encode(this, t, e);
    },
    writable: true,
  });
  Object.defineProperty(t, 'decode', {
    value: function (t, e) {
      return n.decode(t, e);
    },
    writable: true,
  });
};

var s = (function (t) {
  function e() {
    return null !== t ? t.apply(this, arguments) : this;
  }

  n(e, t);

  e.prototype.isCount = function () {
    throw new Error('ExternalLayout is abstract');
  };

  return e;
})(module29);

exports.ExternalLayout = s;

var c = (function (t) {
  function o(n, e) {
    var o = this;
    if ((undefined === n && (n = 1), !Number.isInteger(n) || 0 >= n)) throw new TypeError('elementSpan must be a (positive) integer');
    (o = t.call(this, -1, e) || this).elementSpan = n;
    return o;
  }

  n(o, t);

  o.prototype.isCount = function () {
    return true;
  };

  o.prototype.decode = function (t, n) {
    e(t);
    if (undefined === n) n = 0;
    var o = t.length - n;
    return Math.floor(o / this.elementSpan);
  };

  o.prototype.encode = function (t, n, e) {
    return 0;
  };

  return o;
})(s);

exports.GreedyCount = c;

var p = (function (t) {
  function e(n, e, o) {
    var u = this;
    if (!(n instanceof module29)) throw new TypeError('layout must be a Layout');
    if (undefined === e) e = 0;
    else if (!Number.isInteger(e)) throw new TypeError('offset must be integer or undefined');
    (u = t.call(this, n.span, o || n.property) || this).layout = n;
    u.offset = e;
    return u;
  }

  n(e, t);

  e.prototype.isCount = function () {
    return this.layout instanceof f || this.layout instanceof d;
  };

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return this.layout.decode(t, n + this.offset);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    return this.layout.encode(t, n, e + this.offset);
  };

  return e;
})(s);

exports.OffsetLayout = p;

var f = (function (t) {
  function e(n, e) {
    var o = t.call(this, n, e) || this;
    if (6 < o.span) throw new RangeError('span must not exceed 6 bytes');
    return o;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readUIntLE(n, this.span);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeUIntLE(t, e, this.span);
    return this.span;
  };

  return e;
})(module29);

exports.UInt = f;

var d = (function (t) {
  function e(n, e) {
    var o = t.call(this, n, e) || this;
    if (6 < o.span) throw new RangeError('span must not exceed 6 bytes');
    return o;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readUIntBE(n, this.span);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeUIntBE(t, e, this.span);
    return this.span;
  };

  return e;
})(module29);

exports.UIntBE = d;

var h = (function (t) {
  function e(n, e) {
    var o = t.call(this, n, e) || this;
    if (6 < o.span) throw new RangeError('span must not exceed 6 bytes');
    return o;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readIntLE(n, this.span);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeIntLE(t, e, this.span);
    return this.span;
  };

  return e;
})(module29);

exports.Int = h;

var y = (function (t) {
  function e(n, e) {
    var o = t.call(this, n, e) || this;
    if (6 < o.span) throw new RangeError('span must not exceed 6 bytes');
    return o;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readIntBE(n, this.span);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeIntBE(t, e, this.span);
    return this.span;
  };

  return e;
})(module29);

exports.IntBE = y;
var l = 2 ** 32;

function v(t) {
  var n = Math.floor(t / l);
  return {
    hi32: n,
    lo32: t - n * l,
  };
}

function w(t, n) {
  return t * l + n;
}

var b = (function (t) {
  function e(n) {
    return t.call(this, 8, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = o(t),
      i = e.readUInt32LE(n);
    return w(e.readUInt32LE(n + 4), i);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var i = v(t),
      u = o(n);
    u.writeUInt32LE(i.lo32, e);
    u.writeUInt32LE(i.hi32, e + 4);
    return 8;
  };

  return e;
})(module29);

exports.NearUInt64 = b;

var E = (function (t) {
  function e(n) {
    return t.call(this, 8, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = o(t);
    return w(e.readUInt32BE(n), e.readUInt32BE(n + 4));
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var i = v(t),
      u = o(n);
    u.writeUInt32BE(i.hi32, e);
    u.writeUInt32BE(i.lo32, e + 4);
    return 8;
  };

  return e;
})(module29);

exports.NearUInt64BE = E;

var L = (function (t) {
  function e(n) {
    return t.call(this, 8, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = o(t),
      i = e.readUInt32LE(n);
    return w(e.readInt32LE(n + 4), i);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var i = v(t),
      u = o(n);
    u.writeUInt32LE(i.lo32, e);
    u.writeInt32LE(i.hi32, e + 4);
    return 8;
  };

  return e;
})(module29);

exports.NearInt64 = L;

var S = (function (t) {
  function e(n) {
    return t.call(this, 8, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = o(t);
    return w(e.readInt32BE(n), e.readUInt32BE(n + 4));
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var i = v(t),
      u = o(n);
    u.writeInt32BE(i.hi32, e);
    u.writeUInt32BE(i.lo32, e + 4);
    return 8;
  };

  return e;
})(module29);

exports.NearInt64BE = S;

var I = (function (t) {
  function e(n) {
    return t.call(this, 4, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readFloatLE(n);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeFloatLE(t, e);
    return 4;
  };

  return e;
})(module29);

exports.Float = I;

var B = (function (t) {
  function e(n) {
    return t.call(this, 4, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readFloatBE(n);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeFloatBE(t, e);
    return 4;
  };

  return e;
})(module29);

exports.FloatBE = B;

var U = (function (t) {
  function e(n) {
    return t.call(this, 8, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readDoubleLE(n);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeDoubleLE(t, e);
    return 8;
  };

  return e;
})(module29);

exports.Double = U;

var x = (function (t) {
  function e(n) {
    return t.call(this, 8, n) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    return o(t).readDoubleBE(n);
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    o(n).writeDoubleBE(t, e);
    return 8;
  };

  return e;
})(module29);

exports.DoubleBE = x;

var O = (function (t) {
  function e(n, e, o) {
    var u = this;
    if (!(n instanceof module29)) throw new TypeError('elementLayout must be a Layout');
    if (!((e instanceof s && e.isCount()) || (Number.isInteger(e) && 0 <= e))) throw new TypeError('count must be non-negative integer or an unsigned integer ExternalLayout');
    var c = -1;
    if (!(e instanceof s) && 0 < n.span) c = e * n.span;
    (u = t.call(this, c, o) || this).elementLayout = n;
    u.count = e;
    return u;
  }

  n(e, t);

  e.prototype.getSpan = function (t, n) {
    if (0 <= this.span) return this.span;
    if (undefined === n) n = 0;
    var e = 0,
      o = this.count;
    if ((o instanceof s && (o = o.decode(t, n)), 0 < this.elementLayout.span)) e = o * this.elementLayout.span;
    else
      for (var i = 0; i < o; ) {
        e += this.elementLayout.getSpan(t, n + e);
        ++i;
      }
    return e;
  };

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = [],
      o = 0,
      i = this.count;

    for (i instanceof s && (i = i.decode(t, n)); o < i; ) {
      e.push(this.elementLayout.decode(t, n));
      n += this.elementLayout.getSpan(t, n);
      o += 1;
    }

    return e;
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var o = this.elementLayout,
      i = t.reduce(function (t, i) {
        return t + o.encode(i, n, e + t);
      }, 0);
    if (this.count instanceof s) this.count.encode(t.length, n, e);
    return i;
  };

  return e;
})(module29);

exports.Sequence = O;

var T = (function (t) {
  function o(n, e, o) {
    var u = this;
    if (
      !Array.isArray(n) ||
      !n.reduce(function (t, n) {
        return t && n instanceof module29;
      }, true)
    )
      throw new TypeError('fields must be array of Layout instances');

    if ('boolean' == typeof e && undefined === o) {
      o = e;
      e = undefined;
    }

    for (var s = 0, c = n; s < c.length; s++) {
      var p = c[s];
      if (0 > p.span && undefined === p.property) throw new Error('fields cannot contain unnamed variable-length layout');
    }

    var f = -1;

    try {
      f = n.reduce(function (t, n) {
        return t + n.getSpan();
      }, 0);
    } catch (t) {}

    (u = t.call(this, f, e) || this).fields = n;
    u.decodePrefixes = !!o;
    return u;
  }

  n(o, t);

  o.prototype.getSpan = function (t, n) {
    if (0 <= this.span) return this.span;
    if (undefined === n) n = 0;
    var e = 0;

    try {
      e = this.fields.reduce(function (e, o) {
        var i = o.getSpan(t, n);
        n += i;
        return e + i;
      }, 0);
    } catch (t) {
      throw new RangeError('indeterminate span');
    }

    return e;
  };

  o.prototype.decode = function (t, n) {
    e(t);
    if (undefined === n) n = 0;

    for (var o = this.makeDestinationObject(), i = 0, u = this.fields; i < u.length; i++) {
      var s = u[i];
      if ((undefined !== s.property && (o[s.property] = s.decode(t, n)), (n += s.getSpan(t, n)), this.decodePrefixes && t.length === n)) break;
    }

    return o;
  };

  o.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;

    for (var o = e, i = 0, u = 0, s = 0, c = this.fields; s < c.length; s++) {
      var p = c[s],
        f = p.span;

      if (((u = 0 < f ? f : 0), undefined !== p.property)) {
        var d = t[p.property];

        if (undefined !== d) {
          u = p.encode(d, n, e);
          if (0 > f) f = p.getSpan(n, e);
        }
      }

      i = e;
      e += f;
    }

    return i + u - o;
  };

  o.prototype.fromArray = function (t) {
    for (var n = this.makeDestinationObject(), e = 0, o = this.fields; e < o.length; e++) {
      var i = o[e];
      if (undefined !== i.property && 0 < t.length) n[i.property] = t.shift();
    }

    return n;
  };

  o.prototype.layoutFor = function (t) {
    if ('string' != typeof t) throw new TypeError('property must be string');

    for (var n = 0, e = this.fields; n < e.length; n++) {
      var o = e[n];
      if (o.property === t) return o;
    }
  };

  o.prototype.offsetOf = function (t) {
    if ('string' != typeof t) throw new TypeError('property must be string');

    for (var n = 0, e = 0, o = this.fields; e < o.length; e++) {
      var i = o[e];
      if (i.property === t) return n;
      if (0 > i.span) n = -1;
      else if (0 <= n) n += i.span;
    }
  };

  return o;
})(module29);

exports.Structure = T;

var D = (function () {
  function t(t) {
    this.property = t;
  }

  t.prototype.decode = function (t, n) {
    throw new Error('UnionDiscriminator is abstract');
  };

  t.prototype.encode = function (t, n, e) {
    throw new Error('UnionDiscriminator is abstract');
  };

  return t;
})();

exports.UnionDiscriminator = D;

var k = (function (t) {
  function e(n, e) {
    var o = this;
    if (!(n instanceof s && n.isCount())) throw new TypeError('layout must be an unsigned integer ExternalLayout');
    (o = t.call(this, e || n.property || 'variant') || this).layout = n;
    return o;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    return this.layout.decode(t, n);
  };

  e.prototype.encode = function (t, n, e) {
    return this.layout.encode(t, n, e);
  };

  return e;
})(D);

exports.UnionLayoutDiscriminator = k;

var _ = (function (t) {
  function e(n, e, o) {
    var u,
      c = this,
      h = n instanceof f || n instanceof d;
    if (h) u = new k(new p(n));
    else if (n instanceof s && n.isCount()) u = new k(n);
    else {
      if (!(n instanceof D)) throw new TypeError('discr must be a UnionDiscriminator or an unsigned integer layout');
      u = n;
    }
    if ((undefined === e && (e = null), !(null === e || e instanceof module29))) throw new TypeError('defaultLayout must be null or a Layout');

    if (null !== e) {
      if (0 > e.span) throw new Error('defaultLayout must have constant span');
      if (undefined === e.property) e = e.replicate('content');
    }

    var y = -1;
    if (e && 0 <= (y = e.span) && h) y += u.layout.span;
    (c = t.call(this, y, o) || this).discriminator = u;
    c.usesPrefixDiscriminator = h;
    c.defaultLayout = e;
    c.registry = {};
    var l = c.defaultGetSourceVariant.bind(c);

    c.getSourceVariant = function (t) {
      return l(t);
    };

    c.configGetSourceVariant = function (t) {
      l = t.bind(this);
    };

    return c;
  }

  n(e, t);

  e.prototype.getSpan = function (t, n) {
    if (0 <= this.span) return this.span;
    if (undefined === n) n = 0;
    var e = this.getVariant(t, n);
    if (!e) throw new Error('unable to determine span for unrecognized variant');
    return e.getSpan(t, n);
  };

  e.prototype.defaultGetSourceVariant = function (t) {
    if (Object.prototype.hasOwnProperty.call(t, this.discriminator.property)) {
      if (this.defaultLayout && this.defaultLayout.property && Object.prototype.hasOwnProperty.call(t, this.defaultLayout.property)) return;
      if ((e = this.registry[t[this.discriminator.property]]) && (!e.layout || (e.property && Object.prototype.hasOwnProperty.call(t, e.property)))) return e;
    } else
      for (var n in this.registry) {
        var e;
        if ((e = this.registry[n]).property && Object.prototype.hasOwnProperty.call(t, e.property)) return e;
      }

    throw new Error('unable to infer src variant');
  };

  e.prototype.decode = function (t, n) {
    var e;
    if (undefined === n) n = 0;
    var o = this.discriminator,
      i = o.decode(t, n),
      u = this.registry[i];

    if (undefined === u) {
      var s = this.defaultLayout,
        c = 0;
      if (this.usesPrefixDiscriminator) c = o.layout.span;
      (e = this.makeDestinationObject())[o.property] = i;
      e[s.property] = s.decode(t, n + c);
    } else e = u.decode(t, n);

    return e;
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var o = this.getSourceVariant(t);

    if (undefined === o) {
      var i = this.discriminator,
        u = this.defaultLayout,
        s = 0;
      if (this.usesPrefixDiscriminator) s = i.layout.span;
      i.encode(t[i.property], n, e);
      return s + u.encode(t[u.property], n, e + s);
    }

    return o.encode(t, n, e);
  };

  e.prototype.addVariant = function (t, n, e) {
    var o = new P(this, t, n, e);
    this.registry[t] = o;
    return o;
  };

  e.prototype.getVariant = function (t, n) {
    var e;

    if (t instanceof Uint8Array) {
      if (undefined === n) n = 0;
      e = this.discriminator.decode(t, n);
    } else e = t;

    return this.registry[e];
  };

  return e;
})(module29);

exports.Union = _;

var P = (function (t) {
  function e(n, e, o, u) {
    var s = this;
    if (!(n instanceof _)) throw new TypeError('union must be a Union');
    if (!Number.isInteger(e) || 0 > e) throw new TypeError('variant must be a (non-negative) integer');

    if (('string' == typeof o && undefined === u && ((u = o), (o = null)), o)) {
      if (!(o instanceof module29)) throw new TypeError('layout must be a Layout');
      if (null !== n.defaultLayout && 0 <= o.span && o.span > n.defaultLayout.span) throw new Error('variant span exceeds span of containing union');
      if ('string' != typeof u) throw new TypeError('variant must have a String property');
    }

    var c = n.span;
    if (0 > n.span && 0 <= (c = o ? o.span : 0) && n.usesPrefixDiscriminator) c += n.discriminator.layout.span;
    (s = t.call(this, c, u) || this).union = n;
    s.variant = e;
    s.layout = o || null;
    return s;
  }

  n(e, t);

  e.prototype.getSpan = function (t, n) {
    if (0 <= this.span) return this.span;
    if (undefined === n) n = 0;
    var e = 0;
    if (this.union.usesPrefixDiscriminator) e = this.union.discriminator.layout.span;
    var o = 0;
    if (this.layout) o = this.layout.getSpan(t, n + e);
    return e + o;
  };

  e.prototype.decode = function (t, n) {
    var e = this.makeDestinationObject();
    if ((undefined === n && (n = 0), this !== this.union.getVariant(t, n))) throw new Error('variant mismatch');
    var o = 0;
    if (this.union.usesPrefixDiscriminator) o = this.union.discriminator.layout.span;
    var i = this.property;
    if (this.layout) e[i] = this.layout.decode(t, n + o);
    else if (i) e[i] = true;
    else if (this.union.usesPrefixDiscriminator) e[this.union.discriminator.property] = this.variant;
    return e;
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var o = 0;
    if (this.union.usesPrefixDiscriminator) o = this.union.discriminator.layout.span;
    var i = this.property;
    if (this.layout && !Object.prototype.hasOwnProperty.call(t, i)) throw new TypeError('variant lacks property ' + i);
    this.union.discriminator.encode(this.variant, n, e);
    var u = o;
    if (this.layout && (this.layout.encode(t[i], n, e + o), (u += this.layout.getSpan(n, e + o)), 0 <= this.union.span && u > this.union.span))
      throw new Error('encoded variant overruns containing union');
    return u;
  };

  e.prototype.fromArray = function (t) {
    if (this.layout) return this.layout.fromArray(t);
  };

  return e;
})(module29);

function j(t) {
  if (0 > t) t += 4294967296;
  return t;
}

exports.VariantLayout = P;

var C = (function (t) {
  function e(n, e, o) {
    var i = this;
    if (!(n instanceof f || n instanceof d)) throw new TypeError('word must be a UInt or UIntBE layout');
    if (('string' == typeof e && undefined === o && ((o = e), (e = false)), 4 < n.span)) throw new RangeError('word cannot exceed 32 bits');
    (i = t.call(this, n.span, o) || this).word = n;
    i.msb = !!e;
    i.fields = [];
    var u = 0;

    i._packedSetValue = function (t) {
      u = j(t);
      return this;
    };

    i._packedGetValue = function () {
      return u;
    };

    return i;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    var e = this.makeDestinationObject();
    if (undefined === n) n = 0;
    var o = this.word.decode(t, n);

    this._packedSetValue(o);

    for (var i = 0, u = this.fields; i < u.length; i++) {
      var s = u[i];
      if (undefined !== s.property) e[s.property] = s.decode(o);
    }

    return e;
  };

  e.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    var o = this.word.decode(n, e);

    this._packedSetValue(o);

    for (var i = 0, u = this.fields; i < u.length; i++) {
      var s = u[i];

      if (undefined !== s.property) {
        var c = t[s.property];
        if (undefined !== c) s.encode(c);
      }
    }

    return this.word.encode(this._packedGetValue(), n, e);
  };

  e.prototype.addField = function (t, n) {
    var e = new V(this, t, n);
    this.fields.push(e);
    return e;
  };

  e.prototype.addBoolean = function (t) {
    var n = new A(this, t);
    this.fields.push(n);
    return n;
  };

  e.prototype.fieldFor = function (t) {
    if ('string' != typeof t) throw new TypeError('property must be string');

    for (var n = 0, e = this.fields; n < e.length; n++) {
      var o = e[n];
      if (o.property === t) return o;
    }
  };

  return e;
})(module29);

exports.BitStructure = C;

var V = (function () {
  function t(t, n, e) {
    if (!(t instanceof C)) throw new TypeError('container must be a BitStructure');
    if (!Number.isInteger(n) || 0 >= n) throw new TypeError('bits must be positive integer');
    var o = 8 * t.span,
      i = t.fields.reduce(function (t, n) {
        return t + n.bits;
      }, 0);
    if (n + i > o) throw new Error('bits too long for span remainder (' + (o - i) + ' of ' + o + ' remain)');
    this.container = t;
    this.bits = n;
    this.valueMask = (1 << n) - 1;
    if (32 === n) this.valueMask = 4294967295;
    this.start = i;
    if (this.container.msb) this.start = o - i - n;
    this.wordMask = j(this.valueMask << this.start);
    this.property = e;
  }

  t.prototype.decode = function (t, n) {
    return j(this.container._packedGetValue() & this.wordMask) >>> this.start;
  };

  t.prototype.encode = function (t) {
    if (!Number.isInteger(t) || t !== j(t & this.valueMask)) throw new TypeError(u('BitField.encode', this) + ' value must be integer not exceeding ' + this.valueMask);

    var n = this.container._packedGetValue(),
      e = j(t << this.start);

    this.container._packedSetValue(j(n & ~this.wordMask) | e);
  };

  return t;
})();

exports.BitField = V;

var A = (function (t) {
  function e(n, e) {
    return t.call(this, n, 1, e) || this;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    return !!V.prototype.decode.call(this, t, n);
  };

  e.prototype.encode = function (t) {
    if ('boolean' == typeof t) t = +t;
    return V.prototype.encode.call(this, t);
  };

  return e;
})(V);

exports.Boolean = A;

var N = (function (t) {
  function e(n, e) {
    var o = this;
    if (!((n instanceof s && n.isCount()) || (Number.isInteger(n) && 0 <= n))) throw new TypeError('length must be positive integer or an unsigned integer ExternalLayout');
    var i = -1;
    if (!(n instanceof s)) i = n;
    (o = t.call(this, i, e) || this).length = n;
    return o;
  }

  n(e, t);

  e.prototype.getSpan = function (t, n) {
    var e = this.span;
    if (0 > e) e = this.length.decode(t, n);
    return e;
  };

  e.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = this.span;
    if (0 > e) e = this.length.decode(t, n);
    return o(t).slice(n, n + e);
  };

  e.prototype.encode = function (t, n, e) {
    var i = this.length;
    if ((this.length instanceof s && (i = t.length), !(t instanceof Uint8Array && i === t.length)))
      throw new TypeError(u('Blob.encode', this) + ' requires (length ' + i + ') Uint8Array as src');
    if (e + i > n.length) throw new RangeError('encoding overruns Uint8Array');
    var c = o(t);
    o(n).write(c.toString('hex'), e, i, 'hex');
    if (this.length instanceof s) this.length.encode(i, n, e);
    return i;
  };

  return e;
})(module29);

exports.Blob = N;

var F = (function (t) {
  function i(n) {
    return t.call(this, -1, n) || this;
  }

  n(i, t);

  i.prototype.getSpan = function (t, n) {
    e(t);
    if (undefined === n) n = 0;

    for (var o = n; o < t.length && 0 !== t[o]; ) o += 1;

    return 1 + o - n;
  };

  i.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = this.getSpan(t, n);
    return o(t)
      .slice(n, n + e - 1)
      .toString('utf-8');
  };

  i.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    if ('string' != typeof t) t = t.toString();

    var module947 = require('./947').Buffer.from(t, 'utf8'),
      u = module947.length;

    if (e + u > n.length) throw new RangeError('encoding overruns Buffer');
    var s = o(n);
    module947.copy(s, e);
    s[e + u] = 0;
    return u + 1;
  };

  return i;
})(module29);

exports.CString = F;

var M = (function (t) {
  function i(n, e) {
    var o = this;
    if (('string' == typeof n && undefined === e && ((e = n), (n = undefined)), undefined === n)) n = -1;
    else if (!Number.isInteger(n)) throw new TypeError('maxSpan must be an integer');
    (o = t.call(this, -1, e) || this).maxSpan = n;
    return o;
  }

  n(i, t);

  i.prototype.getSpan = function (t, n) {
    e(t);
    if (undefined === n) n = 0;
    return t.length - n;
  };

  i.prototype.decode = function (t, n) {
    if (undefined === n) n = 0;
    var e = this.getSpan(t, n);
    if (0 <= this.maxSpan && this.maxSpan < e) throw new RangeError('text length exceeds maxSpan');
    return o(t)
      .slice(n, n + e)
      .toString('utf-8');
  };

  i.prototype.encode = function (t, n, e) {
    if (undefined === e) e = 0;
    if ('string' != typeof t) t = t.toString();

    var module947 = require('./947').Buffer.from(t, 'utf8'),
      u = module947.length;

    if (0 <= this.maxSpan && this.maxSpan < u) throw new RangeError('text length exceeds maxSpan');
    if (e + u > n.length) throw new RangeError('encoding overruns Buffer');
    module947.copy(o(n), e);
    return u;
  };

  return i;
})(module29);

exports.UTF8 = M;

var R = (function (t) {
  function e(n, e) {
    var o = t.call(this, 0, e) || this;
    o.value = n;
    return o;
  }

  n(e, t);

  e.prototype.decode = function (t, n) {
    return this.value;
  };

  e.prototype.encode = function (t, n, e) {
    return 0;
  };

  return e;
})(module29);

exports.Constant = R;

exports.greedy = function (t, n) {
  return new c(t, n);
};

exports.offset = function (t, n, e) {
  return new p(t, n, e);
};

exports.u8 = function (t) {
  return new f(1, t);
};

exports.u16 = function (t) {
  return new f(2, t);
};

exports.u24 = function (t) {
  return new f(3, t);
};

exports.u32 = function (t) {
  return new f(4, t);
};

exports.u40 = function (t) {
  return new f(5, t);
};

exports.u48 = function (t) {
  return new f(6, t);
};

exports.nu64 = function (t) {
  return new b(t);
};

exports.u16be = function (t) {
  return new d(2, t);
};

exports.u24be = function (t) {
  return new d(3, t);
};

exports.u32be = function (t) {
  return new d(4, t);
};

exports.u40be = function (t) {
  return new d(5, t);
};

exports.u48be = function (t) {
  return new d(6, t);
};

exports.nu64be = function (t) {
  return new E(t);
};

exports.s8 = function (t) {
  return new h(1, t);
};

exports.s16 = function (t) {
  return new h(2, t);
};

exports.s24 = function (t) {
  return new h(3, t);
};

exports.s32 = function (t) {
  return new h(4, t);
};

exports.s40 = function (t) {
  return new h(5, t);
};

exports.s48 = function (t) {
  return new h(6, t);
};

exports.ns64 = function (t) {
  return new L(t);
};

exports.s16be = function (t) {
  return new y(2, t);
};

exports.s24be = function (t) {
  return new y(3, t);
};

exports.s32be = function (t) {
  return new y(4, t);
};

exports.s40be = function (t) {
  return new y(5, t);
};

exports.s48be = function (t) {
  return new y(6, t);
};

exports.ns64be = function (t) {
  return new S(t);
};

exports.f32 = function (t) {
  return new I(t);
};

exports.f32be = function (t) {
  return new B(t);
};

exports.f64 = function (t) {
  return new U(t);
};

exports.f64be = function (t) {
  return new x(t);
};

exports.struct = function (t, n, e) {
  return new T(t, n, e);
};

exports.bits = function (t, n, e) {
  return new C(t, n, e);
};

exports.seq = function (t, n, e) {
  return new O(t, n, e);
};

exports.union = function (t, n, e) {
  return new _(t, n, e);
};

exports.unionLayoutDiscriminator = function (t, n) {
  return new k(t, n);
};

exports.blob = function (t, n) {
  return new N(t, n);
};

exports.cstr = function (t) {
  return new F(t);
};

exports.utf8 = function (t, n) {
  return new M(t, n);
};

exports.constant = function (t, n) {
  return new R(t, n);
};
