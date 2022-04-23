#> ui:common/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm 

#tick毎ループ
function ui:common/projectile/move
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
kill @s[scores={ui_br=..0}]
kill @s[tag=ui_proj_common_nocol]