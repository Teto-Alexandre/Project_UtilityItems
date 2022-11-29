#起動要件リセット
    execute if score @s ui_mine_wood matches 1.. run scoreboard players set @s ui_mine_wood 0
    execute if score @s ui_mine_stone matches 1.. run scoreboard players set @s ui_mine_stone 0
    execute if score @s ui_mine_iron matches 1.. run scoreboard players set @s ui_mine_iron 0
    execute if score @s ui_mine_diamond matches 1.. run scoreboard players set @s ui_mine_diamond 0
    execute if score @s ui_mine_gold matches 1.. run scoreboard players set @s ui_mine_gold 0
    execute if score @s ui_mine_nether matches 1.. run scoreboard players set @s ui_mine_nether 0
    execute if score @s ui_mine matches 1 run scoreboard players set @s ui_mine 0
    
    execute if score @s ui_cut_wood matches 1.. run scoreboard players set @s ui_cut_wood 0
    execute if score @s ui_cut_stone matches 1.. run scoreboard players set @s ui_cut_stone 0
    execute if score @s ui_cut_iron matches 1.. run scoreboard players set @s ui_cut_iron 0
    execute if score @s ui_cut_diamond matches 1.. run scoreboard players set @s ui_cut_diamond 0
    execute if score @s ui_cut_gold matches 1.. run scoreboard players set @s ui_cut_gold 0
    execute if score @s ui_cut_nether matches 1.. run scoreboard players set @s ui_cut_nether 0
    execute if score @s ui_cut matches 1 run scoreboard players set @s ui_cut 0
    
    execute if score @s ui_dig_wood matches 1.. run scoreboard players set @s ui_dig_wood 0
    execute if score @s ui_dig_stone matches 1.. run scoreboard players set @s ui_dig_stone 0
    execute if score @s ui_dig_iron matches 1.. run scoreboard players set @s ui_dig_iron 0
    execute if score @s ui_dig_diamond matches 1.. run scoreboard players set @s ui_dig_diamond 0
    execute if score @s ui_dig_gold matches 1.. run scoreboard players set @s ui_dig_gold 0
    execute if score @s ui_dig_nether matches 1.. run scoreboard players set @s ui_dig_nether 0
    execute if score @s ui_dig matches 1 run scoreboard players set @s ui_dig 0
    
    execute if score @s ui_harv_wood matches 1.. run scoreboard players set @s ui_harv_wood 0
    execute if score @s ui_harv_stone matches 1.. run scoreboard players set @s ui_harv_stone 0
    execute if score @s ui_harv_iron matches 1.. run scoreboard players set @s ui_harv_iron 0
    execute if score @s ui_harv_diamond matches 1.. run scoreboard players set @s ui_harv_diamond 0
    execute if score @s ui_harv_gold matches 1.. run scoreboard players set @s ui_harv_gold 0
    execute if score @s ui_harv_nether matches 1.. run scoreboard players set @s ui_harv_nether 0
    execute if score @s ui_harv matches 1 run scoreboard players set @s ui_harv 0

    scoreboard players set @s ui_break 0