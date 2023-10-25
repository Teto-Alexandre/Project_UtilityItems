#compoundでminとmaxを入れると出力する
execute store result score $rand_min ui_temp run data get storage ui:temp temp.effect.rand.min 1
execute store result score $rand_max ui_temp run data get storage ui:temp temp.effect.rand.max 1

execute if data storage ui:temp temp.effect.min_input run function ui:tmw/272/effect/misc/input/rand_min
execute if data storage ui:temp temp.effect.max_input run function ui:tmw/272/effect/misc/input/rand_max

scoreboard players operation $rand_max ui_temp -= $rand_min ui_temp
scoreboard players add $rand_max ui_temp 1
scoreboard players operation $mod ui_calc1 = $rand_max ui_temp
function ui:common/rand
scoreboard players operation $rand ui_temp = $rand ui_calc1
scoreboard players operation $rand ui_temp += $rand_min ui_temp

##execute if data storage ui:temp temp.effect.rand.to_var run scoreboard players operation $var ui_temp = $rand ui_temp
scoreboard players operation $var ui_temp = $rand ui_temp

execute if score @s ui_tmw272_unluck matches 1.. if score @s ui_tmw272_luck matches 0 store result score $var ui_temp run data get storage ui:temp temp.effect.rand.min 1
execute if score @s ui_tmw272_luck matches 1.. if score @s ui_tmw272_unluck matches 0 store result score $var ui_temp run data get storage ui:temp temp.effect.rand.max 1