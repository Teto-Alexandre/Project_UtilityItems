#
scoreboard players operation $bonus ui_temp = @s ui_is2
execute as @a[tag=ui_temp_player] run function ui:common/mine_square/system/bonus.map

#
scoreboard players operation $bonus ui_temp = @s ui_is2
scoreboard players set $repeat ui_temp 0
execute as @a[tag=ui_temp_player] if score $bonus ui_temp matches 1.. run function ui:common/mine_square/system/bonus

#
scoreboard players operation $bonus ui_temp = @s ui_is2
scoreboard players set $repeat ui_temp 12
execute as @a[tag=ui_temp_player] run function ui:common/mine_square/system/bonus.resources

#
execute at @e[tag=ui_temp_obj] run setblock ~ ~ ~ air
execute at @e[tag=ui_temp_obj] run setblock ~ ~-1 ~ air
kill @e[tag=ui_temp_obj]
playsound entity.player.levelup player @a ~ ~ ~ 1 1.2 1
tellraw @a [{"selector":"@a[tag=ui_temp_player]"},{"text":" finished Minesweeper!"}]