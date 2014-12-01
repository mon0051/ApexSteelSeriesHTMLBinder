#############################################################################
# Colors
#   Just here to avoid imputing magic numbers into the code, which i really
#   hate to do
#
#############################################################################

red     = 'FF0000'
blue    = '0000FF'
green   = '00FF00'
white   = 'FFFFFF'
purple  = '9000FF'

#############################################################################
# Keygroups
#   Used to identify the different colored areas of the keyboard
#############################################################################

kg = {}
kg[:left]    =   KeyGroup.create({name:'left',   color1:red,   color2:white,  color3:green,  color4:blue })
kg[:top]     =   KeyGroup.create({name:'top',    color1:purple,color2:red,    color3:white,  color4:green})
kg[:right]   =   KeyGroup.create({name:'right',  color1:blue,  color2:purple, color3:red,    color4:white})
kg[:bottom]  =   KeyGroup.create({name:'bottom', color1:green, color2:blue,   color3:purple, color4:red  })
kg[:logo]    =   KeyGroup.create({name:'logo',   color1:white, color2:white,  color3:white,  color4:white})

#############################################################################
# Keycodes
#   Linux maps the raw scancodes of keys into keycodes
#   Keycodes are then Mapped to actions or characters
#############################################################################

kc = {}

# Blank Keycodes : these keycodes do not have default Linux actions mapped to them

kc[:k179]=Keycode.create({code:'179',  mapped_action:''})
kc[:k180]=Keycode.create({code:'180',  mapped_action:''})
kc[:k181]=Keycode.create({code:'181',  mapped_action:''})
kc[:k182]=Keycode.create({code:'182',  mapped_action:''})
kc[:k183]=Keycode.create({code:'183',  mapped_action:''})
kc[:k184]=Keycode.create({code:'184',  mapped_action:''})
kc[:k185]=Keycode.create({code:'185',  mapped_action:''})
kc[:k186]=Keycode.create({code:'186',  mapped_action:''})
kc[:k187]=Keycode.create({code:'187',  mapped_action:''})
kc[:k188]=Keycode.create({code:'188',  mapped_action:''})
kc[:k189]=Keycode.create({code:'189',  mapped_action:''})
kc[:k190]=Keycode.create({code:'190',  mapped_action:''})
kc[:k191]=Keycode.create({code:'191',  mapped_action:''})
kc[:k192]=Keycode.create({code:'192',  mapped_action:''})
kc[:k193]=Keycode.create({code:'193',  mapped_action:''})
kc[:k194]=Keycode.create({code:'194',  mapped_action:''})
kc[:k195]=Keycode.create({code:'195',  mapped_action:''})
kc[:k196]=Keycode.create({code:'196',  mapped_action:''})
kc[:k197]=Keycode.create({code:'197',  mapped_action:''})
kc[:k198]=Keycode.create({code:'198',  mapped_action:''})
kc[:k199]=Keycode.create({code:'199',  mapped_action:''})
kc[:k200]=Keycode.create({code:'200',  mapped_action:''})
kc[:k201]=Keycode.create({code:'201',  mapped_action:''})
kc[:k202]=Keycode.create({code:'202',  mapped_action:''})
kc[:k203]=Keycode.create({code:'203',  mapped_action:''})
kc[:k204]=Keycode.create({code:'204',  mapped_action:''})

# Media Volume Keycodes : These keycodes are already mapped by default in Linux

kc[:k123]=Keycode.create({code:'123',  mapped_action:'XF86AudioRaiseVolume'})
kc[:k122]=Keycode.create({code:'122',  mapped_action:'XF86AudioLowerVolume'})
kc[:k121]=Keycode.create({code:'121',  mapped_action:'XF86AudioMute'})

# Media Track Keycodes

kc[:k173]=Keycode.create({code:'173',  mapped_action:'XF86AudioPrev'})
kc[:k171]=Keycode.create({code:'171',  mapped_action:'XF86AudioNext'})
kc[:k172]=Keycode.create({code:'172',  mapped_action:'XF86AudioPlay'})

