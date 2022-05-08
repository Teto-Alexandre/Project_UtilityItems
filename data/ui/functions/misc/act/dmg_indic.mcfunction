# ダメージインジケーターの動き
    execute as @e[tag=ui_dmg_indic] at @s run function ui:misc/act/dmg_indic.2
    execute if entity @e[tag=ui_dmg_indic] run schedule function ui:misc/act/dmg_indic 1t append