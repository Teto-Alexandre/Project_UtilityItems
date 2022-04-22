#===========================================================================

#発射音
playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2 0

#クールタイム
execute store result score @s ui_gct run data get entity @s SelectedItem.tag.tmw.gun.gct1
execute store result score @s[scores={ui_bc=1}] ui_gct run data get entity @s SelectedItem.tag.tmw.gun.gct2
scoreboard players remove @s ui_bc 1

#===========================================================================