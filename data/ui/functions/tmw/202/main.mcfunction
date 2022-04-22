#=======================================================================================================

#全関数初期化
    execute as @s[scores={ui_cut_wood=1..}] run scoreboard players set @s ui_cut 1
    execute as @s[scores={ui_cut_stone=1..}] run scoreboard players set @s ui_cut 1
    execute as @s[scores={ui_cut_iron=1..}] run scoreboard players set @s ui_cut 1
    execute as @s[scores={ui_cut_diamond=1..}] run scoreboard players set @s ui_cut 1
    execute as @s[scores={ui_cut_gold=1..}] run scoreboard players set @s ui_cut 1
    execute as @s[scores={ui_cut_nether=1..}] run scoreboard players set @s ui_cut 1
    execute as @s[scores={ui_cut_wood=1..}] run scoreboard players set @s ui_cut_wood 0
    execute as @s[scores={ui_cut_stone=1..}] run scoreboard players set @s ui_cut_stone 0
    execute as @s[scores={ui_cut_iron=1..}] run scoreboard players set @s ui_cut_iron 0
    execute as @s[scores={ui_cut_diamond=1..}] run scoreboard players set @s ui_cut_diamond 0
    execute as @s[scores={ui_cut_gold=1..}] run scoreboard players set @s ui_cut_gold 0
    execute as @s[scores={ui_cut_nether=1..}] run scoreboard players set @s ui_cut_nether 0

#一括破壊実行
    execute as @s[scores={ui_cut=1}] at @s run function ui:tmw/202/active

#起動要件リセット
    execute as @s[scores={ui_cut=1}] run scoreboard players set @s ui_cut 0

#=======================================================================================================
