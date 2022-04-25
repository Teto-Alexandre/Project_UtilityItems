#=======================================================================================================

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm 

#tick毎ループ
function ui:common/projectile/move
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute as @s[scores={ui_br=..0}] run function ui:common/projectile/kill

#=======================================================================================================