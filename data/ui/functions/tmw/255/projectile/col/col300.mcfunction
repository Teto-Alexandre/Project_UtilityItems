setblock ~ ~ ~ air destroy
scoreboard players remove $break ui_temp 3000

#不可壊破壊の実績解除判定
tag @s add ui_temp
execute as @a if score @s ui_id = @e[tag=ui_temp,limit=1] ui_id run advancement grant @s only ui:main/gun/break
tag @s remove ui_temp