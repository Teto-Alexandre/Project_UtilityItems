#> ui:common/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $temp ui_temp = @s ui_team
execute as @e[type=!#ui:unhurtable,tag=!ui_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

#tick毎ループ
function ui:common/projectile/move
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute as @s[scores={ui_br=..0}] run function ui:common/projectile/kill

#一時タグ削除
tag @e[tag=ui_temp_team] remove ui_temp_team