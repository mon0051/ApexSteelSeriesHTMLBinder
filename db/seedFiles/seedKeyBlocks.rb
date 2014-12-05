#############################################################################
# Keyblocks
#   A grouping of keys by block, to allow easier formatting
#############################################################################
$kb = {}
$kb[:LKeys]      = Keyblock.create({name:'LKeys'          ,x_offset: 0     * $sf, y_offset: 0    * $sf})
$kb[:MXKeys]     = Keyblock.create({name:'MXKeys'         ,x_offset: 0     * $sf, y_offset: 22.5 * $sf})
$kb[:MKeys1]     = Keyblock.create({name:'MKeys1'         ,x_offset: 42.5  * $sf, y_offset: 0    * $sf})
$kb[:MKeys2]     = Keyblock.create({name:'MKeys2'         ,x_offset: 87.5  * $sf, y_offset: 0    * $sf})
$kb[:MKeys3]     = Keyblock.create({name:'MKeys3'         ,x_offset: 132.5 * $sf, y_offset: 0    * $sf})
$kb[:MediaKeys1] = Keyblock.create({name:'MediaKeys1'     ,x_offset: 285   * $sf, y_offset: 0    * $sf})
$kb[:MediaKeys2] = Keyblock.create({name:'MediaKeys2'     ,x_offset: 285   * $sf, y_offset: 22.5 * $sf})
$kb[:Esc]        = Keyblock.create({name:'Escape'         ,x_offset: 22.5  * $sf, y_offset: 0    * $sf})
$kb[:QwertyNo]   = Keyblock.create({name:'QwertyNumbers'  ,x_offset: 22.5  * $sf, y_offset: 22.5 * $sf})
$kb[:QwertyL1]   = Keyblock.create({name:'QwertyLetters1' ,x_offset: 22.5  * $sf, y_offset: 32.5 * $sf})
$kb[:QwertyL2]   = Keyblock.create({name:'QwertyLetters2' ,x_offset: 22.5  * $sf, y_offset: 42.5 * $sf})
$kb[:QwertyL3]   = Keyblock.create({name:'QwertyLetters3' ,x_offset: 22.5  * $sf, y_offset: 52.5 * $sf})
$kb[:QwertyFunc] = Keyblock.create({name:'QwertyFunctions',x_offset: 22.5  * $sf, y_offset: 62.5 * $sf})
$kb[:PrtScr]     = Keyblock.create({name:'PrtScr'         ,x_offset: 177.5 * $sf, y_offset: 10   * $sf})
$kb[:Ins]        = Keyblock.create({name:'Ins'            ,x_offset: 177.5 * $sf, y_offset: 22.5 * $sf})
$kb[:Arrows]     = Keyblock.create({name:'Arrows'         ,x_offset: 177.5 * $sf, y_offset: 52.5 * $sf})
$kb[:NumPad]     = Keyblock.create({name:'NumPad'         ,x_offset: 212.5 * $sf, y_offset: 22.5 * $sf})