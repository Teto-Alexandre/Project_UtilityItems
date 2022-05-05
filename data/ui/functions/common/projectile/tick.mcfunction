#> ui:common/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players add @s ui_bcp 1
scoreboard players operation $temp ui_bcp = @s ui_bcp

#id1を共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $temp ui_temp = @s ui_team
execute as @e[type=!#ui:unhurtable,tag=!ui_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

#重力補正
execute if score @s ui_bpart matches 4..16 if score $temp ui_bcp matches 1.. at @s run function ui:common/projectile/gravity

#tick毎ループ
execute at @s run function ui:common/projectile/move
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute as @s[scores={ui_br=..0}] run function ui:common/projectile/kill

#一時タグ削除
tag @e[tag=ui_temp_team] remove ui_temp_team