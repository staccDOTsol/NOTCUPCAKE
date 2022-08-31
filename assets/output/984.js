function t() {
  this.pending = null;
  this.pendingTotal = 0;
  this.blockSize = this.constructor.blockSize;
  this.outSize = this.constructor.outSize;
  this.hmacStrength = this.constructor.hmacStrength;
  this.padLength = this.constructor.padLength / 8;
  this.endian = 'big';
  this._delta8 = this.blockSize / 8;
  this._delta32 = this.blockSize / 32;
}

exports.BlockHash = t;

t.prototype.update = function (t, i) {
  if (
    ((t = require('./983').toArray(t, i)),
    this.pending ? (this.pending = this.pending.concat(t)) : (this.pending = t),
    (this.pendingTotal += t.length),
    this.pending.length >= this._delta8)
  ) {
    var n = (t = this.pending).length % this._delta8;
    this.pending = t.slice(t.length - n, t.length);
    if (0 === this.pending.length) this.pending = null;
    t = require('./983').join32(t, 0, t.length - n, this.endian);

    for (var h = 0; h < t.length; h += this._delta32) this._update(t, h, h + this._delta32);
  }

  return this;
};

t.prototype.digest = function (t) {
  this.update(this._pad());

  require('./971')(null === this.pending);

  return this._digest(t);
};

t.prototype._pad = function () {
  var t = this.pendingTotal,
    i = this._delta8,
    n = i - ((t + this.padLength) % i),
    h = new Array(n + this.padLength);
  h[0] = 128;

  for (var s = 1; s < n; s++) h[s] = 0;

  if (((t <<= 3), 'big' === this.endian)) {
    for (var o = 8; o < this.padLength; o++) h[s++] = 0;

    h[s++] = 0;
    h[s++] = 0;
    h[s++] = 0;
    h[s++] = 0;
    h[s++] = (t >>> 24) & 255;
    h[s++] = (t >>> 16) & 255;
    h[s++] = (t >>> 8) & 255;
    h[s++] = 255 & t;
  } else
    for (
      h[s++] = 255 & t, h[s++] = (t >>> 8) & 255, h[s++] = (t >>> 16) & 255, h[s++] = (t >>> 24) & 255, h[s++] = 0, h[s++] = 0, h[s++] = 0, h[s++] = 0, o = 8;
      o < this.padLength;
      o++
    )
      h[s++] = 0;

  return h;
};
