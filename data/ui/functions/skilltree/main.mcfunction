# 上を向いて歩こう
    scoreboard players enable @a ui_skillget
    execute as @a if entity @s[scores={ui_face_up=1}] run function ui:skilltree/gui

# スキル取得
    execute as @a unless score @s ui_skillget matches 0 at @s run function ui:skilltree/skillget