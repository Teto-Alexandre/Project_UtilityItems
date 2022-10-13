# 自爆

#
scoreboard players set $mod ui_calc1 1000
function ui:common/rand
execute if score $rand ui_calc1 matches 0..9 run effect give @s resistance 1 3 false