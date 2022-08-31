var module1036 = function () {
  require('./1036').BinaryReader.prototype.readPubkey = function () {
    var t = this.readFixedArray(32);
    return new (require('./938').PublicKey)(t);
  };

  require('./1036').BinaryWriter.prototype.writePubkey = function (t) {
    this.writeFixedArray(t.toBuffer());
  };
};

exports.extendBorsh = module1036;
module1036();
