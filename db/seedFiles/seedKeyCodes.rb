#############################################################################
# Keycodes
#   Linux maps the raw scancodes of keys into keycodes
#   Keycodes are then Mapped to actions or characters
#############################################################################
$kc = {}
$kc[:k179]=Keycode.create({code: '179', mapped_action: ''})
$kc[:k180]=Keycode.create({code: '180', mapped_action: ''})
$kc[:k181]=Keycode.create({code: '181', mapped_action: ''})
$kc[:k182]=Keycode.create({code: '182', mapped_action: ''})
$kc[:k183]=Keycode.create({code: '183', mapped_action: ''})
$kc[:k184]=Keycode.create({code: '184', mapped_action: ''})
$kc[:k185]=Keycode.create({code: '185', mapped_action: ''})
$kc[:k186]=Keycode.create({code: '186', mapped_action: ''})
$kc[:k187]=Keycode.create({code: '187', mapped_action: ''})
$kc[:k188]=Keycode.create({code: '188', mapped_action: ''})
$kc[:k189]=Keycode.create({code: '189', mapped_action: ''})
$kc[:k190]=Keycode.create({code: '190', mapped_action: ''})
$kc[:k191]=Keycode.create({code: '191', mapped_action: ''})
$kc[:k192]=Keycode.create({code: '192', mapped_action: ''})
$kc[:k193]=Keycode.create({code: '193', mapped_action: ''})
$kc[:k194]=Keycode.create({code: '194', mapped_action: ''})
$kc[:k195]=Keycode.create({code: '195', mapped_action: ''})
$kc[:k196]=Keycode.create({code: '196', mapped_action: ''})
$kc[:k197]=Keycode.create({code: '197', mapped_action: ''})
$kc[:k198]=Keycode.create({code: '198', mapped_action: ''})
$kc[:k199]=Keycode.create({code: '199', mapped_action: ''})
$kc[:k200]=Keycode.create({code: '200', mapped_action: ''})
$kc[:k201]=Keycode.create({code: '201', mapped_action: ''})
$kc[:k202]=Keycode.create({code: '202', mapped_action: ''})
$kc[:k203]=Keycode.create({code: '203', mapped_action: ''})
$kc[:k204]=Keycode.create({code: '204', mapped_action: ''})

# Media Volume Keycodes : These keycodes are already mapped by default in Linux

$kc[:k123]=Keycode.create({code: '123', mapped_action: 'XF86AudioRaiseVolume'})
$kc[:k122]=Keycode.create({code: '122', mapped_action: 'XF86AudioLowerVolume'})
$kc[:k121]=Keycode.create({code: '121', mapped_action: 'XF86AudioMute'})

# Media Track Keycodes

$kc[:k173]=Keycode.create({code: '173', mapped_action: 'XF86AudioPrev'})
$kc[:k171]=Keycode.create({code: '171', mapped_action: 'XF86AudioNext'})
$kc[:k172]=Keycode.create({code: '172', mapped_action: 'XF86AudioPlay'})

# PlaceHolder
$kc[:k999]=Keycode.create({code: '999', mapped_action: ''})
