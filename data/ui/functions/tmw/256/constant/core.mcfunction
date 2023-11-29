# スペ以外の時に実行される常駐効果の管理
    #execute if score $ishold ui_temp matches 2.. at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.3 1 force @s
    #execute if score $ishold ui_temp matches 2.. at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.03 1 force @s
    #execute if score $ishold ui_temp matches 2.. at @s run particle firework ~ ~1.5 ~ 0.5 0.5 0.5 0.03 1 force @s
    execute at @s[scores={ui_st=0}] run function ui:tmw/256/constant/shoot
    execute if score $team ui_temp matches 1 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/256/constant/badfloor
    execute if score $team ui_temp matches 2 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ pink_wool run function ui:tmw/256/constant/badfloor
    execute if score $team ui_temp matches 3 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ yellow_wool run function ui:tmw/256/constant/badfloor
    execute if score $team ui_temp matches 4 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ lime_wool run function ui:tmw/256/constant/badfloor
    execute as @s[scores={ui_st=1..}] at @s run function ui:tmw/256/constant/sneak

#
    execute store result score $temp ui_temp run data get entity @s active_effects[{id:"minecraft:health_boost"}].Amplifier 1
    execute if score $temp ui_temp matches ..118 run effect give @s health_boost 10000 119 true
    effect give @s resistance 10000 3 true