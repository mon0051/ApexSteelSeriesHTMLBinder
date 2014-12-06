require_relative 'seedFiles/seed_globals'


#############################################################################
# Colors
#   Just here to avoid imputing magic numbers into the code, which i really
#   hate to do
#############################################################################
$red     = '#FF0000'
$green   = '#00FF00'
$white   = '#FFFFFF'
$blue    = '#0000FF'
$purple  = '#9000FF'

#############################################################################
# Keygroups
#   Used to identify the different colored areas of the keyboard
#############################################################################

load File.expand_path('../seedFiles/seedKeyGroups.rb', __FILE__)

#############################################################################
# Keycodes
#   Linux maps the raw scancodes of keys into keycodes
#   Keycodes are then Mapped to actions or characters
#############################################################################


load File.expand_path('../seedFiles/seedKeyCodes.rb', __FILE__)
# Blank Keycodes : these keycodes do not have default Linux actions mapped to them


#############################################################################
# Keyblocks
#   A grouping of keys by block, to allow easier formatting
#############################################################################

load File.expand_path('../seedFiles/seedKeyBlocks.rb', __FILE__)


load File.expand_path('../seedFiles/seedKeys.rb', __FILE__)