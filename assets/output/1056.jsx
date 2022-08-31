var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = l(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var u = s ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, c, u);
        else o[c] = e[c];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  module1057 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1057')),
  module1058 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1058')),
  c = ['id', 'initialRouteName', 'children', 'screenListeners', 'screenOptions'];

function l(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (l = function (e) {
    return e ? n : t;
  })(e);
}

var module586 = require('./586').createNavigatorFactory(function (l) {
  var u = l.id,
    f = l.initialRouteName,
    p = l.children,
    v = l.screenListeners,
    h = l.screenOptions,
    k = module105.default(l, c),
    b = k.mode;
  module1057.default(
    null != b,
    'Stack Navigator: \'mode="' +
      b +
      '"\' is deprecated. Use \'presentation: "' +
      b +
      "\"' in 'screenOptions' instead.\n\nSee https://reactnavigation.org/docs/stack-navigator#presentation for more details."
  );
  var y = k.headerMode;
  module1057.default(
    'none' === y,
    "Stack Navigator: 'headerMode=\"none\"' is deprecated. Use 'headerShown: false' in 'screenOptions' instead.\n\nSee https://reactnavigation.org/docs/stack-navigator/#headershown for more details."
  );
  module1057.default(
    null != y && 'none' !== y,
    "Stack Navigator: 'headerMode' is moved to 'options'. Moved it to 'screenOptions' to keep current behavior.\n\nSee https://reactnavigation.org/docs/stack-navigator/#headermode for more details."
  );
  var O = k.keyboardHandlingEnabled;
  module1057.default(
    undefined !== O,
    "Stack Navigator: 'keyboardHandlingEnabled' is moved to 'options'. Moved it to 'screenOptions' to keep current behavior.\n\nSee https://reactnavigation.org/docs/stack-navigator/#keyboardhandlingenabled for more details."
  );

  var S = {
      presentation: b,
      headerShown: !y || 'none' !== y,
      headerMode: y && 'none' !== y ? y : undefined,
      keyboardHandlingEnabled: O,
    },
    module586 = require('./586').useNavigationBuilder(require('./586').StackRouter, {
      id: u,
      initialRouteName: f,
      children: p,
      screenListeners: v,
      screenOptions: h,
      defaultScreenOptions: S,
    }),
    N = module586.state,
    w = module586.descriptors,
    P = module586.navigation,
    j = module586.NavigationContent;

  React.useEffect(
    function () {
      return null == P.addListener
        ? undefined
        : P.addListener('tabPress', function (t) {
            var n = P.isFocused();
            requestAnimationFrame(function () {
              if (N.index > 0 && n && !t.defaultPrevented)
                P.dispatch(
                  module29.default({}, require('./586').StackActions.popToTop(), {
                    target: N.key,
                  })
                );
            });
          });
    },
    [P, N.index, N.key]
  );
  return (
    <j>
      <module1058.default />
    </j>
  );
});

exports.default = module586;
