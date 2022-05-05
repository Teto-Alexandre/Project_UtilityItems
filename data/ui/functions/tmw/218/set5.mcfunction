#=======================================================================================

tag @s add tmw_218_5

scoreboard players add @s ui_is 0
scoreboard players operation @s ui_id = @p ui_id

item modify entity @p[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{type:5}}}}] weapon.mainhand ui:damage10p

#=======================================================================================
