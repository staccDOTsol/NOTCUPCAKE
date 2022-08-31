var module852 = require('@babel/runtime/helpers/interopRequireDefault')(require('./852')),
  module857 = require('@babel/runtime/helpers/interopRequireDefault')(require('./857')),
  ReactNative = require('react-native'),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var p in t)
      if ('default' !== p && Object.prototype.hasOwnProperty.call(t, p)) {
        var u = s ? Object.getOwnPropertyDescriptor(t, p) : null;
        if (u && (u.get || u.set)) Object.defineProperty(l, p, u);
        else l[p] = t[p];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

var s = [
    {
      id: 1,
      title: 'The Basics',
      link: 'https://reactnative.dev/docs/tutorial',
      description: 'Explains a Hello World for React Native.',
    },
    {
      id: 2,
      title: 'Style',
      link: 'https://reactnative.dev/docs/style',
      description: 'Covers how to use the prop named style which controls the visuals.',
    },
    {
      id: 3,
      title: 'Layout',
      link: 'https://reactnative.dev/docs/flexbox',
      description: 'React Native uses flexbox for layout, learn how it works.',
    },
    {
      id: 4,
      title: 'Components',
      link: 'https://reactnative.dev/docs/components-and-apis',
      description: 'The full list of components and APIs inside React Native.',
    },
    {
      id: 5,
      title: 'Navigation',
      link: 'https://reactnative.dev/docs/navigation',
      description: 'How to handle moving between screens inside your application.',
    },
    {
      id: 6,
      title: 'Networking',
      link: 'https://reactnative.dev/docs/network',
      description: 'How to use the Fetch API in React Native.',
    },
    {
      id: 7,
      title: 'Help',
      link: 'https://reactnative.dev/help',
      description: 'Need more help? There are many other React Native developers who may have the answer.',
    },
    {
      id: 8,
      title: 'Follow us on Twitter',
      link: 'https://twitter.com/reactnative',
      description: 'Stay in touch with the community, join in on Q&As and more by following React Native on Twitter.',
    },
  ],
  p = ReactNative.StyleSheet.create({
    container: {
      marginTop: 32,
      paddingHorizontal: 24,
    },
    linkContainer: {
      flexWrap: 'wrap',
      flexDirection: 'row',
      justifyContent: 'space-between',
      alignItems: 'center',
      paddingVertical: 8,
    },
    link: {
      flex: 2,
      fontSize: 18,
      fontWeight: '400',
      color: module852.default.primary,
    },
    description: {
      flex: 3,
      paddingVertical: 16,
      fontWeight: '400',
      fontSize: 18,
    },
    separator: {
      height: ReactNative.StyleSheet.hairlineWidth,
    },
  }),
  u = function () {
    var c = 'dark' === ReactNative.useColorScheme();
    return React.default.createElement(
      ReactNative.View,
      {
        style: p.container,
      },
      s.map(function (s) {
        var u = s.id,
          f = s.title,
          h = s.link,
          v = s.description;
        return React.default.createElement(
          React.Fragment,
          {
            key: u,
          },
          React.default.createElement(ReactNative.View, {
            style: [
              p.separator,
              {
                backgroundColor: c ? module852.default.dark : module852.default.light,
              },
            ],
          }),
          React.default.createElement(
            ReactNative.TouchableOpacity,
            {
              accessibilityRole: 'button',
              onPress: function () {
                return module857.default(h);
              },
              style: p.linkContainer,
            },
            React.default.createElement(
              ReactNative.Text,
              {
                style: p.link,
              },
              f
            ),
            React.default.createElement(
              ReactNative.Text,
              {
                style: [
                  p.description,
                  {
                    color: c ? module852.default.lighter : module852.default.dark,
                  },
                ],
              },
              v
            )
          )
        );
      })
    );
  };

exports.default = u;
