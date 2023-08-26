#
scoreboard players set $fire ui_temp 2
execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
execute store result score $addct.max ui_temp run data get storage ui:gun temp.AddCT
execute if score $addct.max ui_temp matches 1.. run function ui:tmw/255/player/crossbow/fire/template/fire_shot2
execute in overworld store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $temp ui_temp
#tellraw @a [{"score":{"objective":"ui_temp","name":"$burst.max"}},{"text":" - Shot"}]

#
scoreboard players set $changed ui_temp 1
