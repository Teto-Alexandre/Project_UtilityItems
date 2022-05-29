# 光らせ
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s glowing 1 0 false
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s slowness 1 0 false
    particle end_rod ~ ~ ~ 2.5 2.5 2.5 0.05 5 normal