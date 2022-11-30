# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute store result storage ui:gun temp.now.Shotmode int 1 run scoreboard players get $shotmode ui_temp
execute store result storage ui:gun temp.now.Chargetime int 1 run scoreboard players get $chargetime ui_temp
execute store result storage ui:gun temp.now.Shottime int 1 run scoreboard players get $shottime ui_temp