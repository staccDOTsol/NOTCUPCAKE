var module139 = require('@babel/runtime/helpers/interopRequireDefault')(require('./139')),
  module140 = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = n(o);
    if (u && u.has(t)) return u.get(t);
    var s = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var p in t)
      if ('default' !== p && Object.prototype.hasOwnProperty.call(t, p)) {
        var c = l ? Object.getOwnPropertyDescriptor(t, p) : null;
        if (c && (c.get || c.set)) Object.defineProperty(s, p, c);
        else s[p] = t[p];
      }

    s.default = t;
    if (u) u.set(t, s);
    return s;
  })(require('./140'));

function n(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    u = new WeakMap();
  return (n = function (t) {
    return t ? u : o;
  })(t);
}

var u = module139.default({
  supportedCommands: ['focus', 'blur', 'setTextAndSelection'],
});
exports.Commands = u;
var module144 = module140.get('AndroidTextInput', function () {
  return {
    uiViewClassName: 'AndroidTextInput',
    bubblingEventTypes: {
      topBlur: {
        phasedRegistrationNames: {
          bubbled: 'onBlur',
          captured: 'onBlurCapture',
        },
      },
      topEndEditing: {
        phasedRegistrationNames: {
          bubbled: 'onEndEditing',
          captured: 'onEndEditingCapture',
        },
      },
      topFocus: {
        phasedRegistrationNames: {
          bubbled: 'onFocus',
          captured: 'onFocusCapture',
        },
      },
      topKeyPress: {
        phasedRegistrationNames: {
          bubbled: 'onKeyPress',
          captured: 'onKeyPressCapture',
        },
      },
      topSubmitEditing: {
        phasedRegistrationNames: {
          bubbled: 'onSubmitEditing',
          captured: 'onSubmitEditingCapture',
        },
      },
      topTextInput: {
        phasedRegistrationNames: {
          bubbled: 'onTextInput',
          captured: 'onTextInputCapture',
        },
      },
    },
    directEventTypes: {
      topScroll: {
        registrationName: 'onScroll',
      },
    },
    validAttributes: {
      maxFontSizeMultiplier: true,
      adjustsFontSizeToFit: true,
      minimumFontScale: true,
      autoFocus: true,
      placeholder: true,
      inlineImagePadding: true,
      contextMenuHidden: true,
      textShadowColor: {
        process: require('./144'),
      },
      maxLength: true,
      selectTextOnFocus: true,
      textShadowRadius: true,
      underlineColorAndroid: {
        process: require('./144'),
      },
      textDecorationLine: true,
      blurOnSubmit: true,
      textAlignVertical: true,
      fontStyle: true,
      textShadowOffset: true,
      selectionColor: {
        process: require('./144'),
      },
      selection: true,
      placeholderTextColor: {
        process: require('./144'),
      },
      importantForAutofill: true,
      lineHeight: true,
      textTransform: true,
      returnKeyType: true,
      keyboardType: true,
      multiline: true,
      color: {
        process: require('./144'),
      },
      autoComplete: true,
      numberOfLines: true,
      letterSpacing: true,
      returnKeyLabel: true,
      fontSize: true,
      onKeyPress: true,
      cursorColor: {
        process: require('./144'),
      },
      text: true,
      showSoftInputOnFocus: true,
      textAlign: true,
      autoCapitalize: true,
      autoCorrect: true,
      caretHidden: true,
      secureTextEntry: true,
      textBreakStrategy: true,
      onScroll: true,
      onContentSizeChange: true,
      disableFullscreenUI: true,
      includeFontPadding: true,
      fontWeight: true,
      fontFamily: true,
      allowFontScaling: true,
      onSelectionChange: true,
      mostRecentEventCount: true,
      inlineImageLeft: true,
      editable: true,
      fontVariant: true,
      borderBottomRightRadius: true,
      borderBottomColor: {
        process: require('./144'),
      },
      borderRadius: true,
      borderRightColor: {
        process: require('./144'),
      },
      borderColor: {
        process: require('./144'),
      },
      borderTopRightRadius: true,
      borderStyle: true,
      borderBottomLeftRadius: true,
      borderLeftColor: {
        process: require('./144'),
      },
      borderTopLeftRadius: true,
      borderTopColor: {
        process: require('./144'),
      },
    },
  };
});
exports.default = module144;
