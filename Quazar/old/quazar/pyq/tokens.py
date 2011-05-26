class qToken:
   def __init__(self, text):
      self.text = text


class qtName(qToken):
   def __init__(self, text):
      self.text = text


class qtLabel(qToken):
   def __init__(self, text):
      self.text = text


class qtNameCall(qToken):
   def __init__(self, text):
      self.text = text


class qtCoreMessage(qToken):
   def __init__(self, text):
      self.text = text


class qtCallMessage(qToken):
   def __init__(self, text):
      self.text = text


class qtCodeOpen(qToken):
   def __init__(self, text):
      self.text = text

class qtCodeAppend(qToken):
   def __init__(self, text):
      self.text = text

class qtCodeCall(qToken):
   def __init__(self, text):
      self.text = text


class qtCodeInterpolate(qToken):
   def __init__(self, text):
      self.text = text


class qtCodeMatch(qToken):
   def __init__(self, text):
      self.text = text


class qtCodeClose(qToken):
   def __init__(self, text):
      self.text = text


class qtPath(qToken):
   def __init__(self, text):
      self.text = text


class qtInfix(qToken):
   def __init__(self, text):
      self.text = text


class qtAssignment(qToken):
   def __init__(self, text):
      self.text = text


class qtCompound(qToken):
   def __init__(self, text):
      self.text = text


class qtMix(qToken):
   def __init__(self, text):
      self.text = text


class qtPath(qToken):
   def __init__(self, text):
      self.text = text


class qtDecompositionStop(qToken):
   def __init__(self, text):
      self.text = text


class qtMixUp(qToken):
   def __init__(self, text):
      self.text = text


class qtMixOpen(qToken):
   def __init__(self, text):
      self.text = text


class qtMixClose(qToken):
   def __init__(self, text):
      self.text = text


class qtMatch(qToken):
   def __init__(self, text):
      self.text = text


class qtCommentOpen(qToken):
   def __init__(self, text):
      self.text = text


class qtCommentClose(qToken):
   def __init__(self, text):
      self.text = text


class qtScopeObject(qToken):
   def __init__(self, text):
      self.text = text
