var module567 = (function module558(t) {
  var module558 = new (require('./556'))(t),
    module558 = require('./559')(require('./556').prototype.request, module558);

  require('./558').extend(module558, require('./556').prototype, module558);

  require('./558').extend(module558, module558);

  module558.create = function (n) {
    return module558(require('./560')(t, n));
  };

  return module558;
})(require('./567'));

module567.Axios = require('./556');
module567.CanceledError = require('./565');
module567.CancelToken = require('./583');
module567.isCancel = require('./582');
module567.VERSION = require('./562').version;
module567.toFormData = require('./580');
module567.AxiosError = require('./563');
module567.Cancel = module567.CanceledError;

module567.all = function (o) {
  return Promise.all(o);
};

module567.spread = require('./584');
module567.isAxiosError = require('./585');
module.exports = module567;
module.exports.default = module567;
