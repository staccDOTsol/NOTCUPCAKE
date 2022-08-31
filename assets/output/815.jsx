var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = y(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module812 = require('@babel/runtime/helpers/interopRequireDefault')(require('./812')),
  module807 = y(require('./807')),
  c = [
    'disabled',
    'editable',
    'label',
    'error',
    'selectionColor',
    'underlineColor',
    'activeUnderlineColor',
    'dense',
    'style',
    'theme',
    'render',
    'multiline',
    'parentState',
    'innerRef',
    'onFocus',
    'forceFocus',
    'onBlur',
    'onChangeText',
    'onLayoutAnimatedText',
    'onLeftAffixLayoutChange',
    'onRightAffixLayoutChange',
    'left',
    'right',
    'placeholderTextColor',
  ],
  h = ['fontSize', 'fontWeight', 'height', 'paddingHorizontal', 'textAlign'];

function b(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (b = function (t) {
    return t ? o : n;
  })(t);
}

function y(t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var o = b(n);
  if (o && o.has(t)) return o.get(t);
  var l = {},
    u = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var f in t)
    if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
      var p = u ? Object.getOwnPropertyDescriptor(t, f) : null;
      if (p && (p.get || p.set)) Object.defineProperty(l, f, p);
      else l[f] = t[f];
    }

  l.default = t;
  if (o) o.set(t, l);
  return l;
}

