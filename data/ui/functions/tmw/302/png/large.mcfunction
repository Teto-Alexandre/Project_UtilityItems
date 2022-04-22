#===========================================================================

#銃テクスチャ（小）
data modify storage ui:gun name set from entity @s SelectedItem.tag.tmw.gun.name
execute unless entity @s[nbt={SelectedItem:{tag:{tmw:{id:302,slot:{tag:{tmw:{id:303}}}}}}}] run item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:302}}}}] weapon.mainhand ui:weapon_png/large/none
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:302,slot:{tag:{tmw:{energy:{type:-1}}}}}}}}] weapon.mainhand ui:weapon_png/large/-1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:302,slot:{tag:{tmw:{energy:{type:1}}}}}}}}] weapon.mainhand ui:weapon_png/large/1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:302,slot:{tag:{tmw:{energy:{type:2}}}}}}}}] weapon.mainhand ui:weapon_png/large/2
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{id:302,slot:{tag:{tmw:{energy:{amount:0}}}}}}}}] weapon.mainhand ui:weapon_png/large/empty

#===========================================================================
