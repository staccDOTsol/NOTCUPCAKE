var t;

function r(t) {
  this.rand = t;
}

if (
  ((module.exports = function (e) {
    if (!t) t = new r(null);
    return t.generate(e);
  }),
  (module.exports.Rand = r),
  (r.prototype.generate = function (t) {
    return this._rand(t);
  }),
  (r.prototype._rand = function (t) {
    if (this.rand.getBytes) return this.rand.getBytes(t);

    for (var r = new Uint8Array(t), e = 0; e < r.length; e++) r[e] = this.rand.getByte();

    return r;
  }),
  'object' == typeof self)
)
  self.crypto && self.crypto.getRandomValues
    ? (r.prototype._rand = function (t) {
        var r = new Uint8Array(t);
        self.crypto.getRandomValues(r);
        return r;
      })
    : self.msCrypto && self.msCrypto.getRandomValues
    ? (r.prototype._rand = function (t) {
        var r = new Uint8Array(t);
        self.msCrypto.getRandomValues(r);
        return r;
      })
    : 'object' == typeof window &&
      (r.prototype._rand = function () {
        throw new Error('Not implemented yet');
      });
else
  try {
    var e = require(d[0]);

    if ('function' != typeof e.randomBytes) throw new Error('Not supported');

    r.prototype._rand = function (t) {
      return e.randomBytes(t);
    };
  } catch (t) {}
