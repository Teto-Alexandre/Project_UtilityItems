# スナイプ
    execute at @e[tag=tmw_235.snipe] as @e[type=player,distance=..0.1,scores={ui_tmw_id=235}] store result score @s ui_snipe run data get storage ui:gun temp.snipe
    execute as @e[tag=tmw_235.snipe] at @s unless entity @e[type=player,distance=..0.1,scores={ui_tmw_id=235}] run kill @s

# SSロジック維持
    execute if entity @e[tag=tmw_235.snipe] run schedule function ui:tmw/235/ss2 1t append