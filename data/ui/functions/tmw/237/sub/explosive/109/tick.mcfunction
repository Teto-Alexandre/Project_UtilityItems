# ポイズン

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    execute if score @s ui_uses matches 10.. as @e[type=!#ui:notmob,distance=..6] unless score @s ui_team = $temp ui_temp run effect give @s slowness 1 2 false
    execute if score @s ui_uses matches 10.. as @e[type=!#ui:notmob,distance=..6] unless score @s ui_team = $temp ui_temp run effect give @s weakness 1 0 false
    execute if score @s ui_uses matches 10.. as @e[type=!#ui:notmob,distance=..6] unless score @s ui_team = $temp ui_temp run effect give @s blindness 2 0 false
    execute if score @s ui_uses matches 10.. run particle dragon_breath ~ ~ ~ 2.5 2.5 2.5 0 15 force
    execute if score @s ui_uses matches 10 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force
    execute if score @s ui_uses matches 50 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force
    execute if score @s ui_uses matches 90 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force
    execute if score @s ui_uses matches 130 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force
    execute if score @s ui_uses matches 170 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force
    execute if score @s ui_uses matches 170.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/109/end