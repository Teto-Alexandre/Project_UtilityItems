scoreboard players operation $Absorption tds_dmg -= $Damage tds_dmg
scoreboard players set $Damage tds_dmg 0

execute if score $Absorption tds_dmg matches 1.. store result entity @s AbsorptionAmount float 0.0001 run scoreboard players get $Absorption tds_dmg
execute if score $Absorption tds_dmg matches ..0 run data modify entity @s AbsorptionAmount set value 0

#tellraw @a [{"score":{"name": "$AbsorptionTemp","objective": "tds_dmg"}}]

execute if score $Absorption tds_dmg matches ..0 run scoreboard players operation $Damage tds_dmg -= $Absorption tds_dmg