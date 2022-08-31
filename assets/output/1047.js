var React = require('react'),
  n = new Set();

function u(t) {
  require('./1048').Clipboard.setString(t);

  n.forEach(function (n) {
    return n(t);
  });
}

exports.useClipboard = function () {
  var o = React.useState(''),
    f = o[0],
    c = o[1];
  React.useEffect(function () {
    require('./1048').Clipboard.getString().then(c);
  }, []);
  React.useEffect(function () {
    n.add(c);
    return function () {
      n.delete(c);
    };
  }, []);
  return [f, u];
};
