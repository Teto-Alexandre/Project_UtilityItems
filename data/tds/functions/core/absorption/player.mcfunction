execute store result score $Absorption tds_dmg run data get entity @s AbsorptionAmount 10000
execute store result score $AbsorptionMax tds_dmg run attribute @s generic.max_absorption get
#execute store result score $temp ui_temp run data get entity @s active_effects[{id:"minecraft:absorption"}].amplifier 10000
#execute if data entity @s active_effects[{id:"minecraft:absorption"}].amplifier run scoreboard players add $temp ui_temp 1
#execute unless data entity @s active_effects[{id:"minecraft:absorption"}].amplifier run scoreboard players set $temp ui_temp 0

scoreboard players operation $AbsorptionMax tds_dmg *= #10000 ui_num
#scoreboard players operation $temp ui_temp *= #4 ui_num
#scoreboard players operation $AbsorptionMax tds_dmg += $temp ui_temp

#tellraw @a [{"text":"Absorption: ","color":"yellow"},{"score":{"name": "$Absorption","objective": "tds_dmg"}},{"text":"/","color":"yellow"},{"score":{"name": "$AbsorptionMax","objective": "tds_dmg"}}]