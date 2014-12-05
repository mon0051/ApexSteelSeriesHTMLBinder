#############################################################################
# Scale factor determines how the keyboard layout appears, it's best not
#   to alter this value here for display reasons, that should be done in
#   the sass or controller
#############################################################################
scale_factor = 5.0
sf = scale_factor

#############################################################################
# Colors
#   Just here to avoid imputing magic numbers into the code, which i really
#   hate to do
#############################################################################
red     = '#FF0000'
green   = '#00FF00'
white   = '#FFFFFF'
blue    = '#0000FF'
purple  = '#9000FF'

#############################################################################
# Keygroups
#   Used to identify the different colored areas of the keyboard
#############################################################################

kg = {}
kg[:left]   = KeyGroup.create({name: 'left', color1: red, color2: blue, color3: white, color4: green})
kg[:top]    = KeyGroup.create({name: 'top', color1: purple, color2: red, color3: blue, color4: white})
kg[:right]  = KeyGroup.create({name: 'right', color1: green, color2: purple, color3: red, color4: blue})
kg[:bottom] = KeyGroup.create({name: 'bottom', color1: white, color2: green, color3: purple, color4: red})
kg[:logo]   = KeyGroup.create({name: 'logo', color1: blue, color2: blue, color3: blue, color4: blue})

#############################################################################
# Keycodes
#   Linux maps the raw scancodes of keys into keycodes
#   Keycodes are then Mapped to actions or characters
#############################################################################

kc = {}

# Blank Keycodes : these keycodes do not have default Linux actions mapped to them

kc[:k179]=Keycode.create({code: '179', mapped_action: ''})
kc[:k180]=Keycode.create({code: '180', mapped_action: ''})
kc[:k181]=Keycode.create({code: '181', mapped_action: ''})
kc[:k182]=Keycode.create({code: '182', mapped_action: ''})
kc[:k183]=Keycode.create({code: '183', mapped_action: ''})
kc[:k184]=Keycode.create({code: '184', mapped_action: ''})
kc[:k185]=Keycode.create({code: '185', mapped_action: ''})
kc[:k186]=Keycode.create({code: '186', mapped_action: ''})
kc[:k187]=Keycode.create({code: '187', mapped_action: ''})
kc[:k188]=Keycode.create({code: '188', mapped_action: ''})
kc[:k189]=Keycode.create({code: '189', mapped_action: ''})
kc[:k190]=Keycode.create({code: '190', mapped_action: ''})
kc[:k191]=Keycode.create({code: '191', mapped_action: ''})
kc[:k192]=Keycode.create({code: '192', mapped_action: ''})
kc[:k193]=Keycode.create({code: '193', mapped_action: ''})
kc[:k194]=Keycode.create({code: '194', mapped_action: ''})
kc[:k195]=Keycode.create({code: '195', mapped_action: ''})
kc[:k196]=Keycode.create({code: '196', mapped_action: ''})
kc[:k197]=Keycode.create({code: '197', mapped_action: ''})
kc[:k198]=Keycode.create({code: '198', mapped_action: ''})
kc[:k199]=Keycode.create({code: '199', mapped_action: ''})
kc[:k200]=Keycode.create({code: '200', mapped_action: ''})
kc[:k201]=Keycode.create({code: '201', mapped_action: ''})
kc[:k202]=Keycode.create({code: '202', mapped_action: ''})
kc[:k203]=Keycode.create({code: '203', mapped_action: ''})
kc[:k204]=Keycode.create({code: '204', mapped_action: ''})

# Media Volume Keycodes : These keycodes are already mapped by default in Linux

kc[:k123]=Keycode.create({code: '123', mapped_action: 'XF86AudioRaiseVolume'})
kc[:k122]=Keycode.create({code: '122', mapped_action: 'XF86AudioLowerVolume'})
kc[:k121]=Keycode.create({code: '121', mapped_action: 'XF86AudioMute'})

# Media Track Keycodes

kc[:k173]=Keycode.create({code: '173', mapped_action: 'XF86AudioPrev'})
kc[:k171]=Keycode.create({code: '171', mapped_action: 'XF86AudioNext'})
kc[:k172]=Keycode.create({code: '172', mapped_action: 'XF86AudioPlay'})

# PlaceHolder
kc[:k999]=Keycode.create({code: '999', mapped_action: ''})

