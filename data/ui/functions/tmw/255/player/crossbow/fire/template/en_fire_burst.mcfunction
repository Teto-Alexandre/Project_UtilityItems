#
scoreboard players set $fire ui_temp 1
execute store result score $temp ui_temp run data get storage ui:gun temp.BurstCT
execute if score $temp ui_temp matches 0 store result score $temp ui_temp run data get storage ui:gun temp.ShottCT
execute store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $temp ui_temp
scoreboard players set $firetime ui_temp 0
#tellraw @a [{"score":{"objective":"ui_temp","name":"$burst.max"}},{"text":" - Burst"}]

#
execute store result score $en ui_temp run data get storage ui:gun temp.ShotEN
execute if score @s ui_tmw501_19_now_en < $en ui_temp run tag @s add ui_temp_fail
execute if score @s ui_tmw501_19_now_en >= $en ui_temp run scoreboard players operation @s ui_tmw501_19_now_en -= $en ui_temp

#
scoreboard players set $changed ui_temp 1
