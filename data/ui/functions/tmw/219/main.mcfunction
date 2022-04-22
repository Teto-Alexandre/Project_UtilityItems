#=======================================================================================================

#全関数初期化
    execute as @s[scores={ui_mine_wood=1..}] run scoreboard players set @s ui_mine 1
    execute as @s[scores={ui_mine_stone=1..}] run scoreboard players set @s ui_mine 1
    execute as @s[scores={ui_mine_iron=1..}] run scoreboard players set @s ui_mine 1
    execute as @s[scores={ui_mine_diamond=1..}] run scoreboard players set @s ui_mine 1
    execute as @s[scores={ui_mine_gold=1..}] run scoreboard players set @s ui_mine 1
    execute as @s[scores={ui_mine_nether=1..}] run scoreboard players set @s ui_mine 1
    execute as @s[scores={ui_mine_wood=1..}] run scoreboard players set @s ui_mine_wood 0
    execute as @s[scores={ui_mine_stone=1..}] run scoreboard players set @s ui_mine_stone 0
    execute as @s[scores={ui_mine_iron=1..}] run scoreboard players set @s ui_mine_iron 0
    execute as @s[scores={ui_mine_diamond=1..}] run scoreboard players set @s ui_mine_diamond 0
    execute as @s[scores={ui_mine_gold=1..}] run scoreboard players set @s ui_mine_gold 0
    execute as @s[scores={ui_mine_nether=1..}] run scoreboard players set @s ui_mine_nether 0

#今破壊したよな？な？
    execute as @s[scores={ui_mine=1}] at @s run function ui:tmw/219/active

#起動要件リセット
    execute as @s[scores={ui_mine=1}] run scoreboard players set @s ui_mine 0

#=======================================================================================================
