#===========================================================================

#弾丸カウント
execute store result score @s ui_temp run data get entity @s SelectedItem.tag.tmw.slot.tag.tmw.energy.amount 1
execute store result score @s ui_bu run data get entity @s SelectedItem.tag.tmw.gun.bu 1
execute as @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:1}}}}}] run function ui:tmw/302/png/small
execute as @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:2}}}}}] run function ui:tmw/302/png/large

#バースト数
execute as @s[scores={ui_use1=1..,ui_bc=..0}] store result score @s ui_bc run data get entity @s SelectedItem.tag.tmw.gun.bc

#クールタイム減少
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1

#弾丸の射出
scoreboard players operation @s ui_temp -= @s ui_bu
execute store result score @s ui_bt run data get entity @s SelectedItem.tag.tmw.slot.tag.tmw.energy.type
execute store result score @s ui_gms run data get entity @s SelectedItem.tag.tmw.gun.ms
execute as @s[scores={ui_bc=1..,ui_temp=..-1,ui_gct=..-1}] at @s run function ui:tmw/302/fail
execute unless score @s ui_bt matches 0 as @s[scores={ui_bc=1..,ui_temp=0..,ui_gct=..-1},nbt={SelectedItem:{tag:{tmw:{id:302}}}}] at @s run function ui:tmw/302/shot
execute as @s[scores={ui_bc=1..,ui_gct=..-1},tag=!ui_temp_success] at @s run function ui:tmw/302/fail

#成功クリア
tag @s remove ui_temp_success

#===========================================================================
