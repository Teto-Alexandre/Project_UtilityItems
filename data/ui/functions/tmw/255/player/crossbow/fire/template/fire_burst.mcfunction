#
scoreboard players set $fire ui_temp 1
execute store result score $temp ui_temp run data get storage ui:gun temp.BurstCT
execute if score $temp ui_temp matches 0 store result score $temp ui_temp run data get storage ui:gun temp.ShottCT
execute store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $temp ui_temp
scoreboard players set $firetime ui_temp 0
#tellraw @a [{"score":{"objective":"ui_temp","name":"$burst.max"}},{"text":" - Burst"}]

#
scoreboard players set $changed ui_temp 1
