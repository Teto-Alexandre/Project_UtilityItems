# ツルハシを使う標準準備動作

# 統合
    execute if score @s ui_cut_wood matches 1.. run scoreboard players set @s ui_cut 1
    execute if score @s ui_cut_stone matches 1.. run scoreboard players set @s ui_cut 1
    execute if score @s ui_cut_iron matches 1.. run scoreboard players set @s ui_cut 1
    execute if score @s ui_cut_diamond matches 1.. run scoreboard players set @s ui_cut 1
    execute if score @s ui_cut_gold matches 1.. run scoreboard players set @s ui_cut 1
    execute if score @s ui_cut_nether matches 1.. run scoreboard players set @s ui_cut 1

#
    execute if score @s ui_cut matches 1 run function ui:misc/act/break/axe/cutted