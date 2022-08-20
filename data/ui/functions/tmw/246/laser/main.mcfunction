#=======================================================================================================

execute as @a[scores={ui_use1=1..},nbt={SelectedItem:{tag:{ui:{use:1}}}}] at @s run function ui:tmw/246/laser/ranged
execute as @a[scores={ui_use1=1..}] run scoreboard players set @s ui_use1 0

execute as @e[tag=ui_use_1] run function ui:tmw/246/laser/laser

#=======================================================================================================