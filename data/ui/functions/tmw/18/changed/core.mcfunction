# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
#execute store result storage ui:skill temp.now.CT int 1 run scoreboard players get $cooltime ui_temp

item modify entity @s weapon.mainhand ui:skill/value/now
