var ReactNative = require('react-native'),
  module835 = require('@babel/runtime/helpers/interopRequireDefault')(require('./835')),
  module844 = {
    ARROW_DOWN: require('./841'),
    ARROW_UP: require('./842'),
    TICK: require('./843'),
    CLOSE: require('./844'),
  };

exports.ICONS = module844;
var l = ReactNative.StyleSheet.create({
  container: {
    width: '100%',
  },
  style: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    width: '100%',
    minHeight: 50,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: module835.default.BLACK,
    paddingHorizontal: 10,
    paddingVertical: 3,
    backgroundColor: module835.default.EBONY_CLAY,
  },
  label: {
    flex: 1,
    color: module835.default.HEATHER,
  },
  labelContainer: {
    flex: 1,
    flexDirection: 'row',
  },
  arrowIcon: {
    width: 20,
    height: 20,
  },
  tickIcon: {
    width: 20,
    height: 20,
  },
  closeIcon: {
    width: 30,
    height: 30,
  },
  badgeStyle: {
    flexDirection: 'row',
    alignItems: 'center',
    borderRadius: 10,
    backgroundColor: module835.default.ALTO,
    paddingHorizontal: 10,
    paddingVertical: 5,
  },
  badgeDotStyle: {
    width: 10,
    height: 10,
    borderRadius: 5,
    marginRight: 8,
    backgroundColor: module835.default.GREY,
  },
  badgeSeparator: {
    width: 5,
  },
  listBody: {
    height: '100%',
  },
  listBodyContainer: {
    flexGrow: 1,
    alignItems: 'center',
  },
  dropDownContainer: {
    position: 'absolute',
    backgroundColor: module835.default.EBONY_CLAY,
    borderRadius: 8,
    borderColor: module835.default.BLACK,
    borderWidth: 1,
    width: '100%',
    overflow: 'hidden',
    zIndex: 1e3,
  },
  modalContentContainer: {
    flexGrow: 1,
    backgroundColor: module835.default.EBONY_CLAY,
  },
  listItemContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 10,
    height: 40,
  },
  listItemLabel: {
    flex: 1,
    color: module835.default.HEATHER,
  },
  iconContainer: {
    marginRight: 10,
  },
  arrowIconContainer: {
    marginLeft: 10,
  },
  tickIconContainer: {
    marginLeft: 10,
  },
  closeIconContainer: {
    marginLeft: 10,
  },
  listParentLabel: {},
  listChildLabel: {},
  listParentContainer: {},
  listChildContainer: {
    paddingLeft: 40,
  },
  searchContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 10,
    borderBottomColor: module835.default.SHUTTLE_GREY,
    borderBottomWidth: 1,
  },
  searchTextInput: {
    flexGrow: 1,
    flexShrink: 1,
    margin: 0,
    paddingHorizontal: 10,
    paddingVertical: 5,
    borderRadius: 8,
    borderColor: module835.default.SHUTTLE_GREY,
    borderWidth: 1,
    color: module835.default.WHITE,
  },
  itemSeparator: {
    height: 1,
    backgroundColor: module835.default.SHUTTLE_GREY,
  },
  flatListContentContainer: {
    flexGrow: 1,
  },
  customItemContainer: {},
  customItemLabel: {
    fontStyle: 'italic',
  },
  listMessageContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 10,
  },
  listMessageText: {
    color: module835.default.HEATHER,
  },
  selectedItemContainer: {},
  selectedItemLabel: {},
  modalTitle: {
    fontSize: 18,
    color: module835.default.HEATHER,
  },
  extendableBadgeContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    flex: 1,
  },
  extendableBadgeItemContainer: {
    marginVertical: 3,
    marginEnd: 7,
  },
});
exports.default = l;
