# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
execute store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
execute store result storage ui:gun temp.now.CT int 1 run scoreboard players get $cooltime ui_temp
execute store result storage ui:gun temp.now.Ink int 1 run scoreboard players get $ink ui_temp
execute if score $subtime ui_temp matches ..-1 run scoreboard players set $subtime ui_temp 0
execute store result storage ui:gun temp.now.SubTime int 1 run scoreboard players get $subtime ui_temp
execute store result storage ui:gun temp.now.SP int 1 run scoreboard players get $sp ui_temp
execute if score $sptime ui_temp matches ..-1 run scoreboard players set $sptime ui_temp 0
execute store result storage ui:gun temp.now.SPTime int 1 run scoreboard players get $sptime ui_temp
execute store result storage ui:gun temp.now.IsHold int 1 run scoreboard players get $ishold ui_temp
#execute store result storage ui:gun temp.now.Charge int 1 run scoreboard players get $charge ui_temp
execute store result storage ui:gun temp.now.Time int 1 run scoreboard players get $lasttime ui_temp
execute store result storage ui:gun temp.now.Amp int 1 run scoreboard players get $amp ui_temp

execute if score $bursttype ui_temp matches 11 store result storage ui:gun temp.now.Shotmode int 1 run scoreboard players get $shotmode ui_temp
execute if score $bursttype ui_temp matches 11 store result storage ui:gun temp.now.Chargetime int 1 run scoreboard players get $chargetime ui_temp
execute if score $bursttype ui_temp matches 11 store result storage ui:gun temp.now.Shottime int 1 run scoreboard players get $shottime ui_temp

execute if score $bursttype ui_temp matches 12 store result storage ui:gun temp.now.Multibullet int 1 run scoreboard players get $multibullet ui_temp

#tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}}]
execute if score $subtime ui_temp matches 0 if score $sptime ui_temp matches 0 run function ui:tmw/237/changed/bar_ink
execute if score $subtime ui_temp matches 1.. if score $sptime ui_temp matches 0 run function ui:tmw/237/changed/bar_sub
execute if score $sptime ui_temp matches 1.. run function ui:tmw/237/changed/bar_sp
execute if score $team ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/value/now_aqua
execute if score $team ui_temp matches 2 run item modify entity @s weapon.mainhand ui:gun/value/now_pink
execute if score $team ui_temp matches 3 run item modify entity @s weapon.mainhand ui:gun/value/now_yellow
execute if score $team ui_temp matches 4 run item modify entity @s weapon.mainhand ui:gun/value/now_lime
