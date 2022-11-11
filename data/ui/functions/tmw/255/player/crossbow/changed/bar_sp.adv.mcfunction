xp set @s 129 levels
#execute store result score $temp ui_temp run xp query @s points
scoreboard players operation $exp ui_temp = $sptime ui_temp
scoreboard players operation $exp ui_temp *= #1000 ui_num
scoreboard players operation $exp ui_temp /= $sptime.max ui_temp
xp set @s 0 points
execute if score $exp ui_temp matches 512.. run xp add @s 512 points
execute if score $exp ui_temp matches 512.. run scoreboard players remove $exp ui_temp 512
execute if score $exp ui_temp matches 256.. run xp add @s 256 points
execute if score $exp ui_temp matches 256.. run scoreboard players remove $exp ui_temp 256
execute if score $exp ui_temp matches 128.. run xp add @s 128 points
execute if score $exp ui_temp matches 128.. run scoreboard players remove $exp ui_temp 128
execute if score $exp ui_temp matches 64.. run xp add @s 64 points
execute if score $exp ui_temp matches 64.. run scoreboard players remove $exp ui_temp 64
execute if score $exp ui_temp matches 32.. run xp add @s 32 points
execute if score $exp ui_temp matches 32.. run scoreboard players remove $exp ui_temp 32
execute if score $exp ui_temp matches 16.. run xp add @s 16 points
execute if score $exp ui_temp matches 16.. run scoreboard players remove $exp ui_temp 16
execute if score $exp ui_temp matches 8.. run xp add @s 8 points
execute if score $exp ui_temp matches 8.. run scoreboard players remove $exp ui_temp 8
execute if score $exp ui_temp matches 4.. run xp add @s 4 points
execute if score $exp ui_temp matches 4.. run scoreboard players remove $exp ui_temp 4
execute if score $exp ui_temp matches 2.. run xp add @s 2 points
execute if score $exp ui_temp matches 2.. run scoreboard players remove $exp ui_temp 2
execute if score $exp ui_temp matches 1.. run xp add @s 1 points
execute if score $exp ui_temp matches 1.. run scoreboard players remove $exp ui_temp 1

xp set @s 0 levels
scoreboard players operation $exp ui_temp = $sptime ui_temp
execute if score $exp ui_temp matches 512.. run xp add @s 512 levels
execute if score $exp ui_temp matches 512.. run scoreboard players remove $exp ui_temp 512
execute if score $exp ui_temp matches 256.. run xp add @s 256 levels
execute if score $exp ui_temp matches 256.. run scoreboard players remove $exp ui_temp 256
execute if score $exp ui_temp matches 128.. run xp add @s 128 levels
execute if score $exp ui_temp matches 128.. run scoreboard players remove $exp ui_temp 128
execute if score $exp ui_temp matches 64.. run xp add @s 64 levels
execute if score $exp ui_temp matches 64.. run scoreboard players remove $exp ui_temp 64
execute if score $exp ui_temp matches 32.. run xp add @s 32 levels
execute if score $exp ui_temp matches 32.. run scoreboard players remove $exp ui_temp 32
execute if score $exp ui_temp matches 16.. run xp add @s 16 levels
execute if score $exp ui_temp matches 16.. run scoreboard players remove $exp ui_temp 16
execute if score $exp ui_temp matches 8.. run xp add @s 8 levels
execute if score $exp ui_temp matches 8.. run scoreboard players remove $exp ui_temp 8
execute if score $exp ui_temp matches 4.. run xp add @s 4 levels
execute if score $exp ui_temp matches 4.. run scoreboard players remove $exp ui_temp 4
execute if score $exp ui_temp matches 2.. run xp add @s 2 levels
execute if score $exp ui_temp matches 2.. run scoreboard players remove $exp ui_temp 2
execute if score $exp ui_temp matches 1.. run xp add @s 1 levels
execute if score $exp ui_temp matches 1.. run scoreboard players remove $exp ui_temp 1