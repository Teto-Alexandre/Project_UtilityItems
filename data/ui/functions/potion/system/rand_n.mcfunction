scoreboard players set $mod ui_calc1 20001
function ui:rand
scoreboard players remove $rand ui_calc1 10000

scoreboard players operation $rand ui_calc1 *= $temp ui_calc1