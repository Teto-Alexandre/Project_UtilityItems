#===========================================================================

#弾丸カウント
execute store result score @s ui_temp run data get entity @s SelectedItem.tag.tmw.energy.amount 1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:303,energy:{type:-1}}}}}] weapon.mainhand ui:weapon_ammo/tmw303_-1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:303,energy:{type:1}}}}}] weapon.mainhand ui:weapon_ammo/tmw303_1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:303,energy:{type:2}}}}}] weapon.mainhand ui:weapon_ammo/tmw303_2
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:303,energy:{amount:0}}}}}] weapon.mainhand ui:weapon_ammo/tmw303

#===========================================================================
