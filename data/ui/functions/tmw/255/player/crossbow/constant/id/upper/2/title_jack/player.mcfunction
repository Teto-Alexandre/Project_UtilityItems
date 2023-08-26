scoreboard players set $mod ui_calc1 3
function ui:common/rand
scoreboard players operation $temp ui_temp = $rand ui_calc1


title @s times 0 200 0

execute if score $temp ui_temp matches 0 run title @s title [{"font":"ui:glitch","text":"\u0001"}]
execute if score $temp ui_temp matches 1 run title @s title [{"font":"ui:glitch","text":"\u0002"}]
execute if score $temp ui_temp matches 2 run title @s title [{"font":"ui:glitch","text":"\u0003"}]
