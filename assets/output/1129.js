exports.ZERO_KEY = '00000000000000000000000000000000';
exports.ENC_IV = 'A55A';
exports.MAC_IV = '5AA5';

(function (n) {
  n.GetUid = '51';
  n.SetConfiguration = '5C';
  n.ChangeFileSettings = '5F';
  n.AuthEv2First = '71';
  n.WriteData = '8D';
  n.SelectFile = 'A4';
  n.ReadData = 'AD';
  n.AdditionalFrame = 'AF';
  n.ReadBinary = 'B0';
  n.ChangeKey = 'C4';
  n.GetFileSettings = 'F5';
  n.GetTamperStatus = 'F7';
})(exports.CommandCode || (exports.CommandCode = {}));

(function (n) {
  n[(n.CC = 0)] = 'CC';
  n[(n.NDEF = 1)] = 'NDEF';
  n[(n.Proprietary = 2)] = 'Proprietary';
})(exports.FileName || (exports.FileName = {}));

(function (n) {
  n[(n.Standard = 0)] = 'Standard';
})(exports.FileType || (exports.FileType = {}));

(function (n) {
  n[(n.MasterKey = 0)] = 'MasterKey';
  n[(n.AppKey = 1)] = 'AppKey';
  n[(n.SdmKey = 2)] = 'SdmKey';
  n[(n.IdkKey = 3)] = 'IdkKey';
  n[(n.Any = 14)] = 'Any';
  n[(n.None = 15)] = 'None';
})(exports.KeyType || (exports.KeyType = {}));

(function (n) {
  n[(n.ASCII = 1)] = 'ASCII';
})(exports.EncodingMode || (exports.EncodingMode = {}));

(function (n) {
  n[(n.Plain = 1)] = 'Plain';
  n[(n.MAC = 2)] = 'MAC';
  n[(n.Full = 3)] = 'Full';
})(exports.CommMode || (exports.CommMode = {}));

(function (n) {
  n[(n.PICC = 1)] = 'PICC';
  n[(n.SecureMessaging = 2)] = 'SecureMessaging';
  n[(n.Capability = 3)] = 'Capability';
  n[(n.TagTamper = 4)] = 'TagTamper';
  n[(n.Hardware = 5)] = 'Hardware';
})(exports.ConfigOption || (exports.ConfigOption = {}));

(function (n) {
  n[(n.Initialized = 1)] = 'Initialized';
  n[(n.ReadOnly = 2)] = 'ReadOnly';
})(exports.TagState || (exports.TagState = {}));
