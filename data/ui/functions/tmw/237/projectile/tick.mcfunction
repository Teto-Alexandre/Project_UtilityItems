#> ui:tmw/237/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players operation @s ui_temp += @s ui_bm_temp
scoreboard players add @s ui_bcp 1
scoreboard players operation $temp ui_bcp = @s ui_bcp
scoreboard players operation $rangetype ui_temp = @s ui_gpc

#id1を共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $temp ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

#重力補正
execute if score $rangetype ui_temp matches 2..3 if score $temp ui_bcp matches 1.. at @s run function ui:tmw/237/projectile/gravity

#tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:tmw/237/projectile/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute if score $rangetype ui_temp matches 1..2 as @s[scores={ui_br=..0}] run function ui:tmw/237/projectile/kill
execute if score $rangetype ui_temp matches 3..4 as @s[scores={ui_br=..0}] run scoreboard players set @s ui_bcp 5
execute if score $rangetype ui_temp matches 3..4 as @s[scores={ui_br=..0}] at @s run teleport @s ~ ~ ~ ~ 90

#一時タグ削除
tag @e[tag=ui_temp_team] remove ui_temp_team