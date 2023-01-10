# 修飾タイプの選択
execute store result score $changedtype ui_temp run data get storage ui:gun temp.ChangedType

# 何かしらの変更が加えられていたなら現在のステータスをまとめて変更する
#tellraw @a [{"score":{"objective":"ui_temp","name":"$bullets"}}]
execute if score $stats ui_temp matches 1 run scoreboard players set $burst ui_temp 1
execute store result storage ui:gun temp.now.Noidle int 1 run scoreboard players get $noidle ui_temp
execute store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
execute store result storage ui:gun temp.now.CT int 1 run scoreboard players get $cooltime ui_temp
execute store result storage ui:gun temp.now.AddCT int 1 run scoreboard players get $addct ui_temp
execute store result storage ui:gun temp.now.ReloadTime int 1 run scoreboard players get $reloadtime ui_temp
execute store result storage ui:gun temp.now.FireTime int 1 run scoreboard players get $firetime ui_temp
execute store result storage ui:gun temp.now.FireCount int 1 run scoreboard players get $firecount ui_temp
execute store result storage ui:gun temp.now.IsHold int 1 run scoreboard players get $ishold ui_temp
#execute store result storage ui:gun temp.now.Charge int 1 run scoreboard players get $charge ui_temp
execute store result storage ui:gun temp.now.Time int 1 run scoreboard players get $lasttime ui_temp
execute store result storage ui:gun temp.now.Amp int 1 run scoreboard players get $amp ui_temp
execute store result storage ui:gun temp.now.Bullets int 1 run scoreboard players get $bullets ui_temp
#tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}}]

#
execute unless data storage ui:gun temp.NoUI if score $changedtype ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/changed/id/0
execute unless data storage ui:gun temp.NoUI if score $changedtype ui_temp matches ..-1 at @s run function ui:tmw/255/player/crossbow/changed/id/downer/chg_d
execute unless data storage ui:gun temp.NoUI if score $changedtype ui_temp matches 1.. at @s run function ui:tmw/255/player/crossbow/changed/id/upper/chg_u