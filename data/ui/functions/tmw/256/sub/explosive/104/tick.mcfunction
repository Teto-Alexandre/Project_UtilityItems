# ライトアップ

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[type=!#ui:notmob,distance=..2] unless score @s ui_team = $temp ui_temp run effect give @s glowing 1 0 false
    execute as @e[type=!#ui:notmob,distance=..2] unless score @s ui_team = $temp ui_temp run effect give @s slowness 1 0 false
    particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 1 normal
    execute if score @s ui_uses matches 20.. run tag @s add ui_256_sub_explode

# 処理終了
    execute if entity @s[tag=ui_256_sub_explode] rotated ~ 0 run function ui:tmw/256/sub/explosive/104/end