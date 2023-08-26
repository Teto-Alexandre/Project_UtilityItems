# 常在ss
    execute as @e[type=!item,scores={ui_tmw255_state_glitch=1..}] if predicate ui:percentage/10 at @s run function ui:tmw/255/player/crossbow/constant/id/upper/2/ss/each
    execute as @e[type=!item,scores={ui_tmw255_state_glitch=1001..}] at @s run function ui:tmw/255/player/crossbow/constant/id/upper/2/ss/act
    execute as @e[type=item] at @s run function ui:tmw/255/player/crossbow/constant/id/upper/2/ss/item

# SSロジック維持
    execute if entity @e[scores={ui_tmw255_state_glitch=1..}] run schedule function ui:tmw/255/player/crossbow/constant/id/upper/2/ss/ 1t replace