var module810 = function (b) {
  var y,
    module810,
    x,
    T = b.disabled,
    L = undefined !== T && T,
    F = b.editable,
    v = undefined === F || F,
    I = b.label,
    E = b.error,
    O = undefined !== E && E,
    _ = b.selectionColor,
    P = b.underlineColor,
    M = b.activeUnderlineColor,
    z = b.dense,
    R = b.style,
    w = b.theme,
    N = b.render,
    k =
      undefined === N
        ? function (t) {
            return <ReactNative.TextInput />;
          }
        : N,
    D = b.multiline,
    H = undefined !== D && D,
    W = b.parentState,
    B = b.innerRef,
    j = b.onFocus,
    Z = b.forceFocus,
    V = b.onBlur,
    X = b.onChangeText,
    U = b.onLayoutAnimatedText,
    G = b.onLeftAffixLayoutChange,
    Y = b.onRightAffixLayoutChange,
    q = b.left,
    J = b.right,
    K = b.placeholderTextColor,
    Q = module105.default(b, c),
    $ = 'android' === ReactNative.Platform.OS,
    ee = w.colors,
    te = w.fonts.regular,
    ne = W.focused || O,
    oe = ReactNative.StyleSheet.flatten(R) || {},
    le = oe.fontSize,
    ae = oe.fontWeight,
    re = oe.height,
    ie = oe.paddingHorizontal,
    de = oe.textAlign,
    ue = module105.default(oe, h),
    module810 = le || require('./811').MAXIMIZED_LABEL_FONT_SIZE,
    ge = undefined !== ie && 'number' == typeof ie,
    pe = module807.getAdornmentConfig({
      left: q,
      right: J,
    }),
    module814 = require('./814').calculateFlatInputHorizontalPadding({
      adornmentConfig: pe,
    }),
    ce = module814.paddingLeft,
    he = module814.paddingRight;

  if (ge) {
    ce = ie;
    he = ie;
  }

  var be,
    me,
    ye,
    Ce,
    Se,
    Ae = W.leftLayout,
    xe = W.rightLayout,
    module810 = (J && xe.width) || require('./811').ADORNMENT_SIZE,
    module810 = (q && Ae.width) || require('./811').ADORNMENT_SIZE,
    module810 = module807.getAdornmentStyleAdjustmentForNativeInput({
      adornmentConfig: pe,
      rightAffixWidth: module810,
      leftAffixWidth: module810,
      paddingHorizontal: ie,
      inputOffset: require('./811').FLAT_INPUT_OFFSET,
      mode: require('./810').InputMode.Flat,
    });

  if (L) {
    be = me = module681.default(ee.text).alpha(0.54).rgb().string();
    Ce = ee.disabled;
    ye = 'transparent';
  } else {
    be = ee.text;
    me = O ? ee.error : M || ee.primary;
    Ce = ee.placeholder;
    Se = ee.error;
    ye = P || ee.disabled;
  }

  var ve = {
      backgroundColor: w.dark ? module681.default(ee.background).lighten(0.24).rgb().string() : module681.default(ee.background).darken(0.06).rgb().string(),
      borderTopLeftRadius: w.roundness,
      borderTopRightRadius: w.roundness,
    },
    module811 = require('./811').MINIMIZED_LABEL_FONT_SIZE / module810,
    module811 = require('./811').MAXIMIZED_LABEL_FONT_SIZE / module810,
    Oe = W.labelLayout.width,
    _e = W.labelLayout.height,
    Pe = Oe / 2,
    Me = _e / 2,
    ze = (ReactNative.I18nManager.isRTL ? 1 : -1) * (Pe - (module811 * Oe) / 2) + (1 - module811) * (ReactNative.I18nManager.isRTL ? -1 : 1) * ce,
    Re = z ? (I ? 52 : 40) - 24 : 34,
    module814 = require('./814').calculateInputHeight(_e, re, Re),
    module814 = require('./814').calculateLabelTopPosition(_e, module814, H && re ? 0 : re ? 0 : Re / 2);

  if (re && 'number' != typeof re) console.warn('Currently we support only numbers in height prop');
  y = {};
  module256.default(y, require('./810').AdornmentSide.Left, module814);
  module256.default(y, require('./810').AdornmentSide.Right, module814);
  module810 = {};
  module256.default(module810, require('./810').AdornmentSide.Left, G);
  module256.default(module810, require('./810').AdornmentSide.Right, Y);

  var module811 = {
      height: re ? +re : null,
      labelHalfHeight: Me,
      offset: require('./811').FLAT_INPUT_OFFSET,
      multiline: H || null,
      dense: z || null,
      topPosition: module814,
      fontSize: module810,
      label: I,
      scale: module811,
      isAndroid: $,
      styles: ReactNative.StyleSheet.flatten(z ? A.inputFlatDense : A.inputFlat),
    },
    module814 = require('./814').calculatePadding(module811),
    module814 = require('./814').adjustPaddingFlat(
      module29.default({}, module811, {
        pad: module814,
      })
    ),
    We = -Me - (module814 + -18),
    module814 = ne ? require('./814').interpolatePlaceholder(W.labeled, ne) : W.labelLayout.measured ? 1 : 0,
    je = re || (z ? (I ? 52 : 40) : 64),
    Ze = module814 + (re ? 0 : z ? 24 : 30),
    module811 = (Ze - require('./811').ADORNMENT_SIZE) / 2,
    module814 = Ae.height
      ? require('./814').calculateFlatAffixTopPosition(
          module29.default(
            {
              height: Ze,
            },
            module814,
            {
              affixHeight: Ae.height,
            }
          )
        )
      : null,
    module814 = xe.height
      ? require('./814').calculateFlatAffixTopPosition(
          module29.default(
            {
              height: Ze,
            },
            module814,
            {
              affixHeight: xe.height,
            }
          )
        )
      : null,
    module811 = {
      label: I,
      onLayoutAnimatedText: U,
      placeholderOpacity: module814,
      error: O,
      placeholderStyle: A.placeholder,
      baseLabelTranslateY: We,
      baseLabelTranslateX: ze,
      font: te,
      fontSize: module810,
      fontWeight: ae,
      labelScale: module811,
      wiggleOffsetX: require('./811').LABEL_WIGGLE_X_OFFSET,
      topPosition: module814,
      paddingOffset: {
        paddingLeft: ce,
        paddingRight: he,
      },
      hasActiveOutline: ne,
      activeColor: me,
      placeholderColor: Ce,
      errorColor: Se,
      roundness: w.roundness,
      maxFontSizeMultiplier: Q.maxFontSizeMultiplier,
    },
    Ye = y,
    qe = module810,
    module810 = {
      paddingHorizontal: ie,
      adornmentConfig: pe,
      forceFocus: Z,
      topPosition: ((x = {}), module256.default(x, require('./810').AdornmentType.Affix, Ye), module256.default(x, require('./810').AdornmentType.Icon, module811), x),
      onAffixChange: qe,
      isTextInputFocused: W.focused,
      maxFontSizeMultiplier: Q.maxFontSizeMultiplier,
    };

  if (pe.length)
    module810 = module29.default({}, module810, {
      left: q,
      right: J,
      textStyle: module29.default({}, te, {
        fontSize: module810,
        fontWeight: ae,
      }),
      visible: W.labeled,
    });
  return (
    <ReactNative.View style={[ve, ue]}>
      <S parentState={W} underlineColorCustom={ye} error={O} colors={ee} activeColor={me} />
      <ReactNative.View
        style={[
          A.labelContainer,
          {
            minHeight: je,
          },
        ]}
      >
        {!$ && H && !!I && (
          <ReactNative.View
            testID="patch-container"
            pointerEvents="none"
            style={[
              ReactNative.StyleSheet.absoluteFill,
              z ? A.densePatchContainer : A.patchContainer,
              {
                backgroundColor: ue.backgroundColor || ve.backgroundColor,
                left: ce,
                right: he,
              },
            ]}
          />
        )}
        <module812.default parentState={W} labelProps={module811} />
        {null == k
          ? undefined
          : k(
              module29.default(
                {
                  testID: 'text-input-flat',
                },
                Q,
                {
                  ref: B,
                  onChangeText: X,
                  placeholder: I ? W.placeholder : Q.placeholder,
                  placeholderTextColor: null != K ? K : Ce,
                  editable: !L && v,
                  selectionColor: undefined === _ ? me : _,
                  onFocus: j,
                  onBlur: V,
                  underlineColorAndroid: 'transparent',
                  multiline: H,
                  style: [
                    A.input,
                    {
                      paddingLeft: ce,
                      paddingRight: he,
                    },
                    !H || (H && re)
                      ? {
                          height: Ze,
                        }
                      : {},
                    module814,
                    module29.default({}, te, {
                      fontSize: module810,
                      fontWeight: ae,
                      color: be,
                      textAlignVertical: H ? 'top' : 'center',
                      textAlign: de || (ReactNative.I18nManager.isRTL ? 'right' : 'left'),
                    }),
                    'web' === ReactNative.Platform.OS && {
                      outline: 'none',
                    },
                    module810,
                  ],
                }
              )
            )}
      </ReactNative.View>
      <module807.default />
    </ReactNative.View>
  );
};

exports.default = module810;

var S = function (t) {
    var n = t.parentState,
      o = t.error,
      f = t.colors,
      p = t.activeColor,
      s = t.underlineColorCustom,
      c = n.focused ? p : s;
    if (o) c = f.error;
    return React.createElement(ReactNative.Animated.View, {
      style: [
        A.underline,
        {
          backgroundColor: c,
          transform: [
            {
              scaleY: n.focused ? 1 : 0.5,
            },
          ],
        },
      ],
    });
  },
  A = ReactNative.StyleSheet.create({
    placeholder: {
      position: 'absolute',
      left: 0,
    },
    underline: {
      position: 'absolute',
      left: 0,
      right: 0,
      bottom: 0,
      height: 2,
      zIndex: 1,
    },
    labelContainer: {
      paddingTop: 0,
      paddingBottom: 0,
    },
    input: {
      flexGrow: 1,
      margin: 0,
    },
    inputFlat: {
      paddingTop: 24,
      paddingBottom: 4,
    },
    inputFlatDense: {
      paddingTop: 22,
      paddingBottom: 2,
    },
    patchContainer: {
      height: 24,
      zIndex: 2,
    },
    densePatchContainer: {
      height: 22,
      zIndex: 2,
    },
  });
