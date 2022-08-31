function n(n) {
  require('./563').call(this, null == n ? 'canceled' : n, require('./563').ERR_CANCELED);

  this.name = 'CanceledError';
}

require('./558').inherits(n, require('./563'), {
  __CANCEL__: true,
});

module.exports = n;
