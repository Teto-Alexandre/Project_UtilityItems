# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
item modify entity @s weapon.mainhand ui:gun/value/now_pink