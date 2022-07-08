#> ui:tmw/237/missile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

#これです
tag @s add ui_temp_this

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players operation @s ui_temp += @s ui_bm_temp
scoreboard players add @s ui_is 1

#idを共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

#ワープ
execute if score @s ui_is matches 20 at @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,limit=1,sort=random] run teleport @s ~ ~ ~ ~ ~
execute if score @s ui_is matches 20 at @s run spreadplayers ~ ~ 0 3 false @s
execute if score @s ui_is matches 20 at @s run teleport @s ~ ~20 ~ ~ 90

#tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:tmw/237/missile/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute as @s[scores={ui_is=40..}] run function ui:tmw/237/missile/kill

#一時タグ削除
tag @e[tag=ui_temp_team] remove ui_temp_team
tag @s remove ui_temp_this