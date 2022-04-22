#=======================================================================================================

#全関数初期化
    execute as @s[scores={ui_harv_wood=1..}] run scoreboard players set @s ui_harv 1
    execute as @s[scores={ui_harv_stone=1..}] run scoreboard players set @s ui_harv 1
    execute as @s[scores={ui_harv_iron=1..}] run scoreboard players set @s ui_harv 1
    execute as @s[scores={ui_harv_diamond=1..}] run scoreboard players set @s ui_harv 1
    execute as @s[scores={ui_harv_gold=1..}] run scoreboard players set @s ui_harv 1
    execute as @s[scores={ui_harv_nether=1..}] run scoreboard players set @s ui_harv 1
    execute as @s[scores={ui_harv_wood=1..}] run scoreboard players set @s ui_harv_wood 0
    execute as @s[scores={ui_harv_stone=1..}] run scoreboard players set @s ui_harv_stone 0
    execute as @s[scores={ui_harv_iron=1..}] run scoreboard players set @s ui_harv_iron 0
    execute as @s[scores={ui_harv_diamond=1..}] run scoreboard players set @s ui_harv_diamond 0
    execute as @s[scores={ui_harv_gold=1..}] run scoreboard players set @s ui_harv_gold 0
    execute as @s[scores={ui_harv_nether=1..}] run scoreboard players set @s ui_harv_nether 0

#一括破壊実行
    execute as @s[scores={ui_harv=1}] at @s run function ui:tmw/204/active

#起動要件リセット
    execute as @s[scores={ui_harv=1}] run scoreboard players set @s ui_harv 0

#=======================================================================================================
