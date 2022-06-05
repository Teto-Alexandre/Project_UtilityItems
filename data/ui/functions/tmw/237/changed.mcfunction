# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
execute store result storage ui:gun temp.now.CT int 1 run scoreboard players get $cooltime ui_temp
execute store result storage ui:gun temp.now.Ink int 1 run scoreboard players get $ink ui_temp
execute store result storage ui:gun temp.now.SP int 1 run scoreboard players get $sp ui_temp
execute if score $sptime ui_temp matches ..-1 run scoreboard players set $sptime ui_temp 0
execute store result storage ui:gun temp.now.SPTime int 1 run scoreboard players get $sptime ui_temp
execute if score $sptime ui_temp matches 0 run function ui:tmw/237/changed.sp0
execute if score $sptime ui_temp matches 1.. run function ui:tmw/237/changed.sp1
execute if score $color ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/value/now_aqua
execute if score $color ui_temp matches 2 run item modify entity @s weapon.mainhand ui:gun/value/now_pink