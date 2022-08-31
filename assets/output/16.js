var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  u = (function () {
    function u(s) {
      module7.default(this, u);
      this.subscriber = s;
    }

    module8.default(u, [
      {
        key: 'remove',
        value: function () {
          this.subscriber.removeSubscription(this);
        },
      },
    ]);
    return u;
  })();

module.exports = u;
