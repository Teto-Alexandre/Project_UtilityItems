# スペ以外の時に実行される常駐効果の管理
    execute at @s[scores={ui_st=0}] run function ui:tmw/237/constant/shoot
    execute if score $color ui_temp matches 1 at @s if block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/constant/badfloor
    execute if score $color ui_temp matches 2 at @s if block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/constant/badfloor
    execute as @s[scores={ui_st=1..}] at @s run function ui:tmw/237/constant/sneak