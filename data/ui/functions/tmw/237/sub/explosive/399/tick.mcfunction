# ナイスダマ

# 常時実行
    data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
    
# 処理終了
    scoreboard players add @s ui_is 1
    scoreboard players operation $time ui_temp = @s ui_is
    scoreboard players operation $time ui_temp %= #2 ui_num
    execute if score $time ui_temp matches 0 run function ui:tmw/237/sub/explosive/399/explode
    execute if score @s ui_is >= @s ui_is2 run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run kill @s