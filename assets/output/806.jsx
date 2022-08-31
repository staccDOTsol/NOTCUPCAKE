var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = y(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module807 = y(require('./807')),
  module812 = require('@babel/runtime/helpers/interopRequireDefault')(require('./812')),
  module813 = require('@babel/runtime/helpers/interopRequireDefault')(require('./813')),
  p = [
    'disabled',
    'editable',
    'label',
    'error',
    'selectionColor',
    'underlineColor',
    'outlineColor',
    'activeOutlineColor',
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
  b = ['fontSize', 'fontWeight', 'lineHeight', 'height', 'backgroundColor', 'textAlign'];

function A(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (A = function (t) {
    return t ? n : o;
  })(t);
}

function y(t, o) {
  if (!o && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var n = A(o);
  if (n && n.has(t)) return n.get(t);
  var l = {},
    u = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var f in t)
    if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
      var c = u ? Object.getOwnPropertyDescriptor(t, f) : null;
      if (c && (c.get || c.set)) Object.defineProperty(l, f, c);
      else l[f] = t[f];
    }

  l.default = t;
  if (n) n.set(t, l);
  return l;
}

var module810 = function (A) {
  var y,
    module810,
    O,
    T,
    v,
    E,
    I,
    L,
    M = A.disabled,
    _ = undefined !== M && M,
    F = A.editable,
    P = undefined === F || F,
    w = A.label,
    N = A.error,
    z = undefined !== N && N,
    D = A.selectionColor,
    R = A.outlineColor,
    B = A.activeOutlineColor,
    H = A.dense,
    W = A.style,
    Z = A.theme,
    k = A.render,
    j =
      undefined === k
        ? function (t) {
            return <ReactNative.TextInput />;
          }
        : k,
    X = A.multiline,
    V = undefined !== X && X,
    Y = A.parentState,
    G = A.innerRef,
    q = A.onFocus,
    J = A.forceFocus,
    K = A.onBlur,
    Q = A.onChangeText,
    U = A.onLayoutAnimatedText,
    $ = A.onLeftAffixLayoutChange,
    ee = A.onRightAffixLayoutChange,
    te = A.left,
    oe = A.right,
    ne = A.placeholderTextColor,
    le = module105.default(A, p),
    ie = module807.getAdornmentConfig({
      left: te,
      right: oe,
    }),
    re = Z.colors,
    ae = Z.fonts.regular,
    de = Y.focused || z,
    ue = ReactNative.StyleSheet.flatten(W) || {},
    fe = ue.fontSize,
    ce = ue.fontWeight,
    se = ue.lineHeight,
    he = ue.height,
    pe = ue.backgroundColor,
    ge = undefined === pe ? re.background : pe,
    be = ue.textAlign,
    me = module105.default(ue, b),
    module810 = fe || require('./811').MAXIMIZED_LABEL_FONT_SIZE;

  if (_) {
    var ye = 0 === module681.default(R).alpha();
    T = v = module681.default(re.text).alpha(0.54).rgb().string();
    I = re.disabled;
    E = ye ? R : re.disabled;
  } else {
    T = re.text;
    v = z ? re.error : B || re.primary;
    I = re.placeholder;
    E = R || re.placeholder;
    L = re.error;
  }

  var module810 = require('./811').MINIMIZED_LABEL_FONT_SIZE / module810,
    module810 = require('./811').MAXIMIZED_LABEL_FONT_SIZE / module810,
    Ce = Y.labelLayout.width,
    Oe = Y.labelLayout.height,
    Te = Ce / 2,
    ve = Oe / 2,
    module810 = (ReactNative.I18nManager.isRTL ? 1 : -1) * (Te - (module810 * Ce) / 2 - (module810 - require('./811').MINIMIZED_LABEL_FONT_SIZE) * module810),
    Ie = 0;
  if (
    ie.some(function (t) {
      var o = t.side,
        n = t.type;
      return o === require('./810').AdornmentSide.Left && n === require('./810').AdornmentType.Icon;
    })
  )
    Ie = (ReactNative.I18nManager.isRTL ? -1 : 1) * (require('./811').ADORNMENT_SIZE + require('./811').ADORNMENT_OFFSET - 8);

  var Le = (H ? 48 : 64) - 8,
    module811 = require('./814').calculateInputHeight(Oe, he, Le),
    module811 = require('./814').calculateLabelTopPosition(Oe, module811, 8);

  if (he && 'number' != typeof he) console.warn('Currently we support only numbers in height prop');
  y = {};
  module256.default(y, require('./810').AdornmentSide.Left, module811);
  module256.default(y, require('./810').AdornmentSide.Right, module811);
  module810 = {};
  module256.default(module810, require('./810').AdornmentSide.Left, $);
  module256.default(module810, require('./810').AdornmentSide.Right, ee);

  var Fe = {
      height: he ? +he : null,
      labelHalfHeight: ve,
      offset: 8,
      multiline: V || null,
      dense: H || null,
      topPosition: module811,
      fontSize: module810,
      lineHeight: se,
      label: w,
      scale: module810,
      isAndroid: 'android' === ReactNative.Platform.OS,
      styles: ReactNative.StyleSheet.flatten(H ? C.inputOutlinedDense : C.inputOutlined),
    },
    module811 = require('./814').calculatePadding(Fe),
    module811 = require('./814').adjustPaddingOut(
      module29.default({}, Fe, {
        pad: module811,
      })
    ),
    Ne = -ve - (module811 + -6),
    module811 = {
      label: w,
      onLayoutAnimatedText: U,
      placeholderOpacity: de ? require('./814').interpolatePlaceholder(Y.labeled, de) : Y.labelLayout.measured ? 1 : 0,
      error: z,
      placeholderStyle: C.placeholder,
      baseLabelTranslateY: Ne,
      baseLabelTranslateX: module810,
      font: ae,
      fontSize: module810,
      fontWeight: ce,
      labelScale: module810,
      wiggleOffsetX: require('./811').LABEL_WIGGLE_X_OFFSET,
      topPosition: module811,
      hasActiveOutline: de,
      activeColor: v,
      placeholderColor: I,
      backgroundColor: ge,
      errorColor: L,
      labelTranslationXOffset: Ie,
      roundness: Z.roundness,
      maxFontSizeMultiplier: le.maxFontSizeMultiplier,
    },
    De = he || (H ? 48 : 64),
    Re = Y.leftLayout,
    Be = Y.rightLayout,
    module811 = require('./814').calculateOutlinedIconAndAffixTopPosition({
      height: De,
      affixHeight: Re.height || 0,
      labelYOffset: 6,
    }),
    module811 = require('./814').calculateOutlinedIconAndAffixTopPosition({
      height: De,
      affixHeight: Be.height || 0,
      labelYOffset: 6,
    }),
    module811 = require('./814').calculateOutlinedIconAndAffixTopPosition({
      height: De,
      affixHeight: require('./811').ADORNMENT_SIZE,
      labelYOffset: 6,
    }),
    module811 = (oe && Be.width) || require('./811').ADORNMENT_SIZE,
    module811 = (te && Re.width) || require('./811').ADORNMENT_SIZE,
    Xe = module807.getAdornmentStyleAdjustmentForNativeInput({
      adornmentConfig: ie,
      rightAffixWidth: module811,
      leftAffixWidth: module811,
      mode: 'outlined',
    }),
    Ve = y,
    Ye = module810,
    module810 = {
      adornmentConfig: ie,
      forceFocus: J,
      topPosition: ((O = {}), module256.default(O, require('./810').AdornmentType.Icon, module811), module256.default(O, require('./810').AdornmentType.Affix, Ve), O),
      onAffixChange: Ye,
      isTextInputFocused: Y.focused,
      maxFontSizeMultiplier: le.maxFontSizeMultiplier,
    };

  if (ie.length)
    module810 = module29.default({}, module810, {
      left: te,
      right: oe,
      textStyle: module29.default({}, ae, {
        fontSize: module810,
        fontWeight: ce,
      }),
      visible: Y.labeled,
    });
  return (
    <ReactNative.View style={me}>
      <S theme={Z} hasActiveOutline={de} focused={Y.focused} activeColor={v} outlineColor={E} backgroundColor={ge} />
      <ReactNative.View>
        <ReactNative.View
          style={[
            C.labelContainer,
            {
              paddingTop: 8,
              minHeight: De,
            },
          ]}
        >
          <module812.default parentState={Y} labelProps={module811} labelBackground={module813.default} maxFontSizeMultiplier={le.maxFontSizeMultiplier} />
          {null == j
            ? undefined
            : j(
                module29.default(
                  {
                    testID: 'text-input-outlined',
                  },
                  le,
                  {
                    ref: G,
                    onChangeText: Q,
                    placeholder: w ? Y.placeholder : le.placeholder,
                    placeholderTextColor: ne || I,
                    editable: !_ && P,
                    selectionColor: undefined === D ? v : D,
                    onFocus: q,
                    onBlur: K,
                    underlineColorAndroid: 'transparent',
                    multiline: V,
                    style: [
                      C.input,
                      !V || (V && he)
                        ? {
                            height: module811,
                          }
                        : {},
                      module811,
                      module29.default({}, ae, {
                        fontSize: module810,
                        fontWeight: ce,
                        color: T,
                        textAlignVertical: V ? 'top' : 'center',
                        textAlign: be || (ReactNative.I18nManager.isRTL ? 'right' : 'left'),
                      }),
                      'web' === ReactNative.Platform.OS && {
                        outline: 'none',
                      },
                      Xe,
                    ],
                  }
                )
              )}
        </ReactNative.View>
        <module807.default />
      </ReactNative.View>
    </ReactNative.View>
  );
};

exports.default = module810;

var S = function (t) {
    var o = t.theme,
      n = t.hasActiveOutline,
      f = t.activeColor,
      c = t.outlineColor,
      s = t.focused,
      h = t.backgroundColor;
    return (
      <ReactNative.View
        testID="text-input-outline"
        pointerEvents="none"
        style={[
          C.outline,
          {
            backgroundColor: h,
            borderRadius: o.roundness,
            borderWidth: s ? 2 : 1,
            borderColor: n ? f : c,
          },
        ]}
      />
    );
  },
  C = ReactNative.StyleSheet.create({
    placeholder: {
      position: 'absolute',
      left: 0,
      paddingHorizontal: 14,
    },
    outline: {
      position: 'absolute',
      left: 0,
      right: 0,
      top: 6,
      bottom: 0,
    },
    labelContainer: {
      paddingBottom: 0,
    },
    input: {
      flexGrow: 1,
      paddingHorizontal: 14,
      margin: 0,
      zIndex: 1,
    },
    inputOutlined: {
      paddingTop: 8,
      paddingBottom: 8,
    },
    inputOutlinedDense: {
      paddingTop: 4,
      paddingBottom: 4,
    },
  });
