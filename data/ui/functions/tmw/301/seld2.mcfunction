#=======================================================================================================

scoreboard players reset @e ui_idc
execute as @e[tag=ui_i,tag=!ui_i_seld2,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui_i,scores={ui_id=1..}] ui_idc -= @s ui_id

scoreboard players operation @e[scores={ui_idc=0}] ui_i_link = @s ui_i_id

tag @e[scores={ui_idc=0}] remove ui_i_sel
scoreboard players reset @e[scores={ui_idc=0}] ui_id
scoreboard players reset @e[scores={ui_idc=0}] ui_idc
scoreboard players reset @s ui_id
tag @s remove ui_i_seld2

execute at @s run particle dust 1 1 0 0.7 ~0.5 ~ ~0.5 0 0 0 0 1 normal
execute at @s run particle dust 1 1 0 0.7 ~0.5 ~ ~-0.5 0 0 0 0 1 normal
execute at @s run particle dust 1 1 0 0.7 ~0.5 ~-1 ~0.5 0 0 0 0 1 normal
execute at @s run particle dust 1 1 0 0.7 ~0.5 ~-1 ~-0.5 0 0 0 0 1 normal
execute at @s run particle dust 1 1 0 0.7 ~-0.5 ~ ~0.5 0 0 0 0 1 normal
execute at @s run particle dust 1 1 0 0.7 ~-0.5 ~ ~-0.5 0 0 0 0 1 normal
execute at @s run particle dust 1 1 0 0.7 ~-0.5 ~-1 ~0.5 0 0 0 0 1 normal
execute at @s run particle dust 1 1 0 0.7 ~-0.5 ~-1 ~-0.5 0 0 0 0 1 normal

tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> リンク完了！","color":"gray"}]
playsound entity.experience_orb.pickup player @p[scores={ui_tmw_id=301}] ~ ~ ~ 1 1.5 0

#=======================================================================================================