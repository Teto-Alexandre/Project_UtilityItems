# リジェネフィールド
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[type=!#ui:notmob,distance=..5] if score @s ui_team = $temp ui_temp run effect give @s regeneration 1 5 false
    particle happy_villager ~ ~ ~ 2.5 2.5 2.5 0 10 normal