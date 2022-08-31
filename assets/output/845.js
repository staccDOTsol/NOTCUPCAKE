var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = C(t);
    if (n && n.has(e)) return n.get(e);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var o in e)
      if ('default' !== o && Object.prototype.hasOwnProperty.call(e, o)) {
        var c = u ? Object.getOwnPropertyDescriptor(e, o) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, o, c);
        else l[o] = e[o];
      }

    l.default = e;
    if (n) n.set(e, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module835 = require('@babel/runtime/helpers/interopRequireDefault')(require('./835')),
  module833 = require('@babel/runtime/helpers/interopRequireDefault')(require('./833')),
  module846 = require('@babel/runtime/helpers/interopRequireDefault')(require('./846')),
  module849 = require('@babel/runtime/helpers/interopRequireDefault')(require('./849')),
  module850 = require('@babel/runtime/helpers/interopRequireDefault')(require('./850'));

function C(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (C = function (e) {
    return e ? n : t;
  })(e);
}

var E = ReactNative.Dimensions.get('window').height;
var S = ReactNative.StyleSheet.create({
    flex: {
      flex: 1,
    },
  }),
  module847 = React.memo(function (C) {
    var module847 = C.value,
      b = undefined === module847 ? null : module847,
      M = C.items,
      L = undefined === M ? [] : M,
      T = C.open,
      h = C.placeholder,
      O = undefined === h ? null : h,
      D = C.closeAfterSelecting,
      x = undefined === D || D,
      w = C.labelProps,
      R = undefined === w ? {} : w,
      A = C.disabled,
      k = undefined !== A && A,
      _ = C.disabledStyle,
      P = undefined === _ ? {} : _,
      N = C.placeholderStyle,
      B = undefined === N ? {} : N,
      V = C.containerStyle,
      H = undefined === V ? {} : V,
      W = C.style,
      G = undefined === W ? {} : W,
      F = C.textStyle,
      U = undefined === F ? {} : F,
      z = C.labelStyle,
      j = undefined === z ? {} : z,
      Y = C.arrowIconStyle,
      K = undefined === Y ? {} : Y,
      X = C.tickIconStyle,
      q = undefined === X ? {} : X,
      J = C.closeIconStyle,
      Q = undefined === J ? {} : J,
      Z = C.hideSelectedItemIcon,
      $ = undefined !== Z && Z,
      ee = C.badgeStyle,
      te = undefined === ee ? {} : ee,
      ne = C.badgeTextStyle,
      le = undefined === ne ? {} : ne,
      re = C.badgeDotStyle,
      ue = undefined === re ? {} : re,
      oe = C.iconContainerStyle,
      ae = undefined === oe ? {} : oe,
      ie = C.searchContainerStyle,
      ce = undefined === ie ? {} : ie,
      fe = C.searchTextInputStyle,
      de = undefined === fe ? {} : fe,
      se = C.searchPlaceholderTextColor,
      me = undefined === se ? module835.default.GREY : se,
      ve = C.dropDownContainerStyle,
      ye = undefined === ve ? {} : ve,
      Ie = C.modalContentContainerStyle,
      Ce = undefined === Ie ? {} : Ie,
      Ee = C.arrowIconContainerStyle,
      Se = undefined === Ee ? {} : Ee,
      pe = C.closeIconContainerStyle,
      be = undefined === pe ? {} : pe,
      Me = C.tickIconContainerStyle,
      Le = undefined === Me ? {} : Me,
      Te = C.listItemContainerStyle,
      he = undefined === Te ? {} : Te,
      ge = C.listItemLabelStyle,
      Oe = undefined === ge ? {} : ge,
      De = C.listChildContainerStyle,
      xe = undefined === De ? {} : De,
      we = C.listChildLabelStyle,
      Re = undefined === we ? {} : we,
      Ae = C.listParentContainerStyle,
      ke = undefined === Ae ? {} : Ae,
      Pe = C.listParentLabelStyle,
      Ne = undefined === Pe ? {} : Pe,
      Be = C.selectedItemContainerStyle,
      Ve = undefined === Be ? {} : Be,
      He = C.selectedItemLabelStyle,
      We = undefined === He ? {} : He,
      Ge = C.disabledItemContainerStyle,
      Fe = undefined === Ge ? {} : Ge,
      Ue = C.disabledItemLabelStyle,
      ze = undefined === Ue ? {} : Ue,
      je = C.customItemContainerStyle,
      Ye = undefined === je ? {} : je,
      Ke = C.customItemLabelStyle,
      Xe = undefined === Ke ? {} : Ke,
      qe = C.listMessageContainerStyle,
      Je = undefined === qe ? {} : qe,
      Qe = C.listMessageTextStyle,
      Ze = undefined === Qe ? {} : Qe,
      $e = C.itemSeparatorStyle,
      et = undefined === $e ? {} : $e,
      tt = C.badgeSeparatorStyle,
      nt = undefined === tt ? {} : tt,
      lt = C.modalTitleStyle,
      rt = undefined === lt ? {} : lt,
      ut = C.listMode,
      module847 = undefined === ut ? require('./847').LIST_MODE.DEFAULT : ut,
      at = C.categorySelectable,
      it = undefined === at || at,
      ct = C.searchable,
      ft = undefined !== ct && ct,
      dt = C.searchPlaceholder,
      st = undefined === dt ? null : dt,
      mt = C.modalTitle,
      vt = C.schema,
      yt = undefined === vt ? {} : vt,
      It = C.language,
      module847 = undefined === It ? require('./847').LANGUAGE.DEFAULT : It,
      Et = C.translation,
      St = undefined === Et ? {} : Et,
      pt = C.multiple,
      bt = undefined !== pt && pt,
      Mt = C.multipleText,
      Lt = undefined === Mt ? null : Mt,
      Tt = C.mode,
      module847 = undefined === Tt ? require('./847').MODE.DEFAULT : Tt,
      gt = C.itemKey,
      Ot = undefined === gt ? null : gt,
      Dt = C.maxHeight,
      xt = undefined === Dt ? 200 : Dt,
      wt = C.renderBadgeItem,
      Rt = undefined === wt ? null : wt,
      At = C.renderListItem,
      kt = undefined === At ? null : At,
      _t = C.itemSeparator,
      Pt = undefined !== _t && _t,
      Nt = C.bottomOffset,
      Bt = undefined === Nt ? 0 : Nt,
      Vt = C.badgeColors,
      module847 = undefined === Vt ? require('./847').BADGE_COLORS : Vt,
      Wt = C.badgeDotColors,
      module847 = undefined === Wt ? require('./847').BADGE_DOT_COLORS : Wt,
      Ft = C.showArrowIcon,
      Ut = undefined === Ft || Ft,
      zt = C.showBadgeDot,
      jt = undefined === zt || zt,
      Yt = C.showTickIcon,
      Kt = undefined === Yt || Yt,
      Xt = C.stickyHeader,
      qt = undefined !== Xt && Xt,
      Jt = C.autoScroll,
      Qt = undefined !== Jt && Jt,
      Zt = C.ArrowUpIconComponent,
      $t = undefined === Zt ? null : Zt,
      en = C.ArrowDownIconComponent,
      tn = undefined === en ? null : en,
      nn = C.TickIconComponent,
      ln = undefined === nn ? null : nn,
      rn = C.CloseIconComponent,
      un = undefined === rn ? null : rn,
      on = C.ListEmptyComponent,
      an = undefined === on ? null : on,
      cn = C.ActivityIndicatorComponent,
      fn = undefined === cn ? null : cn,
      dn = C.activityIndicatorSize,
      sn = undefined === dn ? 30 : dn,
      mn = C.activityIndicatorColor,
      vn = undefined === mn ? module835.default.GREY : mn,
      yn = C.props,
      In = undefined === yn ? {} : yn,
      Cn = C.itemProps,
      En = undefined === Cn ? {} : Cn,
      Sn = C.badgeProps,
      pn = undefined === Sn ? {} : Sn,
      bn = C.modalProps,
      Mn = undefined === bn ? {} : bn,
      Ln = C.flatListProps,
      Tn = undefined === Ln ? {} : Ln,
      hn = C.scrollViewProps,
      gn = undefined === hn ? {} : hn,
      On = C.searchTextInputProps,
      Dn = undefined === On ? {} : On,
      xn = C.loading,
      wn = undefined !== xn && xn,
      Rn = C.min,
      An = undefined === Rn ? null : Rn,
      kn = C.max,
      _n = undefined === kn ? null : kn,
      Pn = C.addCustomItem,
      Nn = undefined !== Pn && Pn,
      Bn = C.setOpen,
      Vn = undefined === Bn ? function () {} : Bn,
      Hn = C.setItems,
      Wn = undefined === Hn ? function () {} : Hn,
      Gn = C.disableBorderRadius,
      Fn = undefined === Gn || Gn,
      Un = C.containerProps,
      zn = undefined === Un ? {} : Un,
      jn = C.onLayout,
      Yn = undefined === jn ? function (e) {} : jn,
      Kn = C.onPress,
      Xn = undefined === Kn ? function (e) {} : Kn,
      qn = C.onOpen,
      Jn = undefined === qn ? function () {} : qn,
      Qn = C.onClose,
      Zn = undefined === Qn ? function () {} : Qn,
      $n = C.setValue,
      el = undefined === $n ? function (e) {} : $n,
      tl = C.onChangeValue,
      nl = undefined === tl ? function (e) {} : tl,
      ll = C.onChangeSearchText,
      rl = undefined === ll ? function (e) {} : ll,
      ul = C.onDirectionChanged,
      ol = undefined === ul ? function (e) {} : ul,
      al = C.zIndex,
      il = undefined === al ? 5e3 : al,
      cl = C.zIndexInverse,
      fl = undefined === cl ? 6e3 : cl,
      dl = C.rtl,
      sl = undefined !== dl && dl,
      ml = C.dropDownDirection,
      module847 = undefined === ml ? require('./847').DROPDOWN_DIRECTION.DEFAULT : ml,
      yl = C.disableLocalSearch,
      Il = undefined !== yl && yl,
      Cl = C.theme,
      El = undefined === Cl ? module833.default.DEFAULT : Cl,
      Sl = C.testID,
      pl = C.closeOnBackPressed,
      bl = undefined !== pl && pl,
      Ml = C.extendableBadgeContainer,
      Ll = undefined !== Ml && Ml,
      Tl = C.onSelectItem,
      hl = undefined === Tl ? function (e) {} : Tl,
      gl = React.useState([]),
      Ol = module23.default(gl, 2),
      Dl = Ol[0],
      xl = Ol[1],
      wl = React.useState(''),
      Rl = module23.default(wl, 2),
      Al = Rl[0],
      kl = Rl[1],
      _l = React.useState(0),
      Pl = module23.default(_l, 2),
      Nl = Pl[0],
      Bl = Pl[1],
      module847 = React.useState(require('./847').GET_DROPDOWN_DIRECTION(module847)),
      Hl = module23.default(module847, 2),
      Wl = Hl[0],
      Gl = Hl[1],
      Fl = React.useRef(),
      Ul = React.useRef(null),
      zl = React.useRef(false),
      jl = React.useRef({}),
      Yl = React.useRef(),
      Kl = React.useRef(),
      Xl = React.useRef({
        value: null,
        items: [],
      }),
      ql = React.useMemo(
        function () {
          return module833.default[El].default;
        },
        [El]
      ),
      Jl = React.useMemo(
        function () {
          return module833.default[El].ICONS;
        },
        [El]
      ),
      module847 = React.useMemo(
        function () {
          return module29.default({}, require('./847').SCHEMA, yt);
        },
        [yt]
      );

    React.useEffect(function () {
      Xl.current.value = bt ? (Array.isArray(b) ? b : []) : b;
      var e = [];
      if (null !== b && Array.isArray(b) && 0 !== b.length)
        e = bt
          ? L.filter(function (e) {
              return b.includes(e[module847.value]);
            })
          : L.find(function (e) {
              return e[module847.value] === b;
            });
      xl(e);
    }, []);
    React.useEffect(
      function () {
        if (bl && T) {
          var e = ReactNative.BackHandler.addEventListener('hardwareBackPress', function () {
            Vn(false);
            return true;
          });
          return function () {
            return e.remove();
          };
        }
      },
      [T]
    );
    React.useEffect(
      function () {
        xl(function (e) {
          return module35.default(e).map(function (e) {
            var t = L.find(function (t) {
              return t[module847.value] === e[module847.value];
            });
            return t ? module29.default({}, e, t) : e;
          });
        });
      },
      [L]
    );
    React.useEffect(
      function () {
        if (bt)
          xl(function (e) {
            if (null === b || (Array.isArray(b) && 0 === b.length)) return [];
            var t = module35.default(e).filter(function (e) {
                return b.includes(e[module847.value]);
              }),
              l = b.reduce(function (e, l) {
                if (
                  -1 ===
                  t.findIndex(function (e) {
                    return e[module847.value] === l;
                  })
                ) {
                  var u = L.find(function (e) {
                    return e[module847.value] === l;
                  });
                  return u ? [].concat(module35.default(e), [u]) : e;
                }

                return e;
              }, []);
            return [].concat(module35.default(t), module35.default(l));
          });
        else {
          var e = [];

          if (null !== b) {
            var t = L.find(function (e) {
              return e[module847.value] === b;
            });
            if (t) e.push(t);
          }

          xl(e);
        }
        if (zl.current) nl(b);
        else zl.current = true;
      },
      [b, L]
    );
    React.useEffect(
      function () {
        Xl.current.value = b;
      },
      [b]
    );
    React.useEffect(
      function () {
        Xl.current.items = Dl;
      },
      [Dl]
    );
    React.useEffect(
      function () {
        if (T && Qt) tr();
      },
      [T]
    );
    React.useEffect(
      function () {
        Gl(require('./847').GET_DROPDOWN_DIRECTION(module847));
      },
      [module847]
    );
    React.useEffect(
      function () {
        if (module847 === require('./847').MODE.SIMPLE) Fl.current = null;
      },
      [module847]
    );
    React.useCallback(
      function () {
        Vn(true);
        Jn();
      },
      [Vn, Jn]
    );

    var Zl = React.useCallback(
        function () {
          Vn(false);
          kl('');
          Zn();
        },
        [Vn, Zn]
      ),
      $l = React.useCallback(
        function () {
          var e = !T;
          Vn(e);
          kl('');
          if (e) Jn();
          else Zn();
          return e;
        },
        [T, Vn, Jn, Zn]
      ),
      er = React.useMemo(
        function () {
          var e = L.filter(function (e) {
            return undefined === e[module847.parent] || null === e[module847.parent];
          });
          L.filter(function (e) {
            return undefined !== e[module847.parent] && null !== e[module847.parent];
          }).forEach(function (t) {
            var n = e.findIndex(function (e) {
              return e[module847.parent] === t[module847.parent] || e[module847.value] === t[module847.parent];
            });
            if (n > -1) e.splice(n + 1, 0, t);
          });
          return e;
        },
        [L, module847]
      ),
      tr = React.useCallback(
        function () {
          setTimeout(function () {
            if (Kl.current || Yl.current) {
              var e = Array.isArray(Xl.current.value);
              if (null === Xl.current.value || (e && 0 === Xl.current.value.length)) return;
              var t = e ? Xl.current.value[0] : Xl.current.value;

              if (Kl.current && jl.current.hasOwnProperty(t)) {
                var n;
                if (!(null == (n = Kl.current) || null == n.scrollTo))
                  n.scrollTo({
                    x: 0,
                    y: jl.current[t],
                    animated: true,
                  });
              } else {
                var l,
                  u = er.findIndex(function (e) {
                    return e[module847.value] === t;
                  });
                if (u > -1)
                  null == (l = Yl.current) ||
                    null == l.scrollToIndex ||
                    l.scrollToIndex({
                      index: u,
                      animated: true,
                    });
              }
            }
          }, 200);
        },
        [er]
      ),
      nr = React.useCallback(function (e) {
        var t = e.averageItemLength,
          n = e.index;
        if (!(null == Yl.current.scrollToOffset))
          Yl.current.scrollToOffset({
            offset: t * n,
            animated: true,
          });
      }, []),
      lr = React.useMemo(
        function () {
          var e = [];
          if (qt)
            er.filter(function (e) {
              return undefined === e[module847.parent] || null === e[module847.parent];
            }).forEach(function (t) {
              var n = er.findIndex(function (e) {
                return e[module847.value] === t[module847.value];
              });
              if (n > -1) e.push(n);
            });
          return e;
        },
        [qt, er]
      ),
      rr = React.useMemo(
        function () {
          if (0 === Al.length) return er;
          if (Il) return er;
          var e,
            n = [],
            l = er.filter(function (e) {
              return !!e[module847.label].toLowerCase().includes(Al.toLowerCase()) && (n.push(e[module847.value]), true);
            });
          l.forEach(function (e, t) {
            if (undefined !== e[module847.parent] && null !== e[module847.parent] && !n.includes(e[module847.parent])) {
              var u = er.find(function (t) {
                return t[module847.value] === e[module847.parent];
              });
              n.push(e[module847.parent]);
              l.splice(t, 0, u);
            }
          });
          if (
            !(
              (0 !== l.length &&
                -1 !==
                  l.findIndex(function (e) {
                    return e[module847.label].toLowerCase() === Al.toLowerCase();
                  })) ||
              !Nn
            )
          )
            l.push(((e = {}), module256.default(e, module847.label, Al), module256.default(e, module847.value, Al.replace(' ', '-')), module256.default(e, 'custom', true), e));
          return l;
        },
        [er, module847, Al, Nn]
      ),
      ur = React.useMemo(
        function () {
          return bt ? (null === b ? [] : module35.default(new Set(b))) : b;
        },
        [b, bt]
      ),
      or = React.useMemo(
        function () {
          return bt
            ? Dl.filter(function (e) {
                return ur.includes(e[module847.value]);
              })
            : [];
        },
        [Dl, ur, module847, bt]
      ),
      module847 = React.useMemo(
        function () {
          return require('./847').TRANSLATIONS.hasOwnProperty(module847) ? module847 : require('./847').LANGUAGE.FALLBACK;
        },
        [module847]
      ),
      module847 = React.useCallback(
        function (e) {
          return require('./847').GET_TRANSLATION(e, module847, St);
        },
        [module847, St]
      ),
      cr = React.useMemo(
        function () {
          return null != O ? O : module847('PLACEHOLDER');
        },
        [O, module847]
      ),
      fr = React.useMemo(
        function () {
          return null != Lt ? Lt : module847('SELECTED_ITEMS_COUNT_TEXT');
        },
        [Lt, module847]
      ),
      module847 = React.useMemo(
        function () {
          try {
            return module847;
          } catch (e) {
            return require('./847').MODE.SIMPLE;
          }
        },
        [module847]
      ),
      sr = React.useMemo(
        function () {
          return !!(null === ur || (Array.isArray(ur) && 0 === ur.length)) || 0 === Dl.length;
        },
        [Dl, ur]
      ),
      mr = React.useCallback(
        function () {
          if (bt) return ur;
          if (sr) return null;

          try {
            return Dl.find(function (e) {
              return e[module847.value] === ur;
            });
          } catch (e) {
            return null;
          }
        },
        [ur, Dl, sr, bt]
      ),
      vr = React.useCallback(
        function () {
          var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : null,
            t = mr();

          if (bt) {
            if (t.length > 0) {
              var n,
                l = fr;
              if ('string' != typeof l) l = null != (n = l[t.length]) ? n : l.n;
              return l.replace('{count}', t.length);
            }

            return e;
          }

          try {
            return t[module847.label];
          } catch (t) {
            return e;
          }
        },
        [mr, bt, fr, module847]
      ),
      yr = React.useMemo(
        function () {
          return vr(cr);
        },
        [vr, cr]
      ),
      Ir = React.useCallback(
        function () {
          if (bt) return null;
          var e = mr();

          try {
            var t;
            return null != (t = e[module847.icon]) ? t : null;
          } catch (e) {
            return null;
          }
        },
        [mr, bt, module847]
      ),
      module847 = React.useCallback(
        function () {
          var t, n, l, o, c;
          return module76.default.async(
            function (f) {
              for (;;)
                switch ((f.prev = f.next)) {
                  case 0:
                    if ((Xn((t = !T)), !t || module847 !== require('./847').DROPDOWN_DIRECTION.AUTO)) {
                      f.next = 12;
                      break;
                    }

                    f.next = 5;
                    return module76.default.awrap(
                      new Promise(function (e) {
                        return Ul.current.measureInWindow(function (...args) {
                          return e(args);
                        });
                      })
                    );

                  case 5:
                    n = f.sent;
                    l = module23.default(n, 2);
                    o = l[1];
                    ol((c = o + xt + Nl + Bt < E ? 'top' : 'bottom'));
                    Gl(c);

                  case 12:
                    $l();

                  case 13:
                  case 'end':
                    return f.stop();
                }
            },
            null,
            null,
            null,
            Promise
          );
        },
        [T, $l, Xn, ol, xt, Nl, Bt, module847]
      ),
      Er = React.useCallback(
        function (e) {
          if ('web' !== ReactNative.Platform.OS) e.persist();
          Yn(e);
          Bl(e.nativeEvent.layout.height);
        },
        [Yn]
      ),
      module847 = React.useMemo(
        function () {
          return module847 === require('./847').LIST_MODE.MODAL
            ? null
            : Fn && T
            ? 'top' === Wl
              ? {
                  borderBottomLeftRadius: 0,
                  borderBottomRightRadius: 0,
                }
              : {
                  borderTopLeftRadius: 0,
                  borderTopRightRadius: 0,
                }
            : {};
        },
        [Fn, T, Wl, module847]
      ),
      module847 = React.useMemo(
        function () {
          return module847 === require('./847').LIST_MODE.MODAL
            ? null
            : Fn && T
            ? 'top' === Wl
              ? {
                  borderTopLeftRadius: 0,
                  borderTopRightRadius: 0,
                }
              : {
                  borderBottomLeftRadius: 0,
                  borderBottomRightRadius: 0,
                }
            : undefined;
        },
        [Fn, T, Wl, module847]
      ),
      br = React.useMemo(
        function () {
          return k && P;
        },
        [k, P]
      ),
      Mr = React.useMemo(
        function () {
          return T ? ('top' === Wl ? il : fl) : il;
        },
        [il, fl, Wl, T]
      ),
      module847 = React.useMemo(
        function () {
          return [
            require('./847').RTL_DIRECTION(sl, ql.style),
            {
              zIndex: Mr,
            },
          ].concat(module35.default([G].flat()), module35.default([br].flat()), [module847]);
        },
        [sl, G, br, module847, Mr, ql]
      ),
      Tr = React.useMemo(
        function () {
          return sr && B;
        },
        [sr, B]
      ),
      hr = React.useMemo(
        function () {
          return [ql.label].concat(module35.default([U].flat()), module35.default([!sr && j].flat()), module35.default([Tr].flat()));
        },
        [U, Tr, j, sr, ql]
      ),
      gr = React.useMemo(
        function () {
          return [ql.arrowIcon].concat(module35.default([K].flat()));
        },
        [K, ql]
      ),
      Or = React.useMemo(
        function () {
          var e;
          return [
            ql.dropDownContainer,
            ((e = {}), module256.default(e, Wl, Nl - 1), module256.default(e, 'maxHeight', xt), module256.default(e, 'zIndex', Mr), e),
          ].concat(module35.default([ye].flat()), [module847]);
        },
        [ye, Nl, xt, module847, Wl, Mr, ql]
      ),
      Dr = React.useMemo(
        function () {
          return [ql.modalContentContainer].concat(module35.default([Ce].flat()));
        },
        [Ce, ql]
      ),
      xr = React.useMemo(
        function () {
          return (
            'android' !== ReactNative.Platform.OS && {
              zIndex: Mr,
            }
          );
        },
        [Mr]
      ),
      wr = React.useMemo(
        function () {
          return [ql.container, xr].concat(module35.default([H].flat()));
        },
        [xr, H, ql]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_STYLE(sl, ql.arrowIconContainer)].concat(module35.default([Se].flat()));
        },
        [sl, Se, ql]
      ),
      Ar = React.useMemo(
        function () {
          if (Ut) {
            e =
              T && null !== $t
                ? React.default.createElement($t, {
                    style: gr,
                  })
                : T || null === tn
                ? React.default.createElement(ReactNative.Image, {
                    source: T ? Jl.ARROW_UP : Jl.ARROW_DOWN,
                    style: gr,
                  })
                : React.default.createElement(tn, {
                    style: gr,
                  });
            return React.default.createElement(
              ReactNative.View,
              {
                style: module847,
              },
              e
            );
          } else return null;

          var e;
        },
        [Ut, T, $t, tn, gr, module847, Jl]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_STYLE(sl, ql.iconContainer)].concat(module35.default([ae].flat()));
        },
        [sl, ae, ql]
      ),
      _r = React.useMemo(
        function () {
          var e = Ir();
          return $
            ? null
            : null !== e &&
                React.default.createElement(
                  ReactNative.View,
                  {
                    style: module847,
                  },
                  React.default.createElement(e, null)
                );
        },
        [Ir, $, module847]
      ),
      Pr = React.useMemo(
        function () {
          return React.default.createElement(
            React.default.Fragment,
            null,
            _r,
            React.default.createElement(
              ReactNative.Text,
              module29.default(
                {
                  style: hr,
                },
                R
              ),
              yr
            )
          );
        },
        [_r, hr, R, yr]
      ),
      Nr = React.useCallback(
        function (e) {
          el(function (t) {
            var l = module35.default(t),
              u = l.findIndex(function (t) {
                return t === e;
              });
            l.splice(u, 1);
            return l;
          });
        },
        [el]
      ),
      Br = React.useMemo(
        function () {
          return 'string' == typeof module847 ? [module847] : module847;
        },
        [module847]
      ),
      Vr = React.useMemo(
        function () {
          return 'string' == typeof module847 ? [module847] : module847;
        },
        [module847]
      ),
      Hr = React.useCallback(
        function (e) {
          e = '' + e;
          var module847 = Math.abs(require('./847').ASCII_CODE(e)) % Br.length;
          return Br[module847];
        },
        [Br]
      ),
      Wr = React.useCallback(
        function (e) {
          e = '' + e;
          var module847 = Math.abs(require('./847').ASCII_CODE(e)) % Vr.length;
          return Vr[module847];
        },
        [Vr]
      ),
      Gr = React.useMemo(
        function () {
          return null !== Rt ? Rt : module846.default;
        },
        [Rt]
      ),
      Fr = React.useCallback(
        function (e) {
          var t,
            n = e.item;
          return React.default.createElement(Gr, {
            props: pn,
            rtl: sl,
            label: n[module847.label],
            value: n[module847.value],
            IconComponent: null != (t = n[module847.icon]) ? t : null,
            textStyle: U,
            badgeStyle: te,
            badgeTextStyle: le,
            badgeDotStyle: ue,
            getBadgeColor: Hr,
            getBadgeDotColor: Wr,
            showBadgeDot: jt,
            onPress: Nr,
            theme: El,
            THEME: ql,
          });
        },
        [sl, module847, U, te, le, ue, Hr, Wr, jt, Nr, El, ql]
      ),
      Ur = React.useMemo(
        function () {
          return null === Ot ? module847.value : Ot;
        },
        [Ot, module847]
      ),
      zr = React.useCallback(
        function (e) {
          return '' + e[Ur];
        },
        [Ur]
      ),
      jr = React.useMemo(
        function () {
          return [ql.badgeSeparator].concat(module35.default([nt].flat()));
        },
        [nt, ql]
      ),
      Yr = React.useCallback(
        function () {
          return React.default.createElement(ReactNative.View, {
            style: jr,
          });
        },
        [jr]
      ),
      Kr = React.useMemo(
        function () {
          return [
            ql.labelContainer,
            sl && {
              transform: [
                {
                  scaleX: -1,
                },
              ],
            },
          ];
        },
        [sl, ql]
      ),
      Xr = React.useCallback(
        function () {
          return React.default.createElement(
            ReactNative.View,
            {
              style: Kr,
            },
            React.default.createElement(
              ReactNative.Text,
              module29.default(
                {
                  style: hr,
                },
                R
              ),
              cr
            )
          );
        },
        [hr, Kr, R, cr]
      ),
      qr = React.useCallback(function (e) {
        Fl.current = e;
      }, []),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_DIRECTION(sl, ql.extendableBadgeContainer)];
        },
        [sl, ql]
      ),
      Qr = React.useMemo(
        function () {
          return [
            ql.extendableBadgeItemContainer,
            sl && {
              marginEnd: 0,
              marginStart: ql.extendableBadgeItemContainer.marginEnd,
            },
          ];
        },
        [sl, ql]
      ),
      Zr = React.useCallback(
        function (e) {
          var t = e.selectedItems;
          return t.length > 0
            ? React.default.createElement(
                ReactNative.View,
                {
                  style: module847,
                },
                t.map(function (e, t) {
                  return React.default.createElement(
                    ReactNative.View,
                    {
                      key: t,
                      style: Qr,
                    },
                    React.default.createElement(Fr, {
                      item: e,
                    })
                  );
                })
              )
            : React.default.createElement(Xr, null);
        },
        [Fr, module847, Qr]
      ),
      $r = React.useMemo(
        function () {
          return Ll
            ? React.default.createElement(Zr, {
                selectedItems: or,
              })
            : React.default.createElement(ReactNative.FlatList, {
                ref: qr,
                data: or,
                renderItem: Fr,
                horizontal: true,
                showsHorizontalScrollIndicator: false,
                keyExtractor: zr,
                ItemSeparatorComponent: Yr,
                ListEmptyComponent: Xr,
                style: ql.listBody,
                contentContainerStyle: ql.listBodyContainer,
                inverted: sl,
              });
        },
        [sl, Ll, Zr, or, Fr, zr, Yr, Xr, ql]
      ),
      module847 = React.useMemo(
        function () {
          switch (module847) {
            case require('./847').MODE.SIMPLE:
              return Pr;

            case require('./847').MODE.BADGE:
              return bt ? $r : Pr;
          }
        },
        [module847, Pr, $r, bt]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_DIRECTION(sl, ql.listItemContainer)].concat(module35.default([he].flat()), [
            qt && {
              backgroundColor: ql.style.backgroundColor,
            },
          ]);
        },
        [sl, he, ql]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_STYLE(sl, ql.tickIconContainer)].concat(module35.default([Le].flat()));
        },
        [sl, Le, ql]
      ),
      lu = React.useMemo(
        function () {
          return [ql.listItemLabel].concat(module35.default([U].flat()), module35.default([Oe].flat()));
        },
        [U, Oe, ql]
      ),
      ru = React.useMemo(
        function () {
          return [ql.tickIcon].concat(module35.default([q].flat()));
        },
        [q, ql]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_DIRECTION(sl, ql.searchContainer)].concat(module35.default([ce].flat()), [
            !ft &&
              !mt &&
              module847 === require('./847').LIST_MODE.MODAL && {
                flexDirection: 'row-reverse',
              },
          ]);
        },
        [sl, module847, ft, mt, ce, ql]
      ),
      ou = React.useMemo(
        function () {
          return [U, ql.searchTextInput].concat(module35.default([de].flat()));
        },
        [U, de, ql]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_STYLE(sl, ql.closeIconContainer)].concat(module35.default([be].flat()));
        },
        [sl, be, ql]
      ),
      iu = React.useMemo(
        function () {
          return [ql.closeIcon].concat(module35.default([Q].flat()));
        },
        [Q, ql]
      ),
      cu = React.useMemo(
        function () {
          return [ql.listMessageContainer].concat(module35.default([Je].flat()));
        },
        [Je, ql]
      ),
      fu = React.useMemo(
        function () {
          return [ql.listMessageText].concat(module35.default([U].flat()), module35.default([Ze].flat()));
        },
        [Ze, ql]
      ),
      du = React.useCallback(
        function (e) {
          if (
            (false !== (arguments.length > 1 && undefined !== arguments[1] && arguments[1]) &&
              ((e.custom = false),
              Wn(function (t) {
                return [].concat(module35.default(t), [e]);
              })),
            bt)
          ) {
            if (Xl.current.value.includes(e[module847.value])) {
              var t = Xl.current.items.findIndex(function (t) {
                return t[module847.value] === e[module847.value];
              });

              if (t > -1) {
                Xl.current.items.splice(t, 1);
                hl(Xl.current.items.slice());
              }
            } else hl([].concat(module35.default(Xl.current.items), [e]));
          } else hl(e);
          el(function (t) {
            if (bt) {
              var l = null !== t ? module35.default(t) : [];

              if (l.includes(e[module847.value])) {
                if (Number.isInteger(An) && An >= l.length) return t;
                var u = l.findIndex(function (t) {
                  return t === e[module847.value];
                });
                l.splice(u, 1);
              } else {
                if (Number.isInteger(_n) && _n <= l.length) return t;
                l.push(e[module847.value]);
              }

              return l;
            }

            return e[module847.value];
          });
          xl(function (t) {
            if (bt) {
              var l = module35.default(t);

              if (
                l.findIndex(function (t) {
                  return t[module847.value] === e[module847.value];
                }) > -1
              ) {
                if (Number.isInteger(An) && An >= l.length) return t;
                var u = l.findIndex(function (t) {
                  return t[module847.value] === e[module847.value];
                });
                l.splice(u, 1);
                return l;
              }

              if (Number.isInteger(_n) && _n <= l.length) return t;
              else {
                l.push(e);
                return l;
              }
            }

            return [e];
          });
          if (x && !bt) Zl();
        },
        [el, bt, An, _n, Zl, hl, x, bt, Wn, module847]
      ),
      su = React.useCallback(
        function () {
          if (Kt) {
            e =
              null !== ln
                ? React.default.createElement(ln, {
                    style: ru,
                  })
                : React.default.createElement(ReactNative.Image, {
                    source: Jl.TICK,
                    style: ru,
                  });
            return React.default.createElement(
              ReactNative.View,
              {
                style: module847,
              },
              e
            );
          } else return null;

          var e;
        },
        [ln, ru, module847, Kt, Jl]
      ),
      mu = React.useMemo(
        function () {
          return null !== kt ? kt : module849.default;
        },
        [kt]
      ),
      vu = React.useMemo(
        function () {
          return [ql.selectedItemContainer, Ve];
        },
        [ql, Ve]
      ),
      yu = React.useMemo(
        function () {
          return [ql.selectedItemLabel, We];
        },
        [ql, We]
      ),
      Iu = React.useMemo(
        function () {
          return [ql.disabledItemContainer, Fe];
        },
        [ql, Fe]
      ),
      Cu = React.useMemo(
        function () {
          return [ql.disabledItemContainer, ze];
        },
        [ql, ze]
      ),
      Eu = React.useCallback(
        function (e) {
          var t,
            n,
            l,
            u,
            f,
            s,
            v,
            module849,
            I = e.item,
            C = null != (t = I[module847.icon]) ? t : null;
          if (C)
            C = React.default.createElement(
              ReactNative.View,
              {
                style: module847,
              },
              React.default.createElement(C, null)
            );
          module849 = bt ? ur.includes(I[module847.value]) : ur === I[module847.value];
          return React.default.createElement(mu, {
            rtl: sl,
            item: I,
            label: I[module847.label],
            value: I[module847.value],
            parent: null != (n = null == I ? undefined : I[module847.parent]) ? n : null,
            selectable: null != (l = null == I ? undefined : I[module847.selectable]) ? l : null,
            disabled: null != (u = null == I ? undefined : I[module847.disabled]) && u,
            custom: null != (f = I.custom) && f,
            props: En,
            isSelected: module849,
            IconComponent: C,
            TickIconComponent: su,
            listItemContainerStyle: module847,
            listItemLabelStyle: lu,
            listChildContainerStyle: xe,
            listChildLabelStyle: Re,
            listParentContainerStyle: ke,
            listParentLabelStyle: Ne,
            customItemContainerStyle: Ye,
            customItemLabelStyle: Xe,
            selectedItemContainerStyle: vu,
            selectedItemLabelStyle: yu,
            disabledItemContainerStyle: Iu,
            disabledItemLabelStyle: Cu,
            labelStyle: null != (s = null == I ? undefined : I[module847.labelStyle]) ? s : {},
            containerStyle: null != (v = null == I ? undefined : I[module847.containerStyle]) ? v : {},
            categorySelectable: it,
            onPress: du,
            setPosition: module847,
            theme: El,
            THEME: ql,
          });
        },
        [sl, mu, lu, module847, xe, Re, ke, Ne, module847, lu, Ye, Xe, vu, yu, Iu, Cu, su, module847, ur, bt, En, it, du, El, ql]
      ),
      module847 = React.useCallback(function (e, t) {
        if (Qt && module847 === require('./847').LIST_MODE.SCROLLVIEW) jl.current[e] = t;
      }, []),
      pu = React.useCallback(
        function () {
          return Pt
            ? React.default.createElement(ReactNative.View, {
                style: [ql.itemSeparator].concat(module35.default([et].flat())),
              })
            : null;
        },
        [Pt, et, ql]
      ),
      bu = React.useMemo(
        function () {
          return null !== st ? st : module847('SEARCH_PLACEHOLDER');
        },
        [st, module847]
      ),
      Mu = React.useCallback(
        function (e) {
          kl(e);
          rl(e);
        },
        [rl]
      ),
      module847 = React.useMemo(
        function () {
          if (module847 !== require('./847').LIST_MODE.MODAL) return null;
          else {
            e =
              null !== un
                ? React.default.createElement(un, {
                    style: iu,
                  })
                : React.default.createElement(ReactNative.Image, {
                    source: Jl.CLOSE,
                    style: iu,
                  });
            return React.default.createElement(
              ReactNative.TouchableOpacity,
              {
                style: module847,
                onPress: Zl,
              },
              e
            );
          }
          var e;
        },
        [module847, un, iu, module847, Zl, Jl]
      ),
      module847 = React.useMemo(
        function () {
          return module847 === require('./847').LIST_MODE.MODAL || ft;
        },
        [module847, ft]
      ),
      hu = React.useMemo(
        function () {
          return [ql.modalTitle].concat(module35.default([rt].flat()), module35.default([U].flat()));
        },
        [U, rt, ql]
      ),
      module847 = React.useMemo(
        function () {
          return (
            module847 &&
            React.default.createElement(
              ReactNative.View,
              {
                style: module847,
              },
              ft
                ? React.default.createElement(
                    ReactNative.TextInput,
                    module29.default(
                      {
                        value: Al,
                        onChangeText: Mu,
                        style: ou,
                        placeholder: bu,
                        placeholderTextColor: me,
                      },
                      Dn
                    )
                  )
                : module847 === require('./847').LIST_MODE.MODAL &&
                    React.default.createElement(
                      ReactNative.View,
                      {
                        style: S.flex,
                      },
                      React.default.createElement(
                        ReactNative.Text,
                        {
                          style: hu,
                        },
                        mt
                      )
                    ),
              module847
            )
          );
        },
        [ft, module847, mt, module847, Mu, hu, module847, ou, bu, me, Al, Dn]
      ),
      Ou = React.useCallback(
        function (e) {
          return React.default.createElement(
            ReactNative.View,
            {
              style: Or,
            },
            module847,
            e
          );
        },
        [Or, module847]
      ),
      Du = React.useCallback(
        function () {
          var module76;
          module76 = null !== fn ? fn : ReactNative.ActivityIndicator;
          return React.default.createElement(module76, {
            size: sn,
            color: vn,
          });
        },
        [fn, sn, vn]
      ),
      xu = React.useCallback(
        function () {
          var module76,
            t = module847('NOTHING_TO_SHOW');
          module76 = null !== an ? an : module850.default;
          return React.default.createElement(module76, {
            listMessageContainerStyle: cu,
            listMessageTextStyle: fu,
            ActivityIndicatorComponent: Du,
            loading: wn,
            message: t,
          });
        },
        [module847, cu, fu, an, Du, wn]
      ),
      wu = React.useCallback(function () {
        Vn(false);
      }, []),
      Ru = React.useMemo(
        function () {
          return React.default.createElement(
            ReactNative.FlatList,
            module29.default(
              {
                ref: Yl,
                style: S.flex,
                contentContainerStyle: ql.flatListContentContainer,
                ListEmptyComponent: xu,
                data: rr,
                renderItem: Eu,
                keyExtractor: zr,
                extraData: ur,
                ItemSeparatorComponent: pu,
                stickyHeaderIndices: lr,
                onScrollToIndexFailed: nr,
              },
              Tn
            )
          );
        },
        [rr, ur, Eu, zr, pu, Tn, xu, ql]
      ),
      Au = React.useMemo(
        function () {
          return React.default.createElement(
            ReactNative.ScrollView,
            module29.default(
              {
                ref: Kl,
                nestedScrollEnabled: true,
                stickyHeaderIndices: lr,
              },
              gn
            ),
            rr.map(function (e, t) {
              return React.default.createElement(
                React.Fragment,
                {
                  key: e[Ur],
                },
                t > 0 && pu(),
                Eu({
                  item: e,
                })
              );
            }),
            0 === rr.length && xu()
          );
        },
        [Eu, Ur, gn, xu]
      ),
      ku = React.useMemo(
        function () {
          return React.default.createElement(
            ReactNative.Modal,
            module29.default(
              {
                visible: T,
                presentationStyle: 'fullScreen',
                onRequestClose: wu,
              },
              Mn
            ),
            React.default.createElement(
              ReactNative.SafeAreaView,
              {
                style: Dr,
              },
              module847,
              Ru
            )
          );
        },
        [T, module847, Dr, Mn]
      ),
      module847 = React.useMemo(
        function () {
          switch (module847) {
            case require('./847').LIST_MODE.FLATLIST:
              return Ou(Ru);

            case require('./847').LIST_MODE.SCROLLVIEW:
              return Ou(Au);

            case require('./847').LIST_MODE.MODAL:
              return ku;
          }
        },
        [module847, Ru, Au, ku, Ou]
      ),
      module847 = React.useMemo(
        function () {
          return T || module847 === require('./847').LIST_MODE.MODAL ? module847 : null;
        },
        [T, module847, module847]
      ),
      Nu = React.useCallback(function (e) {
        Ul.current = e;
      }, []),
      Bu = React.useMemo(
        function () {
          return k ? 'none' : 'auto';
        },
        [k]
      );

    return React.default.createElement(
      ReactNative.View,
      module29.default(
        {
          style: wr,
        },
        zn
      ),
      React.default.createElement(
        ReactNative.TouchableOpacity,
        module29.default(
          {
            style: module847,
            onPress: module847,
            onLayout: Er,
          },
          In,
          {
            ref: Nu,
            pointerEvents: Bu,
            disabled: k,
            testID: Sl,
          }
        ),
        module847,
        Ar
      ),
      module847
    );
  });
exports.default = module847;
