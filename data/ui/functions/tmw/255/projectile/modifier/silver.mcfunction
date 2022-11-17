# silver の追加効果
    execute if entity @s[type=#ui:undead] run function ui:tmw/255/projectile/modifier/silver.2
    execute at @e[tag=ui_temp_this] run particle dust 0.5 0.8 1 0.8 ~ ~ ~ 0.3 0.5 0.3 0 5 force
    execute at @e[tag=ui_temp_this] run playsound entity.generic.burn neutral @a ~ ~ ~ 1 2 0