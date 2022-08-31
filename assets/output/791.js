exports.handlePress = function (n) {
  var o = n.onPress,
    u = n.value,
    s = n.onValueChange;
  if (o && s) console.warn('onPress in the scope of RadioButtonGroup will not be executed, use onValueChange instead');
  if (s) s(u);
  else if (!(null == o)) o();
};

exports.isChecked = function (n) {
  var o = n.value,
    u = n.status,
    s = n.contextValue;
  return undefined !== s && null !== s ? (s === o ? 'checked' : 'unchecked') : u;
};
