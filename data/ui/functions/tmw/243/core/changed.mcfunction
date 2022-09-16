# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute store result storage ui:gun temp.tmw.gun.SubType int 1 run scoreboard players get $sub ui_temp
execute store result storage ui:gun temp.tmw.gun.SPType int 1 run scoreboard players get $sp ui_temp
execute store result storage ui:gun temp.tmw.gun.now.EPage int 1 run scoreboard players get $page ui_temp
execute store result storage ui:gun temp.tmw.gun.now.QFType int 1 run scoreboard players get $qf ui_temp
execute store success score $temp ui_temp run data remove storage ui:gun temp.tmw.gun.now.First
execute if score $temp ui_temp matches 1 run data remove storage ui:gun temp.display.Lore[-1]
execute if score $temp ui_temp matches 1 run data remove storage ui:gun temp.display.Lore[-1]
#tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}}]
item modify entity @s enderchest.8 ui:gun/value/now_tmw
item modify entity @s enderchest.8 ui:gun/value/now_display