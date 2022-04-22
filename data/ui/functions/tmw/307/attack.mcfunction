#===========================================================================

scoreboard players operation $blood ui_temp = @s ui_m_dd
scoreboard players operation $blood ui_temp /= #10 ui_num
execute store result score $blood_now ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.blood.amount
scoreboard players operation $blood ui_temp += $blood_now ui_temp
execute store result score $blood_max ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.blood.max
execute store result storage ui:temp blood int 1 run scoreboard players operation $blood ui_temp < $blood_max ui_temp

scoreboard players operation $blood_calc ui_temp = $blood_max ui_temp
scoreboard players operation $blood_calc ui_temp -= $blood ui_temp
scoreboard players operation $blood_calc ui_temp *= #24 ui_num
execute store result storage ui:temp damage int 1 run scoreboard players operation $blood_calc ui_temp /= $blood_max ui_temp

item modify entity @s weapon.offhand ui:tmw307

#===========================================================================
