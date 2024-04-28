function ui:common/rand

execute if score $rand ui_temp > $rand ui_calc1 run scoreboard players operation $rand ui_temp = $rand ui_calc1

scoreboard players add $luk_temp ui_temp 1
execute if score $luk_temp ui_temp matches ..-1 run function ui:tmw/272/effect/misc/random/unluck