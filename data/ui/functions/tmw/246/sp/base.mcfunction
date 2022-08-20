#=======================================================================================================

#初回起動時の構成
execute as @s[tag=ui_based] run function ui:tmw/246/sp/setup

#=======================================================================================================

execute as @e[tag=ui_d,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui_d,scores={ui_id=1..}] ui_idc -= @s ui_id

execute if entity @s[scores={ui_cm=1}] as @e[tag=ui_d_data,scores={ui_idc=0}] run function ui:tmw/246/sp/chest/always1

#=======================================================================================================
