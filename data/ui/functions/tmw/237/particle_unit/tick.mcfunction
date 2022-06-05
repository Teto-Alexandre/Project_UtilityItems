#> ui:tmw/237/particle_unit/tick
#
# 「演出用コモン」で召喚された「防具立て」を管理
#
# @public

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players operation @s ui_temp += @s ui_bm_temp
scoreboard players operation $team ui_temp = @s ui_team

#tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:tmw/237/particle_unit/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute as @s[scores={ui_br=..0}] run kill @s