#太陽の剣を伸ばすためのもの

#見た目
    particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 3 force

#次tickのための伸長
    teleport @s ^ ^ ^1

#範囲ダメージと破壊
    execute store result score $temp ui_temp run gamerule mobGriefing
    execute if score $temp ui_temp matches 1 run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire
    effect give @e[type=!#ui:notmob,type=!#ui:undead,distance=..2] instant_damage 1 1 true
    effect give @e[type=#ui:undead,distance=..2] instant_health 1 1 true

#寿命
    scoreboard players add @s ui_tc 1
    execute as @s[scores={ui_tc=..24}] at @s run function ui:tmw/101/101_2/laser
    tag @s[scores={ui_tc=25..}] remove tmw_101_2_1
    kill @s[scores={ui_tc=25..}]