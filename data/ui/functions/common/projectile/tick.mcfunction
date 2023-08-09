#> ui:common/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players operation @s ui_temp += @s ui_bm_temp
#scoreboard players add @s ui_bcp 1
#scoreboard players operation $temp ui_bcp = @s ui_bcp

#id1を共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
function ui:common/tag_temp_team

#重力補正
#execute if score @s ui_bpart matches 4..39 if score $temp ui_bcp matches 1.. at @s run function ui:common/projectile/gravity

#tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:common/projectile/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute as @s[scores={ui_br=..0}] run function ui:common/projectile/kill
