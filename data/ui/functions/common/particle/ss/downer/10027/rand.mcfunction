scoreboard players set $mod ui_calc1 20
function ui:common/rand
scoreboard players operation @s ui_is2 += $rand ui_calc1
