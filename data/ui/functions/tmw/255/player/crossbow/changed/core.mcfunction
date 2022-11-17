# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute if score $stats ui_temp matches 1 run scoreboard players set $burst ui_temp 0
execute store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
execute store result storage ui:gun temp.now.CT int 1 run scoreboard players get $cooltime ui_temp
execute store result storage ui:gun temp.now.IsHold int 1 run scoreboard players get $ishold ui_temp
#execute store result storage ui:gun temp.now.Charge int 1 run scoreboard players get $charge ui_temp
execute store result storage ui:gun temp.now.Time int 1 run scoreboard players get $lasttime ui_temp
execute store result storage ui:gun temp.now.Amp int 1 run scoreboard players get $amp ui_temp
execute store result storage ui:gun temp.now.Bullets int 1 run scoreboard players get $bullets ui_temp
#tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}}]
execute if score $subtime ui_temp matches 0 if score $sptime ui_temp matches 0 run function ui:tmw/255/player/crossbow/changed/bar_ink
execute if score $subtime ui_temp matches 1.. if score $sptime ui_temp matches 0 run function ui:tmw/255/player/crossbow/changed/bar_sub
execute if score $sptime ui_temp matches 1.. run function ui:tmw/255/player/crossbow/changed/bar_sp
item modify entity @s weapon.mainhand ui:tmw255/now