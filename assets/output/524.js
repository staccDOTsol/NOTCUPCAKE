var module493 = require('./493').tagMessage('react-native-reanimated is required in order to use synchronous state management'),
  module523 = undefined !== (null == require('./523').Reanimated ? undefined : require('./523').Reanimated.useSharedValue),
  module523 = null == require('./523').Reanimated ? undefined : require('./523').Reanimated.setGestureState,
  module495 = {
    create: function (module495) {
      'worklet';

      return {
        begin: function () {
          if (module523) module523(module495, require('./495').State.BEGAN);
          else console.warn(module493);
        },
        activate: function () {
          if (module523) module523(module495, require('./495').State.ACTIVE);
          else console.warn(module493);
        },
        fail: function () {
          if (module523) module523(module495, require('./495').State.FAILED);
          else console.warn(module493);
        },
        end: function () {
          if (module523) module523(module495, require('./495').State.END);
          else console.warn(module493);
        },
      };
    },
  };

exports.GestureStateManager = module495;
