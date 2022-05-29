#的のHPをリゲインしダメージを出力
scoreboard players operation $temp ui_temp += #10000 ui_num
execute store result score $temp2 ui_temp run scoreboard players get @e[tag=ui_12_2,sort=nearest,limit=1] ui_hp
scoreboard players operation @s ui_is += $temp ui_temp
execute if score $temp ui_temp matches 1.. run scoreboard players add @s ui_is2 1
execute if score $temp ui_temp matches 1.. run data merge entity @s {PortalCooldown:60}
scoreboard players operation $temp2 ui_temp *= #5 ui_num
scoreboard players operation $temp4 ui_temp = $temp ui_temp
scoreboard players operation $temp ui_temp /= #10 ui_num
scoreboard players operation $temp4 ui_temp %= #10 ui_num
scoreboard players operation $temp5 ui_temp = @s ui_is
scoreboard players operation $temp6 ui_temp = $temp5 ui_temp
scoreboard players operation $temp5 ui_temp /= #10 ui_num
scoreboard players operation $temp6 ui_temp %= #10 ui_num
scoreboard players operation $temp7 ui_temp = @s ui_is2
execute if score $temp7 ui_temp matches 1 run tellraw @p [{"color":"gray","text":"damage"},{"color":"green","text":"> "},{"color":"gray","text":"============ Record Started ============"}]
execute unless score $temp2 ui_temp matches 1.. run tellraw @p [{"color":"gray","text":"damage"},{"color":"green","text":"> "},{"score":{"name":"$temp","objective":"ui_temp"},"color":"gold"},{"color":"gold","text":"."},{"score":{"name":"$temp4","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":" ⇒ [ "},{"score":{"name":"$temp5","objective":"ui_temp"},"color":"gold"},{"color":"gold","text":"."},{"score":{"name":"$temp6","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":"damage , "},{"score":{"name":"$temp7","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":"Combo ]"}]
execute if score $temp2 ui_temp matches 1.. run tellraw @p [{"color":"gray","text":"damage"},{"color":"green","text":"> "},{"score":{"name":"$temp","objective":"ui_temp"},"color":"gold"},{"color":"gold","text":"."},{"score":{"name":"$temp4","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":" ⇒ [ "},{"score":{"name":"$temp5","objective":"ui_temp"},"color":"gold"},{"color":"gold","text":"."},{"score":{"name":"$temp6","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":"damage , "},{"score":{"name":"$temp7","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":"Combo ]"},{"color":"aqua","text":" -"},{"score":{"name":"$temp2","objective":"ui_temp"},"color":"aqua"},{"color":"aqua","text":"%"}]
scoreboard players reset $temp ui_temp
scoreboard players reset $temp2 ui_temp
scoreboard players reset $temp4 ui_temp
scoreboard players reset $temp5 ui_temp
scoreboard players reset $temp6 ui_temp
scoreboard players reset $temp7 ui_temp
data merge entity @e[tag=ui_12_2,sort=nearest,limit=1] {Health:1000f}
scoreboard players reset @e[tag=ui_12_2,sort=nearest,limit=1] ui_hp