# 速度バッファ
scoreboard players operation $speed ui_temp = @s ui_tmw501_19_stat_mov

# 速度計算
execute if score $speed ui_temp matches 64.. run attribute @s generic.movement_speed modifier add 1-501-19-0-0 "ROBSpeed" 0.64 multiply
execute if score $speed ui_temp matches 64.. run scoreboard players remove $speed ui_temp 64
execute if score $speed ui_temp matches 32.. run attribute @s generic.movement_speed modifier add 1-501-19-0-1 "ROBSpeed" 0.32 multiply
execute if score $speed ui_temp matches 32.. run scoreboard players remove $speed ui_temp 32
execute if score $speed ui_temp matches 16.. run attribute @s generic.movement_speed modifier add 1-501-19-0-2 "ROBSpeed" 0.16 multiply
execute if score $speed ui_temp matches 16.. run scoreboard players remove $speed ui_temp 16
execute if score $speed ui_temp matches 8.. run attribute @s generic.movement_speed modifier add 1-501-19-0-3 "ROBSpeed" 0.08 multiply
execute if score $speed ui_temp matches 8.. run scoreboard players remove $speed ui_temp 8
execute if score $speed ui_temp matches 4.. run attribute @s generic.movement_speed modifier add 1-501-19-0-4 "ROBSpeed" 0.04 multiply
execute if score $speed ui_temp matches 4.. run scoreboard players remove $speed ui_temp 4
execute if score $speed ui_temp matches 2.. run attribute @s generic.movement_speed modifier add 1-501-19-0-5 "ROBSpeed" 0.02 multiply
execute if score $speed ui_temp matches 2.. run scoreboard players remove $speed ui_temp 2
execute if score $speed ui_temp matches 1.. run attribute @s generic.movement_speed modifier add 1-501-19-0-6 "ROBSpeed" 0.01 multiply
execute if score $speed ui_temp matches 1.. run scoreboard players remove $speed ui_temp 1
execute if score $speed ui_temp matches ..-64 run attribute @s generic.movement_speed modifier add 1-501-19-0-0 "ROBSpeed" -0.64 multiply
execute if score $speed ui_temp matches ..-64 run scoreboard players add $speed ui_temp 64
execute if score $speed ui_temp matches ..-32 run attribute @s generic.movement_speed modifier add 1-501-19-0-1 "ROBSpeed" -0.32 multiply
execute if score $speed ui_temp matches ..-32 run scoreboard players add $speed ui_temp 32
execute if score $speed ui_temp matches ..-16 run attribute @s generic.movement_speed modifier add 1-501-19-0-2 "ROBSpeed" -0.16 multiply
execute if score $speed ui_temp matches ..-16 run scoreboard players add $speed ui_temp 16
execute if score $speed ui_temp matches ..-8 run attribute @s generic.movement_speed modifier add 1-501-19-0-3 "ROBSpeed" -0.08 multiply
execute if score $speed ui_temp matches ..-8 run scoreboard players add $speed ui_temp 8
execute if score $speed ui_temp matches ..-4 run attribute @s generic.movement_speed modifier add 1-501-19-0-4 "ROBSpeed" -0.04 multiply
execute if score $speed ui_temp matches ..-4 run scoreboard players add $speed ui_temp 4
execute if score $speed ui_temp matches ..-2 run attribute @s generic.movement_speed modifier add 1-501-19-0-5 "ROBSpeed" -0.02 multiply
execute if score $speed ui_temp matches ..-2 run scoreboard players add $speed ui_temp 2
execute if score $speed ui_temp matches ..-1 run attribute @s generic.movement_speed modifier add 1-501-19-0-6 "ROBSpeed" -0.01 multiply
execute if score $speed ui_temp matches ..-1 run scoreboard players add $speed ui_temp 1
