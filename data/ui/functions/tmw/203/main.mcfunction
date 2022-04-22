#=======================================================================================================

#全関数初期化
    execute as @s[scores={ui_dig_wood=1..}] run scoreboard players set @s ui_dig 1
    execute as @s[scores={ui_dig_stone=1..}] run scoreboard players set @s ui_dig 1
    execute as @s[scores={ui_dig_iron=1..}] run scoreboard players set @s ui_dig 1
    execute as @s[scores={ui_dig_diamond=1..}] run scoreboard players set @s ui_dig 1
    execute as @s[scores={ui_dig_gold=1..}] run scoreboard players set @s ui_dig 1
    execute as @s[scores={ui_dig_nether=1..}] run scoreboard players set @s ui_dig 1
    execute as @s[scores={ui_dig_wood=1..}] run scoreboard players set @s ui_dig_wood 0
    execute as @s[scores={ui_dig_stone=1..}] run scoreboard players set @s ui_dig_stone 0
    execute as @s[scores={ui_dig_iron=1..}] run scoreboard players set @s ui_dig_iron 0
    execute as @s[scores={ui_dig_diamond=1..}] run scoreboard players set @s ui_dig_diamond 0
    execute as @s[scores={ui_dig_gold=1..}] run scoreboard players set @s ui_dig_gold 0
    execute as @s[scores={ui_dig_nether=1..}] run scoreboard players set @s ui_dig_nether 0

#一括破壊実行
    execute as @s[scores={ui_dig=1}] at @s run function ui:tmw/203/active

#起動要件リセット
    execute as @s[scores={ui_dig=1}] run scoreboard players set @s ui_dig 0

#=======================================================================================================
