#=======================================================================================================

execute as @e[tag=ui_d,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui_d,scores={ui_id=1..}] ui_idc -= @s ui_id
execute as @e[tag=db,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=db,scores={ui_id=1..}] ui_idc -= @s ui_id
execute as @a[scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @a[scores={ui_id=1..}] ui_idc -= @s ui_id

#=======================================================================================================

execute if entity @s[scores={ui_cm=1}] as @e[tag=ui_d_data,scores={ui_idc=0}] run function ui:tmw/246/sp/chest/always1

#=======================================================================================================

execute as @e[tag=ui_d,tag=ui_seld,scores={ui_idc=0}] run function ui:tmw/246/sp/sel_onetime
execute as @e[tag=ui_d,tag=ui_sel,scores={ui_idc=0}] run function ui:tmw/246/sp/sel_loop

execute as @e[tag=ui_seld_o,scores={ui_idc=0}] run function ui:tmw/246/sp/sel_onetime_o
execute as @e[tag=ui_sel_o,scores={ui_idc=0}] run function ui:tmw/246/sp/sel_loop_o

#=======================================================================================================

execute as @e[tag=ui_d,tag=!ui_d_nohit,scores={ui_idc=0}] run function ui:tmw/246/sp/dmg_check
execute as @e[tag=ui_d,tag=!ui_d_nohit,tag=!ui_d_notglitch,scores={ui_idc=0}] run function ui:tmw/246/sp/hitbox_antiglitch
execute as @e[tag=ui_d_to_block,scores={ui_idc=0}] run function ui:tmw/246/sp/to_block
execute as @e[tag=ui_d_death,tag=!ui_d_dcheckd,scores={ui_idc=0}] run function ui:tmw/246/sp/death
execute as @e[tag=ui_d_dcheck,scores={ui_idc=0}] run function ui:tmw/246/sp/dcheck

#=======================================================================================================

execute as @e[tag=ui_base_lost,scores={ui_idc=0}] run function ui:tmw/246/sp/base_lost

#=======================================================================================================

execute as @e[tag=ui_sel_obj1-2,scores={ui_idc=0}] run function ui:tmw/246/sp/activate1
execute as @e[tag=ui_sel_obj2-2,scores={ui_idc=0}] run function ui:tmw/246/sp/activate2

#=======================================================================================================
