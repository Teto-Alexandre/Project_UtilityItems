# 向き相対z座標に合わせて拡散

#
scoreboard players operation $mod ui_calc1 = $rand.z ui_temp
function ui:common/rand
scoreboard players operation $mod ui_calc1 /= #2 ui_num
scoreboard players operation $rand ui_calc1 -= $mod ui_calc1

# 1::p>0?2*p:1
execute if score $rand ui_calc1 matches 4096.. at @s run teleport @s ^ ^ ^409.6
execute if score $rand ui_calc1 matches 4096.. run scoreboard players remove $rand ui_calc1 4096
execute if score $rand ui_calc1 matches 2048.. at @s run teleport @s ^ ^ ^204.8
execute if score $rand ui_calc1 matches 2048.. run scoreboard players remove $rand ui_calc1 2048
execute if score $rand ui_calc1 matches 1024.. at @s run teleport @s ^ ^ ^102.4
execute if score $rand ui_calc1 matches 1024.. run scoreboard players remove $rand ui_calc1 1024
execute if score $rand ui_calc1 matches 512.. at @s run teleport @s ^ ^ ^51.2
execute if score $rand ui_calc1 matches 512.. run scoreboard players remove $rand ui_calc1 512
execute if score $rand ui_calc1 matches 256.. at @s run teleport @s ^ ^ ^25.6
execute if score $rand ui_calc1 matches 256.. run scoreboard players remove $rand ui_calc1 256
execute if score $rand ui_calc1 matches 128.. at @s run teleport @s ^ ^ ^12.8
execute if score $rand ui_calc1 matches 128.. run scoreboard players remove $rand ui_calc1 128
execute if score $rand ui_calc1 matches 64.. at @s run teleport @s ^ ^ ^6.4
execute if score $rand ui_calc1 matches 64.. run scoreboard players remove $rand ui_calc1 64
execute if score $rand ui_calc1 matches 32.. at @s run teleport @s ^ ^ ^3.2
execute if score $rand ui_calc1 matches 32.. run scoreboard players remove $rand ui_calc1 32
execute if score $rand ui_calc1 matches 16.. at @s run teleport @s ^ ^ ^1.6
execute if score $rand ui_calc1 matches 16.. run scoreboard players remove $rand ui_calc1 16
execute if score $rand ui_calc1 matches 8.. at @s run teleport @s ^ ^ ^0.8
execute if score $rand ui_calc1 matches 8.. run scoreboard players remove $rand ui_calc1 8
execute if score $rand ui_calc1 matches 4.. at @s run teleport @s ^ ^ ^0.4
execute if score $rand ui_calc1 matches 4.. run scoreboard players remove $rand ui_calc1 4
execute if score $rand ui_calc1 matches 2.. at @s run teleport @s ^ ^ ^0.2
execute if score $rand ui_calc1 matches 2.. run scoreboard players remove $rand ui_calc1 2
execute if score $rand ui_calc1 matches 1.. at @s run teleport @s ^ ^ ^0.1
execute if score $rand ui_calc1 matches 1.. run scoreboard players remove $rand ui_calc1 1
execute if score $rand ui_calc1 matches ..-4096 at @s run teleport @s ^ ^ ^-409.6
execute if score $rand ui_calc1 matches ..-4096 run scoreboard players add $rand ui_calc1 4096
execute if score $rand ui_calc1 matches ..-2048 at @s run teleport @s ^ ^ ^-204.8
execute if score $rand ui_calc1 matches ..-2048 run scoreboard players add $rand ui_calc1 2048
execute if score $rand ui_calc1 matches ..-1024 at @s run teleport @s ^ ^ ^-102.4
execute if score $rand ui_calc1 matches ..-1024 run scoreboard players add $rand ui_calc1 1024
execute if score $rand ui_calc1 matches ..-512 at @s run teleport @s ^ ^ ^-51.2
execute if score $rand ui_calc1 matches ..-512 run scoreboard players add $rand ui_calc1 512
execute if score $rand ui_calc1 matches ..-256 at @s run teleport @s ^ ^ ^-25.6
execute if score $rand ui_calc1 matches ..-256 run scoreboard players add $rand ui_calc1 256
execute if score $rand ui_calc1 matches ..-128 at @s run teleport @s ^ ^ ^-12.8
execute if score $rand ui_calc1 matches ..-128 run scoreboard players add $rand ui_calc1 128
execute if score $rand ui_calc1 matches ..-64 at @s run teleport @s ^ ^ ^-6.4
execute if score $rand ui_calc1 matches ..-64 run scoreboard players add $rand ui_calc1 64
execute if score $rand ui_calc1 matches ..-32 at @s run teleport @s ^ ^ ^-3.2
execute if score $rand ui_calc1 matches ..-32 run scoreboard players add $rand ui_calc1 32
execute if score $rand ui_calc1 matches ..-16 at @s run teleport @s ^ ^ ^-1.6
execute if score $rand ui_calc1 matches ..-16 run scoreboard players add $rand ui_calc1 16
execute if score $rand ui_calc1 matches ..-8 at @s run teleport @s ^ ^ ^-0.8
execute if score $rand ui_calc1 matches ..-8 run scoreboard players add $rand ui_calc1 8
execute if score $rand ui_calc1 matches ..-4 at @s run teleport @s ^ ^ ^-0.4
execute if score $rand ui_calc1 matches ..-4 run scoreboard players add $rand ui_calc1 4
execute if score $rand ui_calc1 matches ..-2 at @s run teleport @s ^ ^ ^-0.2
execute if score $rand ui_calc1 matches ..-2 run scoreboard players add $rand ui_calc1 2
execute if score $rand ui_calc1 matches ..-1 at @s run teleport @s ^ ^ ^-0.1
execute if score $rand ui_calc1 matches ..-1 run scoreboard players add $rand ui_calc1 1