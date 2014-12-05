#############################################################################
# Keygroups
#   Used to identify the different colored areas of the keyboard
#############################################################################
$kg = {}
$kg[:left]   = KeyGroup.create({name: 'left', color1: $red, color2: $blue, color3: $white, color4: $green})
$kg[:top]    = KeyGroup.create({name: 'top', color1: $purple, color2: $red, color3: $blue, color4: $white})
$kg[:right]  = KeyGroup.create({name: 'right', color1: $green, color2: $purple, color3: $red, color4: $blue})
$kg[:bottom] = KeyGroup.create({name: 'bottom', color1: $white, color2: $green, color3: $purple, color4: $red})
$kg[:logo]   = KeyGroup.create({name: 'logo', color1: $blue, color2: $blue, color3: $blue, color4: $blue})