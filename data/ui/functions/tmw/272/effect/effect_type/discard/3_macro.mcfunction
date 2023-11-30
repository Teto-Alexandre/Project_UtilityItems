# カードを捨てるテスト
$execute if entity @s[type=player] store result score $condition_checker_temp_temp ui_temp run clear @s #ui:all{IsCG1:1,$(macro)} 1
execute if entity @s[type=!player] run function ui:tmw/272/effect/effect_type/discard/entity/
scoreboard players operation $condition_checker_temp ui_temp += $condition_checker_temp_temp ui_temp
scoreboard players reset $condition_checker_temp_temp ui_temp

scoreboard players remove $var_temp ui_temp 1
execute if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3
