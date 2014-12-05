#############################################################################
# Scale factor determines how the keyboard layout appears, it's best not
#   to alter this value here for display reasons, that should be done in
#   the sass or controller
#############################################################################
scale_factor = 5.0
$sf = scale_factor

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
$kg = {}
require_relative 'seedFiles/seedKeyGroups'

#############################################################################
# Keycodes
#   Linux maps the raw scancodes of keys into keycodes
#   Keycodes are then Mapped to actions or characters
#############################################################################

$kc = {}
require_relative 'seedFiles/seedKeyCodes'
# Blank Keycodes : these keycodes do not have default Linux actions mapped to them


#############################################################################
# Keyblocks
#   A grouping of keys by block, to allow easier formatting
#############################################################################
$kb = {}
require_relative 'seedFiles/seedKeyBlocks'


require_relative 'seedFiles/seedKeys'