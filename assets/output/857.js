module.exports = function (t) {
  fetch(require('./858')().url + 'open-url', {
    method: 'POST',
    body: JSON.stringify({
      url: t,
    }),
  });
};
