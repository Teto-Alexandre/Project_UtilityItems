# スペ以外の時に実行される常駐効果の管理
    execute at @s[scores={ui_st=0}] run function ui:tmw/237/constant/shoot
    execute if score $team ui_temp matches 1 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/constant/badfloor
    execute if score $team ui_temp matches 2 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/constant/badfloor
    execute if score $team ui_temp matches 3 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ yellow_wool run function ui:tmw/237/constant/badfloor
    execute if score $team ui_temp matches 4 at @s if block ~ ~-0.3 ~ #ui:wools_color unless block ~ ~-0.3 ~ lime_wool run function ui:tmw/237/constant/badfloor
    execute as @s[scores={ui_st=1..}] at @s run function ui:tmw/237/constant/sneak