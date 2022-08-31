var module882 = {
  stringify: function (t, c) {
    if (Array.isArray(t)) {
      if ('number' == typeof t[0]) t = require('./880').decodeMessage(t);
      return module882.printRecords(t, c);
    } else return module882.printRecord(t, c);
  },
  printRecords: function (t, c) {
    if (!c) c = '\n';
    var o = '';
    t.forEach(function (t) {
      o += module882.printRecord(t, c);
      o += c;
    });
    return o.slice(0, -1 * c.length);
  },
  printRecord: function (c, o) {
    var s = '';

    switch ((o || (o = '\n'), c.tnf)) {
      case require('./882').TNF_EMPTY:
        s += 'Empty Record';
        s += o;
        break;

      case require('./882').TNF_WELL_KNOWN:
        s += module882.printWellKnown(c, o);
        break;

      case require('./882').TNF_MIME_MEDIA:
        s += 'MIME Media';
        s += o;
        s += t(c.type);
        s += o;
        s += t(c.payload);
        break;

      case require('./882').TNF_ABSOLUTE_URI:
        s += 'Absolute URI';
        s += o;
        s += t(c.type);
        s += o;
        s += t(c.payload);
        break;

      case require('./882').TNF_EXTERNAL_TYPE:
        s += 'External';
        s += o;
        s += t(c.type);
        s += o;
        s += t(c.payload);
        break;

      default:
        s += t("Can't process TNF " + c.tnf);
    }

    s += o;
    return s;
  },
  printWellKnown: function (c, o) {
    var s = '';
    if (c.tnf !== require('./882').TNF_WELL_KNOWN) return 'ERROR expecting TNF Well Known';

    switch (c.type) {
      case require('./882').RTD_TEXT:
        s += 'Text Record';
        s += o;
        s += require('./880').text.decodePayload(c.payload);
        break;

      case require('./882').RTD_URI:
        s += 'URI Record';
        s += o;
        s += require('./880').uri.decodePayload(c.payload);
        break;

      case require('./882').RTD_SMART_POSTER:
        s += 'Smart Poster';
        s += o;
        s += module882.printRecords(require('./880').decodeMessage(c.payload));
        break;

      default:
        s += c.type + ' Record';
        s += o;
        s += t(c.payload);
    }

    return s;
  },
  tnfToString: function (n) {
    var t = n;

    switch (n) {
      case require('./882').TNF_EMPTY:
        t = 'Empty';
        break;

      case require('./882').TNF_WELL_KNOWN:
        t = 'Well Known';
        break;

      case require('./882').TNF_MIME_MEDIA:
        t = 'Mime Media';
        break;

      case require('./882').TNF_ABSOLUTE_URI:
        t = 'Absolute URI';
        break;

      case require('./882').TNF_EXTERNAL_TYPE:
        t = 'External';
        break;

      case require('./882').TNF_UNKNOWN:
        t = 'Unknown';
        break;

      case require('./882').TNF_UNCHANGED:
        t = 'Unchanged';
        break;

      case require('./882').TNF_RESERVED:
        t = 'Reserved';
    }

    return t;
  },
};

function t(n) {
  return 'string' == typeof n
    ? n
    : n.reduce(function (n, t) {
        return n + String.fromCharCode(t);
      }, '');
}

module.exports = module882;
