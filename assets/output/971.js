function r(r, n) {
  if (!r) throw new Error(n || 'Assertion failed');
}

module.exports = r;

r.equal = function (r, n, o) {
  if (r != n) throw new Error(o || 'Assertion failed: ' + r + ' != ' + n);
};
