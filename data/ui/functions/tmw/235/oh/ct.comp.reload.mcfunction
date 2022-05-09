execute store result score $ammo ui_temp run data get storage ui:gun temp.now.ammo
data modify storage ui:beacongametemp value set value 0
item modify entity @s weapon.offhand ui:gun/value/now.reload
data modify storage ui:gun name set from storage ui:gun temp.name
item modify entity @s weapon.offhand ui:gun/name_ammo
execute store result storage ui:beacongametemp value int 1 run scoreboard players get $ammo ui_temp
scoreboard players operation $ammo ui_temp *= #100 ui_num
scoreboard players operation $ammo ui_temp /= $ammo.max ui_temp
scoreboard players operation $ammo ui_temp > #5 ui_num
scoreboard players operation $ammo ui_temp < #95 ui_num
item modify entity @s weapon.offhand ui:gun/value/now.ammo