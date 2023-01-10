# 爆破魔法陣

# 放出方向
particle end_rod ^0.000 ^1.000 ^0.000 0 0 0 0 1 force
particle end_rod ^0.174 ^0.985 ^0.000 0 0 0 0 1 force
particle end_rod ^0.342 ^0.940 ^0.000 0 0 0 0 1 force
particle end_rod ^0.500 ^0.866 ^0.000 0 0 0 0 1 force
particle end_rod ^0.643 ^0.766 ^0.000 0 0 0 0 1 force
particle end_rod ^0.766 ^0.643 ^0.000 0 0 0 0 1 force
particle end_rod ^0.866 ^0.500 ^0.000 0 0 0 0 1 force
particle end_rod ^0.940 ^0.342 ^0.000 0 0 0 0 1 force
particle end_rod ^0.985 ^0.174 ^0.000 0 0 0 0 1 force
particle end_rod ^1.000 ^0.000 ^0.000 0 0 0 0 1 force
particle end_rod ^0.985 ^-0.173 ^0.000 0 0 0 0 1 force
particle end_rod ^0.940 ^-0.342 ^0.000 0 0 0 0 1 force
particle end_rod ^0.866 ^-0.500 ^0.000 0 0 0 0 1 force
particle end_rod ^0.766 ^-0.642 ^0.000 0 0 0 0 1 force
particle end_rod ^0.643 ^-0.766 ^0.000 0 0 0 0 1 force
particle end_rod ^0.500 ^-0.866 ^0.000 0 0 0 0 1 force
particle end_rod ^0.343 ^-0.940 ^0.000 0 0 0 0 1 force
particle end_rod ^0.174 ^-0.985 ^0.000 0 0 0 0 1 force
particle end_rod ^0.001 ^-1.000 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.173 ^-0.985 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.341 ^-0.940 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.499 ^-0.866 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.642 ^-0.767 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.766 ^-0.643 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.866 ^-0.501 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.939 ^-0.343 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.985 ^-0.174 ^0.000 0 0 0 0 1 force
particle end_rod ^-1.000 ^-0.001 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.985 ^0.173 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.940 ^0.341 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.867 ^0.499 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.767 ^0.642 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.644 ^0.765 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.501 ^0.865 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.343 ^0.939 ^0.000 0 0 0 0 1 force
particle end_rod ^-0.175 ^0.985 ^0.000 0 0 0 0 1 force

#
execute if score $is ui_temp matches 1.. run particle end_rod ^0.000 ^1.250 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 2.. run particle end_rod ^0.217 ^1.231 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 3.. run particle end_rod ^0.427 ^1.175 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 4.. run particle end_rod ^0.625 ^1.083 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 5.. run particle end_rod ^0.803 ^0.958 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 6.. run particle end_rod ^0.957 ^0.804 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 7.. run particle end_rod ^1.082 ^0.625 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 8.. run particle end_rod ^1.175 ^0.428 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 9.. run particle end_rod ^1.231 ^0.217 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 10.. run particle end_rod ^1.250 ^0.000 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 11.. run particle end_rod ^1.231 ^-0.217 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 12.. run particle end_rod ^1.175 ^-0.427 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 13.. run particle end_rod ^1.083 ^-0.625 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 14.. run particle end_rod ^0.958 ^-0.803 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 15.. run particle end_rod ^0.804 ^-0.957 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 16.. run particle end_rod ^0.626 ^-1.082 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 17.. run particle end_rod ^0.428 ^-1.174 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 18.. run particle end_rod ^0.218 ^-1.231 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 19.. run particle end_rod ^0.001 ^-1.250 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 20.. run particle end_rod ^-0.216 ^-1.231 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 21.. run particle end_rod ^-0.427 ^-1.175 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 22.. run particle end_rod ^-0.624 ^-1.083 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 23.. run particle end_rod ^-0.803 ^-0.958 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 24.. run particle end_rod ^-0.957 ^-0.804 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 25.. run particle end_rod ^-1.082 ^-0.626 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 26.. run particle end_rod ^-1.174 ^-0.428 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 27.. run particle end_rod ^-1.231 ^-0.218 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 28.. run particle end_rod ^-1.250 ^-0.001 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 29.. run particle end_rod ^-1.231 ^0.216 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 30.. run particle end_rod ^-1.175 ^0.426 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 31.. run particle end_rod ^-1.083 ^0.624 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 32.. run particle end_rod ^-0.958 ^0.803 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 33.. run particle end_rod ^-0.804 ^0.957 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 34.. run particle end_rod ^-0.626 ^1.082 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 35.. run particle end_rod ^-0.429 ^1.174 ^0.000 0 0 0 0 1 force
execute if score $is ui_temp matches 36.. run particle end_rod ^-0.218 ^1.231 ^0.000 0 0 0 0 1 force

#
execute if score $is ui_temp matches 38 run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 15 force
execute if score $is ui_temp matches 38..40 run scoreboard players set $count ui_temp 200
execute if score $is ui_temp matches 38..40 positioned ^ ^ ^ run function ui:common/particle/ss/upper/7/2

#
execute if score $is ui_temp matches 40.. run kill @s
