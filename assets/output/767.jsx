var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = h(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var u = s ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, c, u);
        else o[c] = t[c];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module768 = require('@babel/runtime/helpers/interopRequireDefault')(require('./768')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  module770 = require('@babel/runtime/helpers/interopRequireDefault')(require('./770')),
  module740 = require('@babel/runtime/helpers/interopRequireDefault')(require('./740')),
  y = [
    'label',
    'accessibilityLabel',
    'page',
    'numberOfPages',
    'onPageChange',
    'style',
    'theme',
    'showFastPaginationControls',
    'numberOfItemsPerPageList',
    'numberOfItemsPerPage',
    'onItemsPerPageChange',
    'selectPageDropdownLabel',
    'selectPageDropdownAccessibilityLabel',
  ];

function h(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (h = function (t) {
    return t ? l : n;
  })(t);
}

var L = function (t) {
    var n = t.page,
      l = t.numberOfPages,
      c = t.onPageChange,
      f = t.showFastPaginationControls,
      module679 = require('./679').useTheme().colors;

    return (
      <React.Fragment>
        {f ? (
          <module768.default
            icon={function (t) {
              var n = t.size,
                l = t.color;
              return <module698.default name="page-first" color={l} size={n} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />;
            }}
            color={module679.text}
            disabled={0 === n}
            onPress={function () {
              return c(0);
            }}
            accessibilityLabel="page-first"
          />
        ) : null}
        <module768.default
          icon={function (t) {
            var n = t.size,
              l = t.color;
            return <module698.default name="chevron-left" color={l} size={n} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />;
          }}
          color={module679.text}
          disabled={0 === n}
          onPress={function () {
            return c(n - 1);
          }}
          accessibilityLabel="chevron-left"
        />
        <module768.default
          icon={function (t) {
            var n = t.size,
              l = t.color;
            return <module698.default name="chevron-right" color={l} size={n} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />;
          }}
          color={module679.text}
          disabled={0 === l || n === l - 1}
          onPress={function () {
            return c(n + 1);
          }}
          accessibilityLabel="chevron-right"
        />
        {f ? (
          <module768.default
            icon={function (t) {
              var n = t.size,
                l = t.color;
              return <module698.default name="page-last" color={l} size={n} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />;
            }}
            color={module679.text}
            disabled={0 === l || n === l - 1}
            onPress={function () {
              return c(l - 1);
            }}
            accessibilityLabel="page-last"
          />
        ) : null}
      </React.Fragment>
    );
  },
  v = function (t) {
    var n = t.numberOfItemsPerPageList,
      s = t.numberOfItemsPerPage,
      c = t.onItemsPerPageChange,
      module679 = require('./679').useTheme().colors,
      f = React.useState(false),
      b = module23.default(f, 2),
      y = b[0],
      h = b[1];

    return (
      <module770.default
        visible={y}
        onDismiss={function () {
          return h(!y);
        }}
        anchor={
          <module740.default
            mode="outlined"
            onPress={function () {
              return h(true);
            }}
            style={O.button}
            icon="menu-down"
            contentStyle={O.contentStyle}
          >
            {'' + s}
          </module740.default>
        }
      >
        {null == n
          ? undefined
          : n.map(function (t) {
              return React.createElement(module770.default.Item, {
                key: t,
                titleStyle: t === s && {
                  color: module679.primary,
                },
                onPress: function () {
                  if (!(null == c)) c(t);
                  h(false);
                },
                title: t,
              });
            })}
      </module770.default>
    );
  },
  w = function (l) {
    var u = l.label,
      b = l.accessibilityLabel,
      P = l.page,
      p = l.numberOfPages,
      h = l.onPageChange,
      w = l.style,
      E = l.theme,
      I = l.showFastPaginationControls,
      C = undefined !== I && I,
      D = l.numberOfItemsPerPageList,
      x = l.numberOfItemsPerPage,
      T = l.onItemsPerPageChange,
      z = l.selectPageDropdownLabel,
      M = l.selectPageDropdownAccessibilityLabel,
      S = module105.default(l, y),
      j = module681.default(E.colors.text).alpha(0.6).rgb().string();
    return React.createElement(
      ReactNative.View,
      module29.default({}, S, {
        style: [O.container, w],
        accessibilityLabel: 'pagination-container',
      }),
      D &&
        x &&
        T &&
        React.createElement(
          ReactNative.View,
          {
            accessibilityLabel: 'Options Select',
            style: O.optionsContainer,
          },
          React.createElement(
            module719.default,
            {
              style: [
                O.label,
                {
                  color: j,
                },
              ],
              numberOfLines: 3,
              accessibilityLabel: M || 'selectPageDropdownLabel',
            },
            z
          ),
          React.createElement(v, {
            numberOfItemsPerPageList: D,
            numberOfItemsPerPage: x,
            onItemsPerPageChange: T,
          })
        ),
      React.createElement(
        module719.default,
        {
          style: [
            O.label,
            {
              color: j,
            },
          ],
          numberOfLines: 3,
          accessibilityLabel: b || 'label',
        },
        u
      ),
      React.createElement(
        ReactNative.View,
        {
          style: O.iconsContainer,
        },
        React.createElement(L, {
          showFastPaginationControls: C,
          onPageChange: h,
          page: P,
          numberOfPages: p,
        })
      )
    );
  };

exports.DataTablePagination = w;
w.displayName = 'DataTable.Pagination';

var O = ReactNative.StyleSheet.create({
    container: {
      justifyContent: 'flex-end',
      flexDirection: 'row',
      alignItems: 'center',
      paddingLeft: 16,
      flexWrap: 'wrap',
    },
    optionsContainer: {
      flexDirection: 'row',
      alignItems: 'center',
      marginVertical: 6,
    },
    label: {
      fontSize: 12,
      marginRight: 16,
    },
    button: {
      textAlign: 'center',
      marginRight: 16,
    },
    iconsContainer: {
      flexDirection: 'row',
    },
    contentStyle: {
      flexDirection: 'row-reverse',
    },
  }),
  module679 = require('./679').withTheme(w);

exports.default = module679;
