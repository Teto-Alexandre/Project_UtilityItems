# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
execute store result storage ui:gun temp.now.CT int 1 run scoreboard players get $cooltime ui_temp
execute store result storage ui:gun temp.now.Ink int 1 run scoreboard players get $ink ui_temp
execute store result storage ui:gun temp.now.SP int 1 run scoreboard players get $sp ui_temp
scoreboard players operation $ink.temp ui_temp = $ink ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp > #5 ui_num
scoreboard players operation $ink.temp ui_temp < #95 ui_num
execute if score $color ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/value/now_aqua
execute if score $color ui_temp matches 2 run item modify entity @s weapon.mainhand ui:gun/value/now_pink