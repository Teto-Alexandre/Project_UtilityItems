# 回転制限

# 装着時演出
#なし

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
scoreboard players operation $x_lim ui_temp = @s ui_tmw501_19_stat_rot_x
scoreboard players operation $y_lim ui_temp = @s ui_tmw501_19_stat_rot_y
scoreboard players operation $x_lim^2 ui_temp = $x_lim ui_temp
scoreboard players operation $y_lim^2 ui_temp = $y_lim ui_temp
scoreboard players operation $x_lim^2 ui_temp *= $x_lim^2 ui_temp
scoreboard players operation $y_lim^2 ui_temp *= $y_lim^2 ui_temp
scoreboard players operation $x_lim^2*25 ui_temp = $x_lim^2 ui_temp
scoreboard players operation $y_lim^2*25 ui_temp = $y_lim^2 ui_temp
scoreboard players operation $x_lim^2*25 ui_temp *= #25 ui_num
scoreboard players operation $y_lim^2*25 ui_temp *= #25 ui_num
data merge storage tds: {temp:{Damage:0.50,DamageType:1,DeathMessage:-1,WeaponName:"",EPF:-1,BypassArmor:2000,BypassResistance:false}}
execute if score $x^2 ui_temp > $x_lim^2*25 ui_temp run data merge storage tds: {temp:{Damage:2.50,DamageType:1,DeathMessage:13,WeaponName:'{"text":"過負荷"}',EPF:-1,BypassArmor:2000,BypassResistance:false}}
execute if score $y^2 ui_temp > $y_lim^2*25 ui_temp run data merge storage tds: {temp:{Damage:2.50,DamageType:1,DeathMessage:13,WeaponName:'{"text":"過負荷"}',EPF:-1,BypassArmor:2000,BypassResistance:false}}
execute if score $x ui_temp matches 1.. if score $x^2 ui_temp > $x_lim^2 ui_temp run function tds:attack_keep
execute if score $x ui_temp matches ..-1 if score $x^2 ui_temp > $x_lim^2 ui_temp run function tds:attack_keep
execute if score $y ui_temp matches 1.. if score $y^2 ui_temp > $y_lim^2 ui_temp run function tds:attack_keep
execute if score $y ui_temp matches ..-1 if score $y^2 ui_temp > $y_lim^2 ui_temp run function tds:attack_keep
function tds:remove_tds