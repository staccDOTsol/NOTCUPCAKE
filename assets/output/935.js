exports.getSolanaMetadataAddress = A;

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76'));

require('./936');

var React = v(require('react')),
  ReactNative = require('react-native'),
  module938 = v(require('./938'));

require('./1011');

var module1030 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1030')),
  module1031 = v(require('./1031')),
  module1034 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1034'));

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (p = function (t) {
    return t ? u : n;
  })(t);
}

function v(t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var u = p(n);
  if (u && u.has(t)) return u.get(t);
  var l = {},
    o = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var c in t)
    if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
      var s = o ? Object.getOwnPropertyDescriptor(t, c) : null;
      if (s && (s.get || s.set)) Object.defineProperty(l, c, s);
      else l[c] = t[c];
    }

  l.default = t;
  if (u) u.set(t, l);
  return l;
}

require('./1035').extendBorsh();

exports.sanitizeMetaStrings = function (t) {
  return t.replace(/\0/g, '');
};

var module1037 = new module938.PublicKey(require('./1037').METADATA_PROGRAM).toBuffer(),
  module1037 = new module1031.TextEncoder().encode(require('./1037').METADATA_PREFIX),
  module1037 = function (t) {
    return module76.default.async(
      function (n) {
        for (;;)
          switch ((n.prev = n.next)) {
            case 0:
              return n.abrupt('return', require('./1036').deserializeUnchecked(require('./1037').METADATA_SCHEMA, require('./1037').Metadata, t));

            case 1:
            case 'end':
              return n.stop();
          }
      },
      null,
      null,
      null,
      Promise
    );
  };

function A(t) {
  var React;
  return module76.default.async(
    function (l) {
      for (;;)
        switch ((l.prev = l.next)) {
          case 0:
            React = new module938.PublicKey(require('./1037').METADATA_PROGRAM);
            l.next = 3;
            return module76.default.awrap(module938.PublicKey.findProgramAddress([module1037, module1037, t.toBuffer()], React));

          case 3:
            return l.abrupt('return', l.sent[0]);

          case 4:
          case 'end':
            return l.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
}

exports.decodeTokenMetadata = module1037;
ReactNative.StyleSheet.create({
  tokensList: {
    flex: 1,
    display: 'flex',
    flexDirection: 'row',
  },
});

var module678 = function (s) {
  var p = s.navigation,
    module552 = require('./552').useGlobals(),
    y = module552.company,
    w = module552.bakeryInfo,
    module678 = React.useState(),
    x = module23.default(module678, 2),
    b = x[0],
    h = x[1];

  React.useEffect(
    function () {
      var module23, React, ReactNative, s, module1034, p, module552, y;
      module76.default
        .async(
          function (base64js) {
            for (;;)
              switch ((base64js.prev = base64js.next)) {
                case 0:
                  module23 = new module938.Connection('https://trashpandas.rpcpool.com/896a4208af08c479e8cf62e109f1');
                  base64js.next = 3;
                  return module76.default.awrap(
                    module23.getParsedTokenAccountsByOwner(new module938.PublicKey(w.authority), {
                      programId: require('base64-js').TOKEN_PROGRAM_ID,
                    })
                  );

                case 3:
                  React = base64js.sent;
                  ReactNative = React.value;
                  s = ReactNative.filter(function (t) {
                    var n,
                      u,
                      l,
                      o,
                      c,
                      s,
                      f,
                      p,
                      v,
                      y,
                      w =
                        null == (n = t.account)
                          ? undefined
                          : null == (u = n.data)
                          ? undefined
                          : null == (l = u.parsed)
                          ? undefined
                          : null == (o = l.info)
                          ? undefined
                          : null == (c = o.tokenAmount)
                          ? undefined
                          : c.uiAmount;
                    return (
                      0 ===
                        (null == (s = t.account)
                          ? undefined
                          : null == (f = s.data)
                          ? undefined
                          : null == (p = f.parsed)
                          ? undefined
                          : null == (v = p.info)
                          ? undefined
                          : null == (y = v.tokenAmount)
                          ? undefined
                          : y.decimals) && w >= 1
                    );
                  }).map(function (t) {
                    var n,
                      u,
                      l,
                      c,
                      s = null == (n = t.account) ? undefined : null == (u = n.data) ? undefined : null == (l = u.parsed) ? undefined : null == (c = l.info) ? undefined : c.mint;
                    return new module938.PublicKey(s);
                  });
                  base64js.next = 8;
                  return module76.default.awrap(Promise.all(null == s ? undefined : s.slice(0, 5e3).map(A)));

                case 8:
                  module1034 = base64js.sent;
                  base64js.next = 11;
                  return module76.default.awrap(
                    Promise.all(
                      module1030.default(module1034, 99, undefined).map(function (n) {
                        return module23.getMultipleAccountsInfo(n);
                      })
                    )
                  );

                case 11:
                  p = base64js.sent[0];
                  base64js.next = 14;
                  return module76.default.awrap(
                    Promise.all(
                      p.map(function (t) {
                        if (null != t && t.data) return module1037(null == t ? undefined : t.data);
                      })
                    )
                  );

                case 14:
                  module552 = base64js.sent;
                  base64js.next = 17;
                  return module76.default.awrap(
                    Promise.all(
                      module552.map(function (t) {
                        var React, ReactNative;
                        return module76.default.async(
                          function (o) {
                            for (;;)
                              switch ((o.prev = o.next)) {
                                case 0:
                                  React = t.data.uri.replace(/\0/g, '');
                                  o.next = 3;
                                  return module76.default.awrap(fetch(React));

                                case 3:
                                  ReactNative = o.sent;
                                  o.next = 6;
                                  return module76.default.awrap(ReactNative.json());

                                case 6:
                                  t.uriData = o.sent;
                                  return o.abrupt('return', t);

                                case 8:
                                case 'end':
                                  return o.stop();
                              }
                          },
                          null,
                          null,
                          null,
                          Promise
                        );
                      })
                    )
                  );

                case 17:
                  y = base64js.sent;
                  return base64js.abrupt('return', y);

                case 19:
                case 'end':
                  return base64js.stop();
              }
          },
          null,
          null,
          null,
          Promise
        )
        .then(function (t) {
          h(t);
        });
    },
    [y]
  );
  return React.default.createElement(
    React.default.Fragment,
    null,
    React.default.createElement(
      require('./678').Button,
      {
        onPress: function () {
          return p.navigate('BakerySprinkles');
        },
      },
      'View Sprinkles'
    ),
    b
      ? b.length > 0
        ? React.default.createElement(ReactNative.FlatList, {
            horizontal: false,
            numColumns: 2,
            data: b,
            renderItem: function (t) {
              var n = t.item;
              return React.default.createElement(module1034.default, {
                navigation: p,
                params: {
                  mint: n.mint,
                  uriData: n.uriData,
                },
              });
            },
            keyExtractor: function (t) {
              return t.mint;
            },
          })
        : React.default.createElement(ReactNative.Text, null, 'No tokens yet, create some at the Mint Screen!')
      : React.default.createElement(require('./678').ActivityIndicator, null)
  );
};

exports.default = module678;
