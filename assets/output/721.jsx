var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = f(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var u = c ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (u && (u.get || u.set)) Object.defineProperty(l, s, u);
        else l[s] = t[s];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (f = function (t) {
    return t ? o : n;
  })(t);
}

var p = function (f) {
  var p = f.left,
    b = f.right,
    v = f.title,
    h = f.description,
    w = f.children,
    E = f.theme,
    L = f.titleStyle,
    O = f.descriptionStyle,
    P = f.titleNumberOfLines,
    x = undefined === P ? 1 : P,
    j = f.descriptionNumberOfLines,
    S = undefined === j ? 2 : j,
    C = f.style,
    I = f.id,
    M = f.testID,
    V = f.onPress,
    _ = f.onLongPress,
    k = f.expanded,
    A = f.accessibilityLabel,
    D = React.useState(k || false),
    T = module23.default(D, 2),
    z = T[0],
    N = T[1],
    W = module681.default(E.colors.text).alpha(0.87).rgb().string(),
    G = module681.default(E.colors.text).alpha(0.54).rgb().string(),
    R = undefined !== k ? k : z,
    module723 = React.useContext(require('./723').ListAccordionGroupContext);
  if (null !== module723 && !I) throw new Error('List.Accordion is used inside a List.AccordionGroup without specifying an id prop.');
  var B = module723 ? module723.expandedId === I : R,
    F =
      module723 && undefined !== I
        ? function () {
            return module723.onAccordionPress(I);
          }
        : function () {
            if (!(null == V)) V();
            if (undefined === k)
              N(function (t) {
                return !t;
              });
          };
  return (
    <ReactNative.View>
      <ReactNative.View
        style={{
          backgroundColor: E.colors.background,
        }}
      >
        <module722.default
          style={[y.container, C]}
          onPress={F}
          onLongPress={_}
          accessibilityTraits="button"
          accessibilityComponentType="button"
          accessibilityRole="button"
          accessibilityState={{
            expanded: B,
          }}
          accessibilityLabel={A}
          testID={M}
          delayPressIn={0}
          borderless
        >
          <ReactNative.View style={y.row} pointerEvents="none">
            {p
              ? p({
                  color: B ? E.colors.primary : G,
                })
              : null}
            <ReactNative.View style={[y.item, y.content]}>
              <module719.default
                selectable={false}
                numberOfLines={x}
                style={[
                  y.title,
                  {
                    color: B ? E.colors.primary : W,
                  },
                  L,
                ]}
              >
                {v}
              </module719.default>
              {h ? (
                <module719.default
                  selectable={false}
                  numberOfLines={S}
                  style={[
                    y.description,
                    {
                      color: G,
                    },
                    O,
                  ]}
                >
                  {h}
                </module719.default>
              ) : null}
            </ReactNative.View>
            <ReactNative.View style={[y.item, h ? y.multiline : undefined]}>
              {b ? (
                b({
                  isExpanded: B,
                })
              ) : (
                <module698.default name={B ? 'chevron-up' : 'chevron-down'} color={W} size={24} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />
              )}
            </ReactNative.View>
          </ReactNative.View>
        </module722.default>
      </ReactNative.View>
      {B
        ? React.Children.map(w, function (t) {
            return p && React.isValidElement(t) && !t.props.left && !t.props.right
              ? React.cloneElement(t, {
                  style: [y.child, t.props.style],
                })
              : t;
          })
        : null}
    </ReactNative.View>
  );
};

p.displayName = 'List.Accordion';

var y = ReactNative.StyleSheet.create({
    container: {
      padding: 8,
    },
    row: {
      flexDirection: 'row',
      alignItems: 'center',
    },
    multiline: {
      height: 40,
      alignItems: 'center',
      justifyContent: 'center',
    },
    title: {
      fontSize: 16,
    },
    description: {
      fontSize: 14,
    },
    item: {
      margin: 8,
    },
    child: {
      paddingLeft: 64,
    },
    content: {
      flex: 1,
      justifyContent: 'center',
    },
  }),
  module679 = require('./679').withTheme(p);

exports.default = module679;
