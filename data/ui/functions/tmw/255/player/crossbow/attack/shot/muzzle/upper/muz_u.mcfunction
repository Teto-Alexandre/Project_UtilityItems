# マズルフラッシュ
execute if score $muzzle ui_temp matches 1 anchored eyes run particle crit ^-0.25 ^-0.1 ^0.7 0 0 0 0.3 1
execute if score $muzzle ui_temp matches 2 anchored eyes run particle crit ^-0.25 ^-0.1 ^0.7 0 0 0 0.3 3
execute if score $muzzle ui_temp matches 3 anchored eyes run particle crit ^-0.25 ^-0.1 ^0.7 0 0 0 0.3 10
execute if score $muzzle ui_temp matches 4 anchored eyes run particle crit ^-0.25 ^-0.1 ^0.7 0 0 0 0.3 20
execute if score $muzzle ui_temp matches 4 anchored eyes run particle explosion ^-0.25 ^-0.1 ^0.7 0 0 0 0 1
execute if score $muzzle ui_temp matches 11 anchored eyes run particle smoke ^-0.25 ^-0.1 ^0.7 0 0 0 0.05 5
execute if score $muzzle ui_temp matches 21 anchored eyes run particle dust 1 1 0 0.5 ^-0.25 ^-0.1 ^0.7 0.2 0.2 0.2 0 5
execute if score $muzzle ui_temp matches 31 anchored eyes run particle electric_spark ^-0.25 ^-0.1 ^0.7 0 0 0 0.8 5
execute if score $muzzle ui_temp matches 41 run data merge storage ui:common {input:{Mode:"create",Var:3}}
execute if score $muzzle ui_temp matches 42 run data merge storage ui:common {input:{Mode:"create",Var:4}}
execute if score $muzzle ui_temp matches 41..42 anchored eyes positioned ^-0.25 ^-0.1 ^0.7 run function ui:common/particle
execute if score $muzzle ui_temp matches 51 anchored eyes run particle dust 0 0.933 1 0.3 ^-0.25 ^-0.1 ^0.7 0.3 0.3 0.3 0 8
execute if score $muzzle ui_temp matches 52 anchored eyes run particle dust 0 0.933 1 0.5 ^-0.25 ^-0.1 ^0.7 0.5 0.5 0.5 0 10
execute if score $muzzle ui_temp matches 52 anchored eyes run particle dust 0 0.349 0.373 0.5 ^-0.25 ^-0.1 ^0.7 0.5 0.5 0.5 0 10
execute if score $muzzle ui_temp matches 61 anchored eyes run particle dust 1 0.5 0 0.3 ^-0.25 ^-0.1 ^0.7 0.3 0.3 0.3 0 8
execute if score $muzzle ui_temp matches 61 anchored eyes run particle small_flame ^-0.25 ^-0.1 ^0.7 0.3 0.3 0.3 1000000 8
execute if score $muzzle ui_temp matches 71 anchored eyes run particle dust 1 1 0 0.5 ^-0.25 ^-0.1 ^0.7 0.3 0.3 0.3 0 8
