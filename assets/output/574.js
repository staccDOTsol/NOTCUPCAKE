module.exports = function (t, s, u) {
  var o = u.config.validateStatus;
  if (u.status && o && !o(u.status))
    s(
      new (require('./563'))(
        'Request failed with status code ' + u.status,
        [require('./563').ERR_BAD_REQUEST, require('./563').ERR_BAD_RESPONSE][Math.floor(u.status / 100) - 4],
        u.config,
        u.request,
        u
      )
    );
  else t(u);
};
