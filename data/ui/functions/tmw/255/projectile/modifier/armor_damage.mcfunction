# armor_damage の追加効果

# 耐久度ダメージ
    execute if score $def_state ui_temp matches 0 run data merge storage ui:common {input:{Damage:1}}
    execute if score $def_state ui_temp matches 0 run scoreboard players operation $modifier ui_temp = $level ui_temp
    execute if score $def_state ui_temp matches 0 run scoreboard players operation $modifier ui_temp > #1 ui_num
    execute if score $def_state ui_temp matches 0 run execute store result storage ui:common input.Damage int 1 run scoreboard players get $modifier ui_temp
    execute if score $def_state ui_temp matches 0 run execute at @s run function ui:common/armor_damage/
    execute if score $def_state ui_temp matches 1 run data merge storage ui:common {input:{Damage:1}}
    execute if score $def_state ui_temp matches 1 run scoreboard players operation $modifier ui_temp = $level ui_temp
    execute if score $def_state ui_temp matches 1 run scoreboard players operation $modifier ui_temp *= #4 ui_num
    execute if score $def_state ui_temp matches 1 run scoreboard players operation $modifier ui_temp > #1 ui_num
    execute if score $def_state ui_temp matches 1 run execute store result storage ui:common input.Damage int 1 run scoreboard players get $modifier ui_temp
    execute if score $def_state ui_temp matches 1 run execute at @s run function ui:common/shield_guard
    execute if score $level ui_temp matches 5.. at @e[tag=ui_temp_this] run particle dust 1 1 0 0.8 ~ ~ ~ 0.3 0.3 0.3 0 5 force
    execute if score $level ui_temp matches 5.. at @e[tag=ui_temp_this] run particle block sand ~ ~0.5 ~ 0.3 0.3 0.3 0 3 force
    execute at @e[tag=ui_temp_this] run playsound block.sand.break neutral @a ~ ~ ~ 0.8 1.2 0