# 盾で防御した

# 耐久度ダメージ
    data merge storage ui:common {input:{Damage:1}}
    scoreboard players operation $shield_damage ui_temp /= #10 ui_num
    scoreboard players operation $shield_damage ui_temp > #1 ui_num
    execute store result storage ui:common input.Damage int 1 run scoreboard players get $shield_damage ui_temp
    execute at @s run function ui:common/shield_guard