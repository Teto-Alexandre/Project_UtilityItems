# 媒体呼び出し
    tag @p add ui_temp_player
    execute store result score @a[tag=ui_temp_player,limit=1] ui_temp run data get entity @s ArmorItems.[0].tag.tmw.x
    execute store result score @a[tag=ui_temp_player,limit=1] ui_temp2 run data get entity @s ArmorItems.[0].tag.tmw.z
    execute as @a[tag=ui_temp_player] run function ui:ui/14/teleport.xz
    execute as @a[tag=ui_temp_player] at @s run teleport @s ~ 312 ~
    execute as @a[tag=ui_temp_player] at @s run spreadplayers ~ ~ 1 10 false @s
    execute as @a[tag=ui_temp_player] at @s run teleport @s ~ ~250 ~ ~ ~
    execute as @a[tag=ui_temp_player] at @s run effect give @s slow_falling 30 0 true
    execute as @a[tag=ui_temp_player] at @s run playsound block.portal.travel block @a ~ ~ ~ 5 0.7 0
    execute as @a[tag=ui_temp_player] at @s run particle dust 0 0 0 5 ~ ~ ~ 3 3 3 0 200 force
    execute as @a[tag=ui_temp_player] at @s run advancement grant @s only ui:main/other/far_away
    tag @a[tag=ui_temp_player] remove ui_temp_player
