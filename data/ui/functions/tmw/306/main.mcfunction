#===========================================================================

#弾丸カウント
data modify storage ui:gun name set from entity @s SelectedItem.tag.tmw.ammo.name
execute store result score @s ui_temp run data get entity @s SelectedItem.tag.tmw.ammo.amount 1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:306,ammo:{png:1}}}}}] weapon.mainhand ui:weapon_gun/bullet
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:306,ammo:{png:2}}}}}] weapon.mainhand ui:weapon_gun/hg_m
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:306,ammo:{png:11}}}}}] weapon.mainhand ui:weapon_gun/ar_m
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:306,ammo:{png:21}}}}}] weapon.mainhand ui:weapon_gun/sg_bullet
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:306,ammo:{png:31}}}}}] weapon.mainhand ui:weapon_gun/rf_bullet
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:306,ammo:{png:41}}}}}] weapon.mainhand ui:weapon_gun/sr_bullet

#===========================================================================