#############################################################################
# Keyblocks
#   A grouping of keys by block, to allow easier formatting
#############################################################################
kb = {}
kb[:LKeys]      = Keyblock.create({name:'LKeys'          ,x_offset: 0     * sf, y_offset: 0    * sf})
kb[:MXKeys]     = Keyblock.create({name:'MXKeys'         ,x_offset: 0     * sf, y_offset: 22.5 * sf})
kb[:MKeys1]     = Keyblock.create({name:'MKeys1'         ,x_offset: 45    * sf, y_offset: 0    * sf})
kb[:MKeys2]     = Keyblock.create({name:'MKeys2'         ,x_offset: 90    * sf, y_offset: 0    * sf})
kb[:MKeys3]     = Keyblock.create({name:'MKeys3'         ,x_offset: 135   * sf, y_offset: 0    * sf})
kb[:MediaKeys1] = Keyblock.create({name:'MediaKeys1'     ,x_offset: 285   * sf, y_offset: 0    * sf})
kb[:MediaKeys2] = Keyblock.create({name:'MediaKeys2'     ,x_offset: 285   * sf, y_offset: 22.5 * sf})
kb[:Esc]        = Keyblock.create({name:'Escape'         ,x_offset: 22.5  * sf, y_offset: 0    * sf})
kb[:QwertyNo]   = Keyblock.create({name:'QwertyNumbers'  ,x_offset: 22.5  * sf, y_offset: 22.5 * sf})
kb[:QwertyL1]   = Keyblock.create({name:'QwertyLetters1' ,x_offset: 22.5  * sf, y_offset: 32.5 * sf})
kb[:QwertyL2]   = Keyblock.create({name:'QwertyLetters2' ,x_offset: 22.5  * sf, y_offset: 42.5 * sf})
kb[:QwertyL3]   = Keyblock.create({name:'QwertyLetters3' ,x_offset: 22.5  * sf, y_offset: 52.5 * sf})
kb[:QwertyFunc] = Keyblock.create({name:'QwertyFunctions',x_offset: 22.5  * sf, y_offset: 62.5 * sf})
#############################################################################
# Keys
#   This Section represents the physical keys as they appear on the keyboard
#   The data here will be used to display the keys, and also save what
#   keycodes are mapped to them
#############################################################################
# MX Keys
Key.create({name: 'MX1' , scancode: '700e8', keygroup_id: kg[:left].id, keycode1: kc[:k179].id, x_pos: 0 * sf , y_pos: 0*sf , keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX2' , scancode: '700e9', keygroup_id: kg[:left].id, keycode1: kc[:k180].id, x_pos: 10*sf  , y_pos: 0*sf , keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX3' , scancode: '700ea', keygroup_id: kg[:left].id, keycode1: kc[:k181].id, x_pos: 0*sf   , y_pos: 10*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX4' , scancode: '700eb', keygroup_id: kg[:left].id, keycode1: kc[:k182].id, x_pos: 10*sf  , y_pos: 10*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX5' , scancode: '700ec', keygroup_id: kg[:left].id, keycode1: kc[:k183].id, x_pos: 0*sf   , y_pos: 20*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX6' , scancode: '700ed', keygroup_id: kg[:left].id, keycode1: kc[:k184].id, x_pos: 10*sf  , y_pos: 20*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX7' , scancode: '700ee', keygroup_id: kg[:left].id, keycode1: kc[:k185].id, x_pos: 0*sf   , y_pos: 30*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX8' , scancode: '700ef', keygroup_id: kg[:left].id, keycode1: kc[:k186].id, x_pos: 10*sf  , y_pos: 30*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX9' , scancode: '700f0', keygroup_id: kg[:left].id, keycode1: kc[:k187].id, x_pos: 0*sf   , y_pos: 40*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX10', scancode: '700f1', keygroup_id: kg[:left].id, keycode1: kc[:k188].id, x_pos: 10*sf  , y_pos: 40*sf, keyblock_id: kb[:MXKeys].id})
# M Keys
Key.create({name: 'M1'  , scancode: '700f4', keygroup_id: kg[:top].id, keycode1: kc[:k189].id, x_pos: 0*sf    , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M2'  , scancode: '700f5', keygroup_id: kg[:top].id, keycode1: kc[:k190].id, x_pos: 10*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M3'  , scancode: '700f6', keygroup_id: kg[:top].id, keycode1: kc[:k191].id, x_pos: 20*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M4'  , scancode: '700f7', keygroup_id: kg[:top].id, keycode1: kc[:k192].id, x_pos: 30*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M5'  , scancode: '700f8', keygroup_id: kg[:top].id, keycode1: kc[:k193].id, x_pos: 0*sf    , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M6'  , scancode: '700f9', keygroup_id: kg[:top].id, keycode1: kc[:k194].id, x_pos: 10*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M7'  , scancode: '700fa', keygroup_id: kg[:top].id, keycode1: kc[:k195].id, x_pos: 20*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M8'  , scancode: '700fb', keygroup_id: kg[:top].id, keycode1: kc[:k196].id, x_pos: 30*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M9'  , scancode: '700fc', keygroup_id: kg[:top].id, keycode1: kc[:k197].id, x_pos: 0*sf    , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
Key.create({name: 'M10' , scancode: '700fd', keygroup_id: kg[:top].id, keycode1: kc[:k198].id, x_pos: 10*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
Key.create({name: 'M11' , scancode: '700fe', keygroup_id: kg[:top].id, keycode1: kc[:k199].id, x_pos: 20*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
Key.create({name: 'M12' , scancode: '700ff', keygroup_id: kg[:top].id, keycode1: kc[:k200].id, x_pos: 30*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
# L Keys
Key.create({name: 'L1', scancode: '700a8', keygroup_id: kg[:left].id, keycode1: kc[:k201].id, x_pos: 0*sf     , y_pos: 0*sf , keyblock_id: kb[:LKeys].id})
Key.create({name: 'L2', scancode: '700a9', keygroup_id: kg[:left].id, keycode1: kc[:k202].id, x_pos: 10*sf    , y_pos: 0*sf , keyblock_id: kb[:LKeys].id})
Key.create({name: 'L3', scancode: '700aa', keygroup_id: kg[:left].id, keycode1: kc[:k203].id, x_pos: 0*sf     , y_pos: 10*sf, keyblock_id: kb[:LKeys].id})
Key.create({name: 'L4', scancode: '700ab', keygroup_id: kg[:left].id, keycode1: kc[:k204].id, x_pos: 10*sf    , y_pos: 10*sf, keyblock_id: kb[:LKeys].id})
# Sound Keys
Key.create({name: 'V+'  , scancode: 'c00e9' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 0*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'V-'  , scancode: 'c00e9' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 10*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'Mute', scancode: 'c00e2' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 20*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'Prev', scancode: 'c00b6' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 30*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'Next', scancode: 'c00b5' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 40*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'Paus', scancode: 'c00cd' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 50*sf , keyblock_id: kb[:MediaKeys1].id})
# Regular Keys
# Qwerty Numbers
Key.create({name: 'Escape', scancode: '00000', keygroup_id: kg[:top].id   , keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf , keyblock_id: kb[:Esc].id})
Key.create({name: '~'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '1'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 10*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '2'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 20*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '3'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 30*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '4'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 40*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '5'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 50*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '6'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 60*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '7'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 70*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '8'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 80*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '9'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 90*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '0'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 100*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '-'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 110*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '='     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 120*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
Key.create({name:'BckSpc' , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 130*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyNo].id})
# Qwerty Line 1
Key.create({name:'Tab'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf     , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'Q'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 15*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'W'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 25*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'E'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 35*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'R'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 45*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'T'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 55*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'Y'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 65*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'U'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 75*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'I'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 85*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'O'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 95*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'P'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 105*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'['    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 115*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:']'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 125*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'\\'   , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 135*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
# Qwerty Line 2
Key.create({name:'Caps' , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf     , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'A'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 18*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'S'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 28*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'D'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 38*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'F'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 48*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'G'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 58*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'H'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 68*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'J'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 78*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'K'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 88*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'L'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 98*sf    , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:';'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 108*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'\''   , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 118*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'Rtn'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 128*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
# Qwerty Line 3
Key.create({name:'LShft', scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf     , y_pos: 0*sf ,   keyblock_id: kb[:QwertyL3].id})
Key.create({name:'Z'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 22*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'X'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 32*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'C'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 42*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'V'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 52*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'B'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 62*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'N'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 72*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'M'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 82*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:','    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 92*sf    , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'.'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 102*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL3].id})
Key.create({name:'/'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 112*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL3].id})
Key.create({name:'RShft', scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 122*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL3].id})
# Qwerty Functions
Key.create({name:'LCtrl', scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})
Key.create({name:'Win'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 13*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})
Key.create({name:'LAlt' , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 28*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})
Key.create({name:'Space', scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 43*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})
Key.create({name:'RAlt' , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 97*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})
Key.create({name:'Apex' , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 112*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})
Key.create({name:'List' , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 127*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})
Key.create({name:'RCtrl', scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 137*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id})

#############################################################################
# Keys
#   This Section represents the physical keys as they appear on the keyboard
#   The data here will be used to display the keys, and also save what
#   keycodes are mapped to them
#############################################################################
# MX Keys
Key.create({name: 'MX1' , scancode: '700e8', keygroup_id: kg[:left].id, keycode1: kc[:k179].id, x_pos: 0 * sf , y_pos: 0*sf , keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX2' , scancode: '700e9', keygroup_id: kg[:left].id, keycode1: kc[:k180].id, x_pos: 10*sf  , y_pos: 0*sf , keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX3' , scancode: '700ea', keygroup_id: kg[:left].id, keycode1: kc[:k181].id, x_pos: 0*sf   , y_pos: 10*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX4' , scancode: '700eb', keygroup_id: kg[:left].id, keycode1: kc[:k182].id, x_pos: 10*sf  , y_pos: 10*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX5' , scancode: '700ec', keygroup_id: kg[:left].id, keycode1: kc[:k183].id, x_pos: 0*sf   , y_pos: 20*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX6' , scancode: '700ed', keygroup_id: kg[:left].id, keycode1: kc[:k184].id, x_pos: 10*sf  , y_pos: 20*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX7' , scancode: '700ee', keygroup_id: kg[:left].id, keycode1: kc[:k185].id, x_pos: 0*sf   , y_pos: 30*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX8' , scancode: '700ef', keygroup_id: kg[:left].id, keycode1: kc[:k186].id, x_pos: 10*sf  , y_pos: 30*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX9' , scancode: '700f0', keygroup_id: kg[:left].id, keycode1: kc[:k187].id, x_pos: 0*sf   , y_pos: 40*sf, keyblock_id: kb[:MXKeys].id})
Key.create({name: 'MX10', scancode: '700f1', keygroup_id: kg[:left].id, keycode1: kc[:k188].id, x_pos: 10*sf  , y_pos: 40*sf, keyblock_id: kb[:MXKeys].id})
# M Keys
Key.create({name: 'M1'  , scancode: '700f4', keygroup_id: kg[:top].id, keycode1: kc[:k189].id, x_pos: 0*sf    , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M2'  , scancode: '700f5', keygroup_id: kg[:top].id, keycode1: kc[:k190].id, x_pos: 10*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M3'  , scancode: '700f6', keygroup_id: kg[:top].id, keycode1: kc[:k191].id, x_pos: 20*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M4'  , scancode: '700f7', keygroup_id: kg[:top].id, keycode1: kc[:k192].id, x_pos: 30*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys1].id})
Key.create({name: 'M5'  , scancode: '700f8', keygroup_id: kg[:top].id, keycode1: kc[:k193].id, x_pos: 0*sf    , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M6'  , scancode: '700f9', keygroup_id: kg[:top].id, keycode1: kc[:k194].id, x_pos: 10*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M7'  , scancode: '700fa', keygroup_id: kg[:top].id, keycode1: kc[:k195].id, x_pos: 20*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M8'  , scancode: '700fb', keygroup_id: kg[:top].id, keycode1: kc[:k196].id, x_pos: 30*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys2].id})
Key.create({name: 'M9'  , scancode: '700fc', keygroup_id: kg[:top].id, keycode1: kc[:k197].id, x_pos: 0*sf    , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
Key.create({name: 'M10' , scancode: '700fd', keygroup_id: kg[:top].id, keycode1: kc[:k198].id, x_pos: 10*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
Key.create({name: 'M11' , scancode: '700fe', keygroup_id: kg[:top].id, keycode1: kc[:k199].id, x_pos: 20*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
Key.create({name: 'M12' , scancode: '700ff', keygroup_id: kg[:top].id, keycode1: kc[:k200].id, x_pos: 30*sf   , y_pos: 0*sf , keyblock_id: kb[:MKeys3].id})
# L Keys
Key.create({name: 'L1', scancode: '700a8', keygroup_id: kg[:left].id, keycode1: kc[:k201].id, x_pos: 0*sf     , y_pos: 0*sf , keyblock_id: kb[:LKeys].id})
Key.create({name: 'L2', scancode: '700a9', keygroup_id: kg[:left].id, keycode1: kc[:k202].id, x_pos: 10*sf    , y_pos: 0*sf , keyblock_id: kb[:LKeys].id})
Key.create({name: 'L3', scancode: '700aa', keygroup_id: kg[:left].id, keycode1: kc[:k203].id, x_pos: 0*sf     , y_pos: 10*sf, keyblock_id: kb[:LKeys].id})
Key.create({name: 'L4', scancode: '700ab', keygroup_id: kg[:left].id, keycode1: kc[:k204].id, x_pos: 10*sf    , y_pos: 10*sf, keyblock_id: kb[:LKeys].id})
# Sound Keys
Key.create({name: 'V+'  , scancode: 'c00e9' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 0*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'V-'  , scancode: 'c00e9' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 10*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'Mute', scancode: 'c00e2' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 20*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'Prev', scancode: 'c00b6' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 30*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name: 'Next', scancode: 'c00b5' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 40*sf , keyblock_id: kb[:MediaKeys1].id})
Key.create({name:'Pause', scancode: 'c00cd' , keygroup_id: kg[:right].id, keycode1: kc[:k123].id, x_pos: 0*sf  , y_pos: 50*sf , keyblock_id: kb[:MediaKeys1].id})
# Regular Keys
Key.create({name: 'Escape', scancode: '00000', keygroup_id: kg[:top].id   , keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf  , keyblock_id: kb[:Esc].id,eclass:'Escape'})
# Qwerty Numbers
Key.create({name: '~'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '1'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 10*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '2'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 20*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '3'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 30*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '4'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 40*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '5'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 50*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '6'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 60*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '7'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 70*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '8'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 80*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '9'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 90*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '0'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 100*sf , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '-'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 110*sf , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name: '='     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 120*sf , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id})
Key.create({name:'Backspace',scancode:'00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 130*sf , y_pos: 0*sf  , keyblock_id: kb[:QwertyNo].id,eclass: 'Backspace'})
# Qwerty Line 1
Key.create({name:'Tab'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id,eclass: 'Tab'})
Key.create({name:'Q'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 15*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'W'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 25*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'E'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 35*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'R'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 45*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'T'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 55*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'Y'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 65*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'U'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 75*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'I'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 85*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'O'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 95*sf  , y_pos: 0*sf  , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'P'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 105*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'['      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 115*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:']'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 125*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id})
Key.create({name:'\\'     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 135*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL1].id,eclass: 'BSlash'})
# Qwerty Line 2
Key.create({name:'Caps'   , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id,eclass: 'Caps'})
Key.create({name:'A'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 18*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'S'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 28*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'D'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 38*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'F'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 48*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'G'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 58*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'H'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 68*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'J'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 78*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'K'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 88*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'L'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 98*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:';'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 108*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'\''     , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 118*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id})
Key.create({name:'Rtn'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 128*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL2].id,eclass: 'Return'})
# Qwerty Line 3
Key.create({name:'LShft'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf ,   keyblock_id: kb[:QwertyL3].id,eclass: 'LShift'})
Key.create({name:'Z'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 22*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'X'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 32*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'C'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 42*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'V'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 52*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'B'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 62*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'N'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 72*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'M'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 82*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:','      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 92*sf  , y_pos: 0*sf ,  keyblock_id: kb[:QwertyL3].id})
Key.create({name:'.'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 102*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL3].id})
Key.create({name:'/'      , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 112*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL3].id})
Key.create({name:'RShft'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 122*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyL3].id,eclass: 'RShift'})
# Qwerty Functions
Key.create({name:'LCtrl'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 0*sf   , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'Ctrl'})
Key.create({name:'Win'    , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 13*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'Win'})
Key.create({name:'LAlt'   , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 28*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'Alt'})
Key.create({name:'Space'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 43*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'Space'})
Key.create({name:'RAlt'   , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 97*sf  , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'Alt'})
Key.create({name:'Apex'   , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 112*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'Apex'})
Key.create({name:'List'   , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 127*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'ListKey'})
Key.create({name:'RCtrl'  , scancode: '00000', keygroup_id: kg[:bottom].id, keycode1: kc[:k999], x_pos: 137*sf , y_pos: 0*sf , keyblock_id: kb[:QwertyFunc].id,eclass: 'Ctrl'})
