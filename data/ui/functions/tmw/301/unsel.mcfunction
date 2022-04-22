#=======================================================================================================

scoreboard players reset @e ui_idc
execute as @e[tag=ui_i,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui_i,scores={ui_id=1..}] ui_idc -= @s ui_id

scoreboard players reset @e[scores={ui_idc=0}] ui_id
tag @e[scores={ui_idc=0}] remove ui_i_sel
tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> リンク選択を解除しました","color":"gray"}]
execute as @p[scores={ui_tmw_id=301}] at @s run playsound block.tripwire.detach master @s ~ ~ ~ 0.8 1 0

#=======================================================================================================