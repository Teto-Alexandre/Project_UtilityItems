# 採掘

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle block iron_block ~ ~1.6 ~ 0.4 0.2 0.4 0 8
execute if entity @s[tag=tmw601_changed] run playsound block.stone.break player @a ~ ~ ~ 0.5 1

#
function ui:template/get_rotation
scoreboard players operation $x ui_temp = @s ui_rot_x
scoreboard players operation $y ui_temp = @s ui_rot_y
scoreboard players operation $x ui_temp -= @s ui_rot_x_old
scoreboard players operation $y ui_temp -= @s ui_rot_y_old
execute if score $x ui_temp matches ..-1801 run scoreboard players add $x ui_temp 3600
execute if score $x ui_temp matches 1801.. run scoreboard players remove $x ui_temp 3600
scoreboard players operation $x^2 ui_temp = $x ui_temp
scoreboard players operation $y^2 ui_temp = $y ui_temp
scoreboard players operation $x^2 ui_temp *= $x^2 ui_temp
scoreboard players operation $y^2 ui_temp *= $y^2 ui_temp

#
#execute unless score $x ui_temp matches 0 unless score $y ui_temp matches 0 run tellraw @a [{"score":{"name":"$x","objective":"ui_temp"}},{"text":":"},{"score":{"name":"$y","objective":"ui_temp"}}]
execute store result score $x_lim ui_temp run data get entity @s Inventory[{Slot:103b}].tag.tmw.601_4600.X
execute store result score $y_lim ui_temp run data get entity @s Inventory[{Slot:103b}].tag.tmw.601_4600.Y
scoreboard players operation $x_lim^2 ui_temp = $x_lim ui_temp
scoreboard players operation $y_lim^2 ui_temp = $y_lim ui_temp
scoreboard players operation $x_lim^2 ui_temp *= $x_lim^2 ui_temp
scoreboard players operation $y_lim^2 ui_temp *= $y_lim^2 ui_temp
scoreboard players operation $x_lim^2*25 ui_temp = $x_lim^2 ui_temp
scoreboard players operation $y_lim^2*25 ui_temp = $y_lim^2 ui_temp
scoreboard players operation $x_lim^2*25 ui_temp *= #25 ui_num
scoreboard players operation $y_lim^2*25 ui_temp *= #25 ui_num
data merge storage tds: {Damage:0.50,DamageType:1,DeathMessage:-1,WeaponName:"",EPF:-1,BypassArmor:2000,BypassResistance:false}
execute if score $x^2 ui_temp > $x_lim^2*25 ui_temp run data merge storage tds: {Damage:2.50,DamageType:1,DeathMessage:13,WeaponName:"過負荷",EPF:-1,BypassArmor:2000,BypassResistance:false}
execute if score $y^2 ui_temp > $y_lim^2*25 ui_temp run data merge storage tds: {Damage:2.50,DamageType:1,DeathMessage:13,WeaponName:"過負荷",EPF:-1,BypassArmor:2000,BypassResistance:false}
execute if score $x ui_temp matches 1.. if score $x^2 ui_temp > $x_lim^2 ui_temp run function tds:attack
execute if score $x ui_temp matches ..-1 if score $x^2 ui_temp > $x_lim^2 ui_temp run function tds:attack
execute if score $y ui_temp matches 1.. if score $y^2 ui_temp > $y_lim^2 ui_temp run function tds:attack
execute if score $y ui_temp matches ..-1 if score $y^2 ui_temp > $y_lim^2 ui_temp run function tds:attack