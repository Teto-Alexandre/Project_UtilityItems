execute store result score $Absorption tds_dmg run data get entity @s AbsorptionAmount 10000
execute store result score $AbsorptionMax tds_dmg run attribute @s generic.max_absorption get
scoreboard players operation $AbsorptionMax tds_dmg *= #10000 ui_num