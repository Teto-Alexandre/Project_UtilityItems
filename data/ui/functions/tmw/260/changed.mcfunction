# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute store result storage ui:gun temp.now.Mode int 1 run scoreboard players get $mode ui_temp

#tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}}]
item modify entity @s weapon.mainhand ui:gun/value/now_260