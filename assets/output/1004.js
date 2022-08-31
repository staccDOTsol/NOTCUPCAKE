function e(e, r) {
  var n = ('undefined' != typeof Symbol && e[Symbol.iterator]) || e['@@iterator'];
  if (n) return (n = n.call(e)).next.bind(n);

  if (Array.isArray(e) || (n = t(e)) || (r && e && 'number' == typeof e.length)) {
    if (n) e = n;
    var i = 0;
    return function () {
      return i >= e.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: e[i++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function t(e, t) {
  if (e) {
    if ('string' == typeof e) return r(e, t);
    var n = Object.prototype.toString.call(e).slice(8, -1);
    if ('Object' === n && e.constructor) n = e.constructor.name;
    return 'Map' === n || 'Set' === n ? Array.from(e) : 'Arguments' === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n) ? r(e, t) : undefined;
  }
}

function r(e, t) {
  if (null == t || t > e.length) t = e.length;

  for (var r = 0, n = new Array(t); r < t; r++) n[r] = e[r];

  return n;
}

function n() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var i =
    (this && this.__createBinding) ||
    (Object.create
      ? function (e, t, r, n) {
          if (undefined === n) n = r;
          Object.defineProperty(e, n, {
            enumerable: true,
            get: function () {
              return t[r];
            },
          });
        }
      : function (e, t, r, n) {
          if (undefined === n) n = r;
          e[n] = t[r];
        }),
  f =
    (this && this.__setModuleDefault) ||
    (Object.create
      ? function (e, t) {
          Object.defineProperty(e, 'default', {
            enumerable: true,
            value: t,
          });
        }
      : function (e, t) {
          e.default = t;
        }),
  o =
    (this && this.__decorate) ||
    function (e, t, r, n) {
      var i,
        f = arguments.length,
        o = f < 3 ? t : null === n ? (n = Object.getOwnPropertyDescriptor(t, r)) : n;
      if ('object' == typeof Reflect && 'function' == typeof Reflect.decorate) o = Reflect.decorate(e, t, r, n);
      else for (var u = e.length - 1; u >= 0; u--) (i = e[u]) && (o = (f < 3 ? i(o) : f > 3 ? i(t, r, o) : i(t, r)) || o);
      if (f > 3 && o) Object.defineProperty(t, r, o);
      return o;
    },
  u =
    (this && this.__importStar) ||
    function (e) {
      if (e && e.__esModule) return e;
      var t = {};
      if (null != e) for (var r in e) 'default' !== r && Object.hasOwnProperty.call(e, r) && i(t, e, r);
      f(t, e);
      return t;
    },
  s =
    (this && this.__importDefault) ||
    function (e) {
      return e && e.__esModule
        ? e
        : {
            default: e,
          };
    };

var module940 = s(require('./940')),
  module941 = s(require('./941')),
  module1005 = u(require('./1005')),
  d = new ('function' != typeof globals.TextDecoder ? module1005.TextDecoder : globals.TextDecoder)('utf-8', {
    fatal: true,
  });

exports.baseEncode = function (e) {
  if ('string' == typeof e) e = Buffer.from(e, 'utf8');
  return module941.default.encode(Buffer.from(e));
};

exports.baseDecode = function (e) {
  return Buffer.from(module941.default.decode(e));
};

var y = 1024,
  module59 = (function (e) {
    require('./10')(f, e);

    var t = f,
      r = n(),
      module12 = function () {
        var e,
          module15 = require('./15')(t);

        if (r) {
          var module15 = require('./15')(this).constructor;

          e = Reflect.construct(module15, arguments, module15);
        } else e = module15.apply(this, arguments);

        return require('./12')(this, e);
      };

    function f(e) {
      var t;

      require('./7')(this, f);

      (t = module12.call(this, e)).fieldPath = [];
      t.originalMessage = e;
      return t;
    }

    require('./8')(f, [
      {
        key: 'addToFieldPath',
        value: function (e) {
          this.fieldPath.splice(0, 0, e);
          this.message = this.originalMessage + ': ' + this.fieldPath.join('.');
        },
      },
    ]);

    return f;
  })(require('./59')(Error));

exports.BorshError = module59;

var module8 = (function () {
  function t() {
    require('./7')(this, t);

    this.buf = Buffer.alloc(y);
    this.length = 0;
  }

  require('./8')(t, [
    {
      key: 'maybeResize',
      value: function () {
        if (this.buf.length < 16 + this.length) this.buf = Buffer.concat([this.buf, Buffer.alloc(y)]);
      },
    },
    {
      key: 'writeU8',
      value: function (e) {
        this.maybeResize();
        this.buf.writeUInt8(e, this.length);
        this.length += 1;
      },
    },
    {
      key: 'writeU16',
      value: function (e) {
        this.maybeResize();
        this.buf.writeUInt16LE(e, this.length);
        this.length += 2;
      },
    },
    {
      key: 'writeU32',
      value: function (e) {
        this.maybeResize();
        this.buf.writeUInt32LE(e, this.length);
        this.length += 4;
      },
    },
    {
      key: 'writeU64',
      value: function (e) {
        this.maybeResize();
        this.writeBuffer(Buffer.from(new module940.default(e).toArray('le', 8)));
      },
    },
    {
      key: 'writeU128',
      value: function (e) {
        this.maybeResize();
        this.writeBuffer(Buffer.from(new module940.default(e).toArray('le', 16)));
      },
    },
    {
      key: 'writeU256',
      value: function (e) {
        this.maybeResize();
        this.writeBuffer(Buffer.from(new module940.default(e).toArray('le', 32)));
      },
    },
    {
      key: 'writeU512',
      value: function (e) {
        this.maybeResize();
        this.writeBuffer(Buffer.from(new module940.default(e).toArray('le', 64)));
      },
    },
    {
      key: 'writeBuffer',
      value: function (e) {
        this.buf = Buffer.concat([Buffer.from(this.buf.subarray(0, this.length)), e, Buffer.alloc(y)]);
        this.length += e.length;
      },
    },
    {
      key: 'writeString',
      value: function (e) {
        this.maybeResize();
        var t = Buffer.from(e, 'utf8');
        this.writeU32(t.length);
        this.writeBuffer(t);
      },
    },
    {
      key: 'writeFixedArray',
      value: function (e) {
        this.writeBuffer(Buffer.from(e));
      },
    },
    {
      key: 'writeArray',
      value: function (t, r) {
        this.maybeResize();
        this.writeU32(t.length);

        for (var n, i = e(t); !(n = i()).done; ) {
          var f = n.value;
          this.maybeResize();
          r(f);
        }
      },
    },
    {
      key: 'toArray',
      value: function () {
        return this.buf.subarray(0, this.length);
      },
    },
  ]);

  return t;
})();

function p(e, t, r) {
  var n = r.value;

  r.value = function (...args) {
    try {
      return n.apply(this, args);
    } catch (e) {
      if (e instanceof RangeError) {
        var i = e.code;
        if (['ERR_BUFFER_OUT_OF_BOUNDS', 'ERR_OUT_OF_RANGE'].indexOf(i) >= 0) throw new module59('Reached the end of buffer when deserializing');
      }

      throw e;
    }
  };
}

exports.BinaryWriter = module8;

var module8 = (function () {
  function e(t) {
    require('./7')(this, e);

    this.buf = t;
    this.offset = 0;
  }

  require('./8')(e, [
    {
      key: 'readU8',
      value: function () {
        var e = this.buf.readUInt8(this.offset);
        this.offset += 1;
        return e;
      },
    },
    {
      key: 'readU16',
      value: function () {
        var e = this.buf.readUInt16LE(this.offset);
        this.offset += 2;
        return e;
      },
    },
    {
      key: 'readU32',
      value: function () {
        var e = this.buf.readUInt32LE(this.offset);
        this.offset += 4;
        return e;
      },
    },
    {
      key: 'readU64',
      value: function () {
        var e = this.readBuffer(8);
        return new module940.default(e, 'le');
      },
    },
    {
      key: 'readU128',
      value: function () {
        var e = this.readBuffer(16);
        return new module940.default(e, 'le');
      },
    },
    {
      key: 'readU256',
      value: function () {
        var e = this.readBuffer(32);
        return new module940.default(e, 'le');
      },
    },
    {
      key: 'readU512',
      value: function () {
        var e = this.readBuffer(64);
        return new module940.default(e, 'le');
      },
    },
    {
      key: 'readBuffer',
      value: function (e) {
        if (this.offset + e > this.buf.length) throw new module59('Expected buffer length ' + e + " isn't within bounds");
        var t = this.buf.slice(this.offset, this.offset + e);
        this.offset += e;
        return t;
      },
    },
    {
      key: 'readString',
      value: function () {
        var e = this.readU32(),
          t = this.readBuffer(e);

        try {
          return d.decode(t);
        } catch (e) {
          throw new module59('Error decoding UTF-8 string: ' + e);
        }
      },
    },
    {
      key: 'readFixedArray',
      value: function (e) {
        return new Uint8Array(this.readBuffer(e));
      },
    },
    {
      key: 'readArray',
      value: function (e) {
        for (var t = this.readU32(), r = Array(), n = 0; n < t; ++n) r.push(e());

        return r;
      },
    },
  ]);

  return e;
})();

function m(e) {
  return e.charAt(0).toUpperCase() + e.slice(1);
}

function U(e, t, r, n, i) {
  try {
    if ('string' == typeof n) i['write' + m(n)](r);
    else if (n instanceof Array) {
      if ('number' == typeof n[0]) {
        if (r.length !== n[0]) throw new module59('Expecting byte array of length ' + n[0] + ', but got ' + r.length + ' bytes');
        i.writeFixedArray(r);
      } else
        i.writeArray(r, function (r) {
          U(e, t, r, n[0], i);
        });
    } else if (undefined !== n.kind)
      switch (n.kind) {
        case 'option':
          if (null === r || undefined === r) i.writeU8(0);
          else {
            i.writeU8(1);
            U(e, t, r, n.type, i);
          }
          break;

        default:
          throw new module59('FieldType ' + n + ' unrecognized');
      }
    else k(e, r, i);
  } catch (e) {
    throw (e instanceof module59 && e.addToFieldPath(t), e);
  }
}

function k(e, t, r) {
  var n = e.get(t.constructor);
  if (!n) throw new module59('Class ' + t.constructor.name + ' is missing in schema');
  if ('struct' === n.kind)
    n.fields.map(function (n) {
      var module23 = require('./23')(n, 2),
        f = module23[0],
        o = module23[1];

      U(e, f, t[f], o, r);
    });
  else {
    if ('enum' !== n.kind) throw new module59('Unexpected schema kind: ' + n.kind + ' for ' + t.constructor.name);

    for (var i = t[n.field], f = 0; f < n.values.length; ++f) {
      var module23 = require('./23')(n.values[f], 2),
        u = module23[0],
        s = module23[1];

      if (u === i) {
        r.writeU8(f);
        U(e, u, t[u], s, r);
        break;
      }
    }
  }
}

function B(e, t, r, n) {
  try {
    return 'string' == typeof r
      ? n['read' + m(r)]()
      : r instanceof Array
      ? 'number' == typeof r[0]
        ? n.readFixedArray(r[0])
        : n.readArray(function () {
            return B(e, t, r[0], n);
          })
      : 'option' === r.kind
      ? n.readU8()
        ? B(e, t, r.type, n)
        : undefined
      : A(e, r, n);
  } catch (e) {
    throw (e instanceof module59 && e.addToFieldPath(t), e);
  }
}

function A(t, r, n) {
  var i = t.get(r);
  if (!i) throw new module59('Class ' + r.name + ' is missing in schema');

  if ('struct' === i.kind) {
    for (var f, o = {}, u = e(t.get(r).fields); !(f = u()).done; ) {
      var s = f.value,
        module23 = require('./23')(s, 2),
        c = module23[0],
        h = module23[1];

      o[c] = B(t, c, h, n);
    }

    return new r(o);
  }

  if ('enum' === i.kind) {
    var d = n.readU8();
    if (d >= i.values.length) throw new module59('Enum index: ' + d + ' is out of range');

    var module23 = require('./23')(i.values[d], 2),
      w = module23[0],
      p = B(t, w, module23[1], n);

    return new r(require('./256')({}, w, p));
  }

  throw new module59('Unexpected schema kind: ' + i.kind + ' for ' + r.constructor.name);
}

o([p], module8.prototype, 'readU8', null);
o([p], module8.prototype, 'readU16', null);
o([p], module8.prototype, 'readU32', null);
o([p], module8.prototype, 'readU64', null);
o([p], module8.prototype, 'readU128', null);
o([p], module8.prototype, 'readU256', null);
o([p], module8.prototype, 'readU512', null);
o([p], module8.prototype, 'readString', null);
o([p], module8.prototype, 'readFixedArray', null);
o([p], module8.prototype, 'readArray', null);
exports.BinaryReader = module8;

exports.serialize = function (e, t) {
  var r = new module8();
  k(e, t, r);
  return r.toArray();
};

exports.deserialize = function (e, t, r) {
  var n = new module8(r),
    i = A(e, t, n);
  if (n.offset < r.length) throw new module59('Unexpected ' + (r.length - n.offset) + ' bytes after deserialized data');
  return i;
};

exports.deserializeUnchecked = function (e, t, r) {
  return A(e, t, new module8(r));
};
