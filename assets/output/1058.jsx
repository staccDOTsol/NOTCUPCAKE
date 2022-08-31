var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var r = v(t);
    if (r && r.has(e)) return r.get(e);
    var n = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var s = o ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (s && (s.get || s.set)) Object.defineProperty(n, u, s);
        else n[u] = e[u];
      }

    n.default = e;
    if (r) r.set(e, n);
    return n;
  })(require('react')),
  ReactNative = require('react-native'),
  module1059 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1059')),
  module1060 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1060')),
  module1097 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1097')),
  k = ['state', 'descriptors'];

function v(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    r = new WeakMap();
  return (v = function (e) {
    return e ? r : t;
  })(e);
}

function R() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var module1110 = null != require('./1110').GestureHandlerRootView ? require('./1110').GestureHandlerRootView : ReactNative.View,
  module1065 = (function (l, ...args) {
    module10.default(w, l);

    var v = w,
      module1065 = R(),
      E = function () {
        var e,
          t = module15.default(v);

        if (module1065) {
          var r = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, r);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function w() {
      var e;
      module7.default(this, w);
      (e = E.call(this, ...args)).state = {
        routes: [],
        previousRoutes: [],
        previousDescriptors: {},
        openingRouteKeys: [],
        closingRouteKeys: [],
        replacingRouteKeys: [],
        descriptors: {},
      };

      e.getPreviousRoute = function (t) {
        var r = t.route,
          n = e.state,
          o = n.closingRouteKeys,
          u = n.replacingRouteKeys,
          s = e.state.routes.filter(function (e) {
            return e.key === r.key || (!o.includes(e.key) && !u.includes(e.key));
          });
        return s[
          s.findIndex(function (e) {
            return e.key === r.key;
          }) - 1
        ];
      };

      e.renderScene = function (t) {
        var r = t.route,
          n = e.state.descriptors[r.key] || e.props.descriptors[r.key];
        return n ? n.render() : null;
      };

      e.renderHeader = function (e) {
        return <module1060.default />;
      };

      e.handleOpenRoute = function (t) {
        var r = t.route,
          n = e.props,
          o = n.state,
          u = n.navigation,
          s = e.state,
          a = s.closingRouteKeys,
          c = s.replacingRouteKeys;
        if (
          a.some(function (e) {
            return e === r.key;
          }) &&
          c.every(function (e) {
            return e !== r.key;
          }) &&
          o.routeNames.includes(r.name) &&
          !o.routes.some(function (e) {
            return e.key === r.key;
          })
        )
          u.navigate(r);
        else
          e.setState(function (e) {
            return {
              routes: e.replacingRouteKeys.length
                ? e.routes.filter(function (t) {
                    return !e.replacingRouteKeys.includes(t.key);
                  })
                : e.routes,
              openingRouteKeys: e.openingRouteKeys.filter(function (e) {
                return e !== r.key;
              }),
              closingRouteKeys: e.closingRouteKeys.filter(function (e) {
                return e !== r.key;
              }),
              replacingRouteKeys: [],
            };
          });
      };

      e.handleCloseRoute = function (t) {
        var n = t.route,
          o = e.props,
          u = o.state,
          s = o.navigation;
        if (
          u.routes.some(function (e) {
            return e.key === n.key;
          })
        )
          s.dispatch(
            module29.default({}, require('./586').StackActions.pop(), {
              source: n.key,
              target: u.key,
            })
          );
        else
          e.setState(function (e) {
            return {
              routes: e.routes.filter(function (e) {
                return e.key !== n.key;
              }),
              openingRouteKeys: e.openingRouteKeys.filter(function (e) {
                return e !== n.key;
              }),
              closingRouteKeys: e.closingRouteKeys.filter(function (e) {
                return e !== n.key;
              }),
            };
          });
      };

      e.handleTransitionStart = function (t, r) {
        var n = t.route;
        return e.props.navigation.emit({
          type: 'transitionStart',
          data: {
            closing: r,
          },
          target: n.key,
        });
      };

      e.handleTransitionEnd = function (t, r) {
        var n = t.route;
        return e.props.navigation.emit({
          type: 'transitionEnd',
          data: {
            closing: r,
          },
          target: n.key,
        });
      };

      e.handleGestureStart = function (t) {
        var r = t.route;
        e.props.navigation.emit({
          type: 'gestureStart',
          target: r.key,
        });
      };

      e.handleGestureEnd = function (t) {
        var r = t.route;
        e.props.navigation.emit({
          type: 'gestureEnd',
          target: r.key,
        });
      };

      e.handleGestureCancel = function (t) {
        var r = t.route;
        e.props.navigation.emit({
          type: 'gestureCancel',
          target: r.key,
        });
      };

      return e;
    }

    module8.default(
      w,
      [
        {
          key: 'render',
          value: function () {
            var e = this,
              n = this.props,
              o = n.state,
              u = module105.default(n, k),
              s = this.state,
              a = s.routes,
              l = s.descriptors,
              p = s.openingRouteKeys,
              v = s.closingRouteKeys;
            return (
              <module1110 style={S.container}>
                {React.createElement(
                  require('./1065').SafeAreaProviderCompat,
                  null,
                  React.createElement(require('./1074').SafeAreaInsetsContext.Consumer, null, function (t) {
                    return React.createElement(module1059.default.Consumer, null, function (n) {
                      return React.createElement(require('./1065').HeaderShownContext.Consumer, null, function (s) {
                        return React.createElement(
                          module1097.default,
                          module29.default(
                            {
                              insets: t,
                              isParentHeaderShown: s,
                              isParentModal: n,
                              getPreviousRoute: e.getPreviousRoute,
                              routes: a,
                              openingRouteKeys: p,
                              closingRouteKeys: v,
                              onOpenRoute: e.handleOpenRoute,
                              onCloseRoute: e.handleCloseRoute,
                              onTransitionStart: e.handleTransitionStart,
                              onTransitionEnd: e.handleTransitionEnd,
                              renderHeader: e.renderHeader,
                              renderScene: e.renderScene,
                              state: o,
                              descriptors: l,
                              onGestureStart: e.handleGestureStart,
                              onGestureEnd: e.handleGestureEnd,
                              onGestureCancel: e.handleGestureCancel,
                            },
                            u
                          )
                        );
                      });
                    });
                  })
                )}
              </module1110>
            );
          },
        },
      ],
      [
        {
          key: 'getDerivedStateFromProps',
          value: function (t, r) {
            if (
              (t.state.routes === r.previousRoutes ||
                ((c = t.state.routes.map(function (e) {
                  return e.key;
                })),
                (l = r.previousRoutes.map(function (e) {
                  return e.key;
                })),
                c.length === l.length &&
                  c.every(function (e, t) {
                    return e === l[t];
                  }))) &&
              r.routes.length
            ) {
              var n = r.routes,
                o = r.previousRoutes,
                u = t.descriptors,
                s = r.previousDescriptors;

              if (
                (t.descriptors !== r.previousDescriptors &&
                  ((u = r.routes.reduce(function (e, n) {
                    e[n.key] = t.descriptors[n.key] || r.descriptors[n.key];
                    return e;
                  }, {})),
                  (s = t.descriptors)),
                t.state.routes !== r.previousRoutes)
              ) {
                var a = t.state.routes.reduce(function (e, t) {
                  e[t.key] = t;
                  return e;
                }, {});
                n = r.routes.map(function (e) {
                  return a[e.key] || e;
                });
                o = t.state.routes;
              }

              return {
                routes: n,
                previousRoutes: o,
                descriptors: u,
                previousDescriptors: s,
              };
            }

            var c,
              l,
              f,
              p,
              y = t.state.index < t.state.routes.length - 1 ? t.state.routes.slice(0, t.state.index + 1) : t.state.routes,
              k = r.openingRouteKeys,
              v = r.closingRouteKeys,
              R = r.replacingRouteKeys,
              h = r.previousRoutes,
              K = h[h.length - 1],
              S = y[y.length - 1],
              E = function (e) {
                var n = t.descriptors[e] || r.descriptors[e];
                return !n || false !== n.options.animationEnabled;
              };

            if (K && K.key !== S.key)
              h.some(function (e) {
                return e.key === S.key;
              })
                ? y.some(function (e) {
                    return e.key === K.key;
                  }) ||
                  (E(K.key) &&
                    !v.includes(K.key) &&
                    ((v = [].concat(module35.default(v), [K.key])),
                    (k = k.filter(function (e) {
                      return e !== K.key;
                    })),
                    (R = R.filter(function (e) {
                      return e !== K.key;
                    })),
                    (y = [].concat(module35.default(y), [K]))))
                : E(S.key) &&
                  !k.includes(S.key) &&
                  ((k = [].concat(module35.default(k), [S.key])),
                  (v = v.filter(function (e) {
                    return e !== S.key;
                  })),
                  (R = R.filter(function (e) {
                    return e !== S.key;
                  })),
                  y.some(function (e) {
                    return e.key === K.key;
                  }) ||
                    ((k = k.filter(function (e) {
                      return e !== K.key;
                    })),
                    'pop' === ((f = S.key), null != (p = (t.descriptors[f] || r.descriptors[f]).options.animationTypeForReplace) ? p : 'push')
                      ? ((v = [].concat(module35.default(v), [K.key])),
                        (k = k.filter(function (e) {
                          return e !== S.key;
                        })),
                        (y = [].concat(module35.default(y), [K])))
                      : ((R = [].concat(module35.default(R), [K.key])),
                        (v = v.filter(function (e) {
                          return e !== K.key;
                        })),
                        (y = y.slice()).splice(y.length - 1, 0, K))));
            else if (R.length || v.length) {
              var w;
              (w = y = y.slice()).splice.apply(
                w,
                [y.length - 1, 0].concat(
                  module35.default(
                    r.routes.filter(function (e) {
                      var t = e.key;
                      return !!E(t) && (R.includes(t) || v.includes(t));
                    })
                  )
                )
              );
            }
            if (!y.length) throw new Error('There should always be at least one route in the navigation state.');
            var C = y.reduce(function (e, n) {
              e[n.key] = t.descriptors[n.key] || r.descriptors[n.key];
              return e;
            }, {});
            return {
              routes: y,
              previousRoutes: t.state.routes,
              previousDescriptors: t.descriptors,
              openingRouteKeys: k,
              closingRouteKeys: v,
              replacingRouteKeys: R,
              descriptors: C,
            };
          },
        },
      ]
    );
    return w;
  })(React.Component);

exports.default = module1065;
var S = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
  },
});
