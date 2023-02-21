# マズルフラッシュ
execute if score $muzzle ui_temp matches 1 run particle crit ^ ^ ^0.7 0 0 0 0.3 1
execute if score $muzzle ui_temp matches 2 run particle crit ^ ^ ^0.7 0 0 0 0.3 3
execute if score $muzzle ui_temp matches 3 run particle crit ^ ^ ^0.7 0 0 0 0.3 10
execute if score $muzzle ui_temp matches 4 run particle crit ^ ^ ^0.7 0 0 0 0.3 20
execute if score $muzzle ui_temp matches 4 run particle explosion ^ ^ ^0.7 0 0 0 0 1
execute if score $muzzle ui_temp matches 11 run particle smoke ^ ^ ^0.7 0 0 0 0.05 5
execute if score $muzzle ui_temp matches 21 run particle dust 1 1 0 0.5 ^ ^ ^0.7 0.2 0.2 0.2 0 5
execute if score $muzzle ui_temp matches 31 run particle electric_spark ^ ^ ^0.7 0 0 0 0.8 5
execute if score $muzzle ui_temp matches 41 run data merge storage ui:common {input:{Mode:"create",Var:3}}
execute if score $muzzle ui_temp matches 42 run data merge storage ui:common {input:{Mode:"create",Var:4}}
execute if score $muzzle ui_temp matches 41..42 positioned ^ ^ ^0.7 run function ui:common/particle
execute if score $muzzle ui_temp matches 51 run particle dust 0 0.933 1 0.3 ^ ^ ^0.7 0.3 0.3 0.3 0 8
execute if score $muzzle ui_temp matches 52 run particle dust 0 0.933 1 0.5 ^ ^ ^0.7 0.5 0.5 0.5 0 10
execute if score $muzzle ui_temp matches 52 run particle dust 0 0.349 0.373 0.5 ^ ^ ^0.7 0.5 0.5 0.5 0 10
execute if score $muzzle ui_temp matches 61 run particle dust 1 0.5 0 0.3 ^ ^ ^0.7 0.3 0.3 0.3 0 8
execute if score $muzzle ui_temp matches 61 run particle small_flame ^ ^ ^0.7 0.3 0.3 0.3 1000000 8
execute if score $muzzle ui_temp matches 71 run particle dust 1 1 0 0.5 ^ ^ ^0.7 0.3 0.3 0.3 0 8
execute if score $muzzle ui_temp matches 81 run particle dust 0.3 1 0.3 0.4 ^ ^ ^0.7 0.3 0.3 0.3 0 8
execute if score $muzzle ui_temp matches 82 run particle dust 0.3 1 0.3 0.35 ^ ^ ^0.7 0.3 0.3 0.3 0 6
execute if score $muzzle ui_temp matches 91 run particle dust 1 0 1 1 ^ ^ ^0.7 0.4 0.4 0.4 0 10
execute if score $muzzle ui_temp matches 92 run particle dust 0 0.7 0 1 ^ ^ ^0.7 0.4 0.4 0.4 0 10
