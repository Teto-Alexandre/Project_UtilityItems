# ポイズン

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s slowness 1 2 false
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s weakness 1 0 false
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s wither 1 0 false
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s blindness 2 0 false
    particle dragon_breath ~ ~ ~ 2.5 2.5 2.5 0 10 normal
    execute if score @s ui_uses matches 100.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/109/end