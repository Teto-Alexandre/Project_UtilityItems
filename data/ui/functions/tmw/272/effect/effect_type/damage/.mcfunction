# ダメージを与える
execute unless score @s ui_tmw272_strength matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"【攻撃力】","color":"red"},{"text":"は"},{"score":{"name": "@s","objective": "ui_tmw272_strength"}}]
scoreboard players operation $var ui_temp += @s ui_tmw272_strength
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/damage/each
