# ライトアップ

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s glowing 1 0 false
    execute as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run effect give @s slowness 1 0 false
    particle end_rod ~ ~ ~ 2.5 2.5 2.5 0.05 5 normal
    execute if score @s ui_uses matches 60.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/104/end