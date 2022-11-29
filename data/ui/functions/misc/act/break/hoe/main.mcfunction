# ツルハシを使う標準準備動作

# 統合
    execute if score @s ui_harv_wood matches 1.. run scoreboard players set @s ui_harv 1
    execute if score @s ui_harv_stone matches 1.. run scoreboard players set @s ui_harv 1
    execute if score @s ui_harv_iron matches 1.. run scoreboard players set @s ui_harv 1
    execute if score @s ui_harv_diamond matches 1.. run scoreboard players set @s ui_harv 1
    execute if score @s ui_harv_gold matches 1.. run scoreboard players set @s ui_harv 1
    execute if score @s ui_harv_nether matches 1.. run scoreboard players set @s ui_harv 1

#
    execute if score @s ui_harv matches 1 run function ui:misc/act/break/hoe/harvd