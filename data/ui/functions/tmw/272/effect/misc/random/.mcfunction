#compoundでminとmaxを入れると出力する
execute store result score $rand_min_luk ui_temp run data get storage ui:temp temp.effect.rand.min 1
execute store result score $rand_max_luk ui_temp run data get storage ui:temp temp.effect.rand.max 1

execute if data storage ui:temp temp.effect.rand.min_input run function ui:tmw/272/effect/misc/input/rand_min
execute if data storage ui:temp temp.effect.rand.max_input run function ui:tmw/272/effect/misc/input/rand_max

scoreboard players operation $rand_min ui_temp = $rand_min_luk ui_temp
scoreboard players operation $rand_max ui_temp = $rand_max_luk ui_temp

#execute unless data storage ui:temp temp.effect.rand.no_unluck if score @s ui_tmw272_unluck matches 1.. if score @s ui_tmw272_luck matches 0 store result score $var ui_temp run scoreboard players get $rand_min_luk ui_temp
#execute unless data storage ui:temp temp.effect.rand.no_luck if score @s ui_tmw272_luck matches 1.. if score @s ui_tmw272_unluck matches 0 store result score $var ui_temp run scoreboard players get $rand_max_luk ui_temp
scoreboard players set $luk_temp ui_temp 0
scoreboard players set $unluk_temp ui_temp 0
execute unless data storage ui:temp temp.effect.rand.no_luck store result score $luk_temp ui_temp run scoreboard players get @s ui_tmw272_luck
execute unless data storage ui:temp temp.effect.rand.no_unluck store result score $unluk_temp ui_temp run scoreboard players get @s ui_tmw272_unluck
scoreboard players operation $luk_temp ui_temp -= $unluk_temp ui_temp

scoreboard players operation $rand_max ui_temp -= $rand_min ui_temp
scoreboard players add $rand_max ui_temp 1
scoreboard players operation $mod ui_calc1 = $rand_max ui_temp
execute if score $mod ui_calc1 matches 0 run scoreboard players set $mod ui_calc1 1

function ui:tmw/272/effect/misc/random/rand
scoreboard players operation $luk_temp ui_temp < #10 ui_num
scoreboard players operation $luk_temp ui_temp *= #-1 uinum
scoreboard players operation $luk_temp ui_temp < #10 ui_num
scoreboard players operation $luk_temp ui_temp *= #-1 uinum
execute if score $luk_temp ui_temp matches 1.. run function ui:tmw/272/effect/misc/random/luck
execute if score $luk_temp ui_temp matches ..-1 run function ui:tmw/272/effect/misc/random/unluck

scoreboard players operation $rand ui_temp += $rand_min ui_temp

##execute if data storage ui:temp temp.effect.rand.to_var run scoreboard players operation $var ui_temp = $rand ui_temp
scoreboard players operation $var ui_temp = $rand ui_temp

scoreboard players reset $luk_temp ui_temp
scoreboard players reset $unluk_temp ui_temp