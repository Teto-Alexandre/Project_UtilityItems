scoreboard players operation $Absorption tds_dmg -= $Damage tds_dmg
scoreboard players set $Damage tds_dmg 0

execute if score $Absorption tds_dmg matches 1.. run scoreboard players operation $AbsorptionTemp tds_dmg = $AbsorptionMax tds_dmg
execute if score $Absorption tds_dmg matches 1.. run scoreboard players operation $AbsorptionTemp tds_dmg -= $Absorption tds_dmg
execute if score $Absorption tds_dmg matches 1.. run scoreboard players operation $AbsorptionTemp tds_dmg /= #100 ui_num

#tellraw @a [{"score":{"name": "$AbsorptionTemp","objective": "tds_dmg"}}]

execute if score $AbsorptionTemp tds_dmg matches 262144.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-32 "32" -2621.44 add
execute if score $AbsorptionTemp tds_dmg matches 262144.. run scoreboard players remove $AbsorptionTemp tds_dmg 262144

execute if score $AbsorptionTemp tds_dmg matches 131072.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-31 "31" -1310.72 add
execute if score $AbsorptionTemp tds_dmg matches 131072.. run scoreboard players remove $AbsorptionTemp tds_dmg 131072

execute if score $AbsorptionTemp tds_dmg matches 65536.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-30 "30" -655.36 add
execute if score $AbsorptionTemp tds_dmg matches 65536.. run scoreboard players remove $AbsorptionTemp tds_dmg 65536

execute if score $AbsorptionTemp tds_dmg matches 32768.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-2F "2F" -327.68 add
execute if score $AbsorptionTemp tds_dmg matches 32768.. run scoreboard players remove $AbsorptionTemp tds_dmg 32768

execute if score $AbsorptionTemp tds_dmg matches 16384.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-2E "2E" -163.84 add
execute if score $AbsorptionTemp tds_dmg matches 16384.. run scoreboard players remove $AbsorptionTemp tds_dmg 16384

execute if score $AbsorptionTemp tds_dmg matches 8192.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-2D "2D" -81.92 add
execute if score $AbsorptionTemp tds_dmg matches 8192.. run scoreboard players remove $AbsorptionTemp tds_dmg 8192

execute if score $AbsorptionTemp tds_dmg matches 4096.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-2C "2C" -40.96 add
execute if score $AbsorptionTemp tds_dmg matches 4096.. run scoreboard players remove $AbsorptionTemp tds_dmg 4096

execute if score $AbsorptionTemp tds_dmg matches 2048.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-2B "2B" -20.48 add
execute if score $AbsorptionTemp tds_dmg matches 2048.. run scoreboard players remove $AbsorptionTemp tds_dmg 2048

execute if score $AbsorptionTemp tds_dmg matches 1024.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-2A "2A" -10.24 add
execute if score $AbsorptionTemp tds_dmg matches 1024.. run scoreboard players remove $AbsorptionTemp tds_dmg 1024

execute if score $AbsorptionTemp tds_dmg matches 512.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-29 "29" -5.12 add
execute if score $AbsorptionTemp tds_dmg matches 512.. run scoreboard players remove $AbsorptionTemp tds_dmg 512

execute if score $AbsorptionTemp tds_dmg matches 256.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-28 "28" -2.56 add
execute if score $AbsorptionTemp tds_dmg matches 256.. run scoreboard players remove $AbsorptionTemp tds_dmg 256

execute if score $AbsorptionTemp tds_dmg matches 128.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-27 "27" -1.28 add
execute if score $AbsorptionTemp tds_dmg matches 128.. run scoreboard players remove $AbsorptionTemp tds_dmg 128

execute if score $AbsorptionTemp tds_dmg matches 64.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-26 "26" -0.64 add
execute if score $AbsorptionTemp tds_dmg matches 64.. run scoreboard players remove $AbsorptionTemp tds_dmg 64

execute if score $AbsorptionTemp tds_dmg matches 32.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-25 "25" -0.32 add
execute if score $AbsorptionTemp tds_dmg matches 32.. run scoreboard players remove $AbsorptionTemp tds_dmg 32

execute if score $AbsorptionTemp tds_dmg matches 16.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-24 "24" -0.16 add
execute if score $AbsorptionTemp tds_dmg matches 16.. run scoreboard players remove $AbsorptionTemp tds_dmg 16

execute if score $AbsorptionTemp tds_dmg matches 8.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-23 "23" -0.08 add
execute if score $AbsorptionTemp tds_dmg matches 8.. run scoreboard players remove $AbsorptionTemp tds_dmg 8

execute if score $AbsorptionTemp tds_dmg matches 4.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-22 "22" -0.04 add
execute if score $AbsorptionTemp tds_dmg matches 4.. run scoreboard players remove $AbsorptionTemp tds_dmg 4

execute if score $AbsorptionTemp tds_dmg matches 2.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-21 "21" -0.02 add
execute if score $AbsorptionTemp tds_dmg matches 2.. run scoreboard players remove $AbsorptionTemp tds_dmg 2

execute if score $AbsorptionTemp tds_dmg matches 1.. run attribute @s minecraft:generic.max_absorption modifier add 1-0-0-0-20 "20" -0.01 add
execute if score $AbsorptionTemp tds_dmg matches 1.. run scoreboard players remove $AbsorptionTemp tds_dmg 1

damage @p 0.00000001 ui:common

attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-20
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-21
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-22
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-23
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-24
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-25
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-26
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-27
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-28
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-29
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-2A
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-2B
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-2C
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-2D
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-2E
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-2F
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-30
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-31
attribute @s minecraft:generic.max_absorption modifier remove 1-0-0-0-32

execute if score $Absorption tds_dmg matches ..0 run scoreboard players operation $Damage tds_dmg -= $Absorption tds_dmg