#############################################################################
# Keys
#   This Section represents the physical keys as they appear on the keyboard
#   The data here will be used to display the keys, and also save what
#   keycodes are mapped to them
#############################################################################

# MX Keys

Key.create({   name:'MX1', scancode:'700e8',   keygroup_id: kg[:left].id,    keycode1: kc[:k179].id })
Key.create({   name:'MX2', scancode:'700e9',   keygroup_id: kg[:left].id,    keycode1: kc[:k180].id })
Key.create({   name:'MX3', scancode:'700ea',   keygroup_id: kg[:left].id,    keycode1: kc[:k181].id })
Key.create({   name:'MX4', scancode:'700eb',   keygroup_id: kg[:left].id,    keycode1: kc[:k182].id })
Key.create({   name:'MX5', scancode:'700ec',   keygroup_id: kg[:left].id,    keycode1: kc[:k183].id })
Key.create({   name:'MX6', scancode:'700ed',   keygroup_id: kg[:left].id,    keycode1: kc[:k184].id })
Key.create({   name:'MX7', scancode:'700ee',   keygroup_id: kg[:left].id,    keycode1: kc[:k185].id })
Key.create({   name:'MX8', scancode:'700ef',   keygroup_id: kg[:left].id,    keycode1: kc[:k186].id })
Key.create({   name:'MX9', scancode:'700f0',   keygroup_id: kg[:left].id,    keycode1: kc[:k187].id })
Key.create({   name:'MX10',scancode:'700f1',   keygroup_id: kg[:left].id,    keycode1: kc[:k188].id })

# M Keys

Key.create({   name:'M1',  scancode:'700f4',   keygroup_id: kg[:top].id,     keycode1: kc[:k189].id })
Key.create({   name:'M2',  scancode:'700f5',   keygroup_id: kg[:top].id,     keycode1: kc[:k190].id })
Key.create({   name:'M3',  scancode:'700f6',   keygroup_id: kg[:top].id,     keycode1: kc[:k191].id })
Key.create({   name:'M4',  scancode:'700f7',   keygroup_id: kg[:top].id,     keycode1: kc[:k192].id })
Key.create({   name:'M5',  scancode:'700f8',   keygroup_id: kg[:top].id,     keycode1: kc[:k193].id })
Key.create({   name:'M6',  scancode:'700f9',   keygroup_id: kg[:top].id,     keycode1: kc[:k194].id })
Key.create({   name:'M7',  scancode:'700fa',   keygroup_id: kg[:top].id,     keycode1: kc[:k195].id })
Key.create({   name:'M8',  scancode:'700fb',   keygroup_id: kg[:top].id,     keycode1: kc[:k196].id })
Key.create({   name:'M9',  scancode:'700fc',   keygroup_id: kg[:top].id,     keycode1: kc[:k197].id })
Key.create({   name:'M10', scancode:'700fd',   keygroup_id: kg[:top].id,     keycode1: kc[:k198].id })
Key.create({   name:'M11', scancode:'700fe',   keygroup_id: kg[:top].id,     keycode1: kc[:k199].id })
Key.create({   name:'M12', scancode:'700ff',   keygroup_id: kg[:top].id,     keycode1: kc[:k200].id })

# L Keys

Key.create({   name:'L1',  scancode:'700a8',   keygroup_id: kg[:left].id,    keycode1: kc[:k201].id })
Key.create({   name:'L2',  scancode:'700a9',   keygroup_id: kg[:left].id,    keycode1: kc[:k202].id })
Key.create({   name:'L3',  scancode:'700aa',   keygroup_id: kg[:left].id,    keycode1: kc[:k203].id })
Key.create({   name:'L4',  scancode:'700ab',   keygroup_id: kg[:left].id,    keycode1: kc[:k204].id })

# Sound Keys

Key.create({   name:'V+',  scancode:'c00e9',   keygroup_id: kg[:right].id,   keycode1: kc[:k123].id })

