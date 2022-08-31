var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native');

var module586 = function (module678) {
  ReactNative.StyleSheet.create({
    signOutButton: {
      backgroundColor: 'white',
    },
  });

  var u = module678.navigation,
    l = module678.params,
    module552 = require('./552').useGlobals().setCompany;

  return React.default.createElement(
    require('./678').Button,
    {
      mode: 'contained',
      style: {
        marginVertical: 30,
      },
      onPress: function () {
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  module552({
                    id: '',
                    name: '',
                    password: '',
                  });
                  n.next = 3;
                  return module76.default.awrap(require('./1135').asyncDeleteBakeryData());

                case 3:
                  u.dispatch(
                    require('./586').CommonActions.reset({
                      index: 0,
                      routes: [
                        {
                          name: 'Login',
                        },
                      ],
                    })
                  );

                case 4:
                case 'end':
                  return n.stop();
              }
          },
          null,
          null,
          null,
          Promise
        );
      },
    },
    'Sign Out'
  );
};

exports.default = module586;
