# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from game_engine/UIState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UIState(genpy.Message):
  _md5sum = "f7f5fff7672344f07999ef4cb15a0ebc"
  _type = "game_engine/UIState"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool setupStart
bool gameStart
bool teamGame
bool paused
bool aiGame
bool simGame
int32 seconds
"""
  __slots__ = ['setupStart','gameStart','teamGame','paused','aiGame','simGame','seconds']
  _slot_types = ['bool','bool','bool','bool','bool','bool','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       setupStart,gameStart,teamGame,paused,aiGame,simGame,seconds

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UIState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.setupStart is None:
        self.setupStart = False
      if self.gameStart is None:
        self.gameStart = False
      if self.teamGame is None:
        self.teamGame = False
      if self.paused is None:
        self.paused = False
      if self.aiGame is None:
        self.aiGame = False
      if self.simGame is None:
        self.simGame = False
      if self.seconds is None:
        self.seconds = 0
    else:
      self.setupStart = False
      self.gameStart = False
      self.teamGame = False
      self.paused = False
      self.aiGame = False
      self.simGame = False
      self.seconds = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6Bi().pack(_x.setupStart, _x.gameStart, _x.teamGame, _x.paused, _x.aiGame, _x.simGame, _x.seconds))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 10
      (_x.setupStart, _x.gameStart, _x.teamGame, _x.paused, _x.aiGame, _x.simGame, _x.seconds,) = _get_struct_6Bi().unpack(str[start:end])
      self.setupStart = bool(self.setupStart)
      self.gameStart = bool(self.gameStart)
      self.teamGame = bool(self.teamGame)
      self.paused = bool(self.paused)
      self.aiGame = bool(self.aiGame)
      self.simGame = bool(self.simGame)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6Bi().pack(_x.setupStart, _x.gameStart, _x.teamGame, _x.paused, _x.aiGame, _x.simGame, _x.seconds))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 10
      (_x.setupStart, _x.gameStart, _x.teamGame, _x.paused, _x.aiGame, _x.simGame, _x.seconds,) = _get_struct_6Bi().unpack(str[start:end])
      self.setupStart = bool(self.setupStart)
      self.gameStart = bool(self.gameStart)
      self.teamGame = bool(self.teamGame)
      self.paused = bool(self.paused)
      self.aiGame = bool(self.aiGame)
      self.simGame = bool(self.simGame)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6Bi = None
def _get_struct_6Bi():
    global _struct_6Bi
    if _struct_6Bi is None:
        _struct_6Bi = struct.Struct("<6Bi")
    return _struct_6Bi
