#=======================================================================================================

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm 

#tick毎弾移動ループ
function ui:tmw/305/proj/move
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
kill @s[scores={ui_br=..0}]
kill @s[tag=ui_305_nocol]

#=======================================================================================================