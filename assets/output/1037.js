var module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7'));

exports.METADATA_PREFIX = 'metadata';
var n;
exports.METADATA_PROGRAM = 'metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s';
exports.MetadataKey = n;

(function (t) {
  t[(t.Uninitialized = 0)] = 'Uninitialized';
  t[(t.MetadataV1 = 4)] = 'MetadataV1';
  t[(t.EditionV1 = 1)] = 'EditionV1';
  t[(t.MasterEditionV1 = 2)] = 'MasterEditionV1';
  t[(t.MasterEditionV2 = 6)] = 'MasterEditionV2';
  t[(t.EditionMarker = 7)] = 'EditionMarker';
})(n || (exports.MetadataKey = n = {}));

var u = module8.default(function t(n) {
  module7.default(this, t);
  this.address = n.address;
  this.verified = n.verified;
  this.share = n.share;
});
exports.Creator = u;
var o = module8.default(function t(u) {
  var o;
  module7.default(this, t);
  this.key = n.MetadataV1;
  this.updateAuthority = u.updateAuthority;
  this.mint = u.mint;
  this.data = u.data;
  this.primarySaleHappened = u.primarySaleHappened;
  this.isMutable = u.isMutable;
  this.editionNonce = null != (o = u.editionNonce) ? o : null;
});
exports.Metadata = o;
var l = module8.default(function t(n) {
  module7.default(this, t);
  this.name = n.name;
  this.symbol = n.symbol;
  this.uri = n.uri;
  this.sellerFeeBasisPoints = n.sellerFeeBasisPoints;
  this.creators = n.creators;
});
exports.Data = l;
var M = new Map([
  [
    l,
    {
      kind: 'struct',
      fields: [
        ['name', 'string'],
        ['symbol', 'string'],
        ['uri', 'string'],
        ['sellerFeeBasisPoints', 'u16'],
        [
          'creators',
          {
            kind: 'option',
            type: [u],
          },
        ],
      ],
    },
  ],
  [
    o,
    {
      kind: 'struct',
      fields: [
        ['key', 'u8'],
        ['updateAuthority', 'pubkey'],
        ['mint', 'pubkey'],
        ['data', l],
        ['primarySaleHappened', 'u8'],
        ['isMutable', 'u8'],
      ],
    },
  ],
  [
    u,
    {
      kind: 'struct',
      fields: [
        ['address', 'pubkey'],
        ['verified', 'u8'],
        ['share', 'u8'],
      ],
    },
  ],
]);
exports.METADATA_SCHEMA = M;
