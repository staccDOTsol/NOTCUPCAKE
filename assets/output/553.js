exports.authenticateBakery = function (n, s) {
  var u;
  return module76.default.async(
    function (l) {
      for (;;)
        switch ((l.prev = l.next)) {
          case 0:
            l.next = 2;
            return module76.default.awrap(
              i('https://mfkvng2kuvwqe3skwdc23pw5ey0lkzdb.lambda-url.us-east-1.on.aws/?name=' + n + '&password=' + s, {
                bakeryName: n,
                bakeryPassword: s,
              })
            );

          case 2:
            u = l.sent;
            return l.abrupt('return', u);

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
};

exports.createBakery = function (s, u, l) {
  var c;
  return module76.default.async(
    function (o) {
      for (;;)
        switch ((o.prev = o.next)) {
          case 0:
            o.next = 2;
            return module76.default.awrap(
              i(n, {
                bakeryName: s,
                password: u,
                secretKey: l,
              })
            );

          case 2:
            c = o.sent;
            return o.abrupt('return', c);

          case 4:
          case 'end':
            return o.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.createSprinkle = function (n, s, u, c, o, p, f, w, y, v, b) {
  var h, k;
  return module76.default.async(
    function (x) {
      for (;;)
        switch ((x.prev = x.next)) {
          case 0:
            h = {
              tagSpec: n.toString(),
              company: s,
              password: u,
              uid: c,
              tagType: o.toString(),
              numClaims: p.toString(),
              perUser: f.toString(),
              minterPays: true === w ? '1' : undefined,
              pricePerMint: v ? v.toString() : undefined,
              tokenMint: y || undefined,
              candyMachine: b || undefined,
            };
            console.warn(JSON.stringify(h));
            x.next = 4;
            return module76.default.awrap(i(l, h));

          case 4:
            k = x.sent;
            return x.abrupt('return', k);

          case 6:
          case 'end':
            return x.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.listBakeries = function () {
  var n;
  return module76.default.async(
    function (s) {
      for (;;)
        switch ((s.prev = s.next)) {
          case 0:
            s.next = 2;
            return module76.default.awrap(p(u));

          case 2:
            n = s.sent;
            return s.abrupt('return', n);

          case 4:
          case 'end':
            return s.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.listSprinkles = function (n) {
  var s;
  return module76.default.async(
    function (u) {
      for (;;)
        switch ((u.prev = u.next)) {
          case 0:
            u.next = 2;
            return module76.default.awrap(p('https://zwamfdnzi5tgdr36sqwsob3vsa0mklrx.lambda-url.us-east-1.on.aws/?company=' + n));

          case 2:
            s = u.sent;
            return u.abrupt('return', s);

          case 4:
          case 'end':
            return u.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.lockSprinkle = function (n, s, u) {
  var l;
  return module76.default.async(
    function (o) {
      for (;;)
        switch ((o.prev = o.next)) {
          case 0:
            o.next = 2;
            return module76.default.awrap(
              i(c, {
                company: n,
                password: s,
                uid: u,
              })
            );

          case 2:
            l = o.sent;
            return o.abrupt('return', l);

          case 4:
          case 'end':
            return o.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.mintToken = function (n, s, u, l, c, p, f, w, y, v, b, h) {
  var k, x, P, z, S;
  return module76.default.async(
    function (q) {
      for (;;)
        switch ((q.prev = q.next)) {
          case 0:
            for (k = [], x = 0; x < y.length; x++)
              k.push({
                trait_type: y[x],
                value: v[x],
              });

            for (P = [], z = 0; z < b.length; z++)
              P.push({
                address: b[z],
                share: h[z],
              });

            console.log(k, P);
            q.next = 7;
            return module76.default.awrap(
              i(o, {
                company: n,
                password: s,
                name: u,
                symbol: l,
                desc: c,
                img: p,
                totalSupply: f,
                basisPoints: w,
                traits: k,
                creators: P,
              })
            );

          case 7:
            S = q.sent;
            return q.abrupt('return', S);

          case 9:
          case 'end':
            return q.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.readSprinkle = function (n, s, u) {
  var l;
  return module76.default.async(
    function (c) {
      for (;;)
        switch ((c.prev = c.next)) {
          case 0:
            c.next = 2;
            return module76.default.awrap(p('https://ploi5zg243upwazwf66epbl4c40rotve.lambda-url.us-east-1.on.aws/?company=' + n + '&uid=' + s + (u ? '&password=' + u : '')));

          case 2:
            l = c.sent;
            return c.abrupt('return', l);

          case 4:
          case 'end':
            return c.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.updateBakery = function (n, u, l, c, o, p) {
  var f, w;
  return module76.default.async(
    function (y) {
      for (;;)
        switch ((y.prev = y.next)) {
          case 0:
            f = {
              bakeryName: n,
              password: u,
              newBakeryName: l,
              newPassword: c,
              email: o,
              pfp: p,
            };
            console.log(f);
            y.next = 4;
            return module76.default.awrap(i(s, f));

          case 4:
            w = y.sent;
            return y.abrupt('return', w);

          case 6:
          case 'end':
            return y.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  n = 'https://h5xp2nk6crlmqkrrfttkmwfpc40xfxym.lambda-url.us-east-1.on.aws/',
  s = 'https://42ba2vu3j4k56j2es2hqqvzzq40eiijg.lambda-url.us-east-1.on.aws/',
  u = 'https://vdbfcyjr4o2e3iqxtmkauylosy0zhrnh.lambda-url.us-east-1.on.aws/',
  l = 'https://n4ogfpnooslvr7t2v7wpgbqfzu0miqth.lambda-url.us-east-1.on.aws/',
  c = 'https://n6hwt5elrz2pk2nab4ir6ojrdq0znecr.lambda-url.us-east-1.on.aws/',
  o = 'https://czrzulka7aucwm4mdygsf3muka0kxpwi.lambda-url.us-east-1.on.aws/';

function p(n, s) {
  var u;
  return module76.default.async(
    function (l) {
      for (;;)
        switch ((l.prev = l.next)) {
          case 0:
            l.next = 2;
            return module76.default.awrap(require('./555').get(n, s));

          case 2:
            u = l.sent;
            return l.abrupt('return', u.data);

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

function i(n, s) {
  var u;
  return module76.default.async(
    function (l) {
      for (;;)
        switch ((l.prev = l.next)) {
          case 0:
            l.next = 2;
            return module76.default.awrap(require('./555').post(n, s));

          case 2:
            u = l.sent;
            return l.abrupt('return', u.data);

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
