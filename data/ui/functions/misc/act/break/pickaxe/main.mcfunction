# ツルハシを使う標準準備動作

# 統合
    execute if score @s ui_mine_wood matches 1.. run scoreboard players set @s ui_mine 1
    execute if score @s ui_mine_stone matches 1.. run scoreboard players set @s ui_mine 1
    execute if score @s ui_mine_iron matches 1.. run scoreboard players set @s ui_mine 1
    execute if score @s ui_mine_diamond matches 1.. run scoreboard players set @s ui_mine 1
    execute if score @s ui_mine_gold matches 1.. run scoreboard players set @s ui_mine 1
    execute if score @s ui_mine_nether matches 1.. run scoreboard players set @s ui_mine 1

#
    execute if score @s ui_mine matches 1 run function ui:misc/act/break/pickaxe/mined

#
    execute if entity @s[tag=tmw_drop_s] unless score @s ui_ct matches 1.. if score @s ui_lvl_mine_lvl matches 1.. run function ui:misc/act/break/pickaxe/super_breaker