# ツルハシを使う標準準備動作

# 統合
    execute if score @s ui_dig_wood matches 1.. run scoreboard players set @s ui_dig 1
    execute if score @s ui_dig_stone matches 1.. run scoreboard players set @s ui_dig 1
    execute if score @s ui_dig_iron matches 1.. run scoreboard players set @s ui_dig 1
    execute if score @s ui_dig_diamond matches 1.. run scoreboard players set @s ui_dig 1
    execute if score @s ui_dig_gold matches 1.. run scoreboard players set @s ui_dig 1
    execute if score @s ui_dig_nether matches 1.. run scoreboard players set @s ui_dig 1

#
    execute if score @s ui_dig matches 1 run function ui:misc/act/break/shovel/dug