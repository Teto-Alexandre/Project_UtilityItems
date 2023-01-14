#
scoreboard players set $temp ui_temp 70
scoreboard players operation $temp ui_temp -= $is ui_temp

scoreboard players set $success ui_temp 0
execute at @s run teleport @s ~ ~ ~ ~ 0
execute at @s unless block ^ ^ ^1.2 #ui:nocol run scoreboard players set $success ui_temp 1
execute at @s unless block ^ ^ ^1.2 #ui:nocol run teleport @s ~ ~1.2 ~
execute at @s if score $success ui_temp matches 1 if block ^ ^ ^1.2 #ui:nocol run function ui:common/particle/ss/downer/10015/up_straight
#tellraw @a [{"text":"success: "},{"score":{"name": "$success","objective": "ui_temp"}}]
execute at @s if score $is ui_temp matches 20 run teleport @s ~ ~ ~ facing entity @e[distance=..30,predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=random,limit=1]
execute at @s if score $success ui_temp matches ..0 if block ~ ~-0.1 ~ #ui:nocol run scoreboard players set $count ui_temp 0
execute at @s if score $success ui_temp matches ..0 if block ~ ~-0.1 ~ #ui:nocol run function ui:common/particle/ss/downer/10015/inair
execute at @s if score $success ui_temp matches -1 run function ui:common/particle/ss/downer/10015/up_straight2
execute at @s if score $success ui_temp matches ..0 run teleport @s ^ ^ ^1.2 ~ ~

scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #5 ui_num

execute unless score $success ui_temp matches 2 run particle dust 0.4 1 0.4 1.1 ~ ~ ~ 0.5 0.5 0.5 0 3 force @a

data merge storage ui:common {input:{Mode:"create",Var:19,Var2:30}}
execute store result storage ui:common input.Var2 int 1 run scoreboard players get $temp ui_temp
execute if score $success ui_temp matches ..0 at @s rotated ~ 0 run function ui:common/particle
execute if score $success ui_temp matches 1 at @s rotated ~ -90 run function ui:common/particle

execute as @e[distance=..3,predicate=ui:load_unhurtable,tag=ui_temp_team] run function ui:common/particle/ss/downer/10015/effect
execute if score $is ui_temp matches 11.. if entity @e[distance=..2,predicate=ui:load_unhurtable,tag=!ui_temp_team] run function ui:common/particle/ss/downer/10015/detected

#
execute if score $is ui_temp matches 60.. run kill @s