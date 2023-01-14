scoreboard players set $mod ui_calc1 10
function ui:common/rand

execute if score $rand ui_calc1 matches 0..6 run summon marker ~ ~ ~ {Tags:["ui","ui_marker","tmw_501_5_2"]}
execute if score $rand ui_calc1 matches 0..6 run spreadplayers ~ ~ 1 15 false @e[tag=tmw_501_5_2]
execute if score $rand ui_calc1 matches 0..6 at @e[tag=tmw_501_5_2] run summon lightning_bolt ~ ~ ~
execute if score $rand ui_calc1 matches 0..6 run kill @e[tag=tmw_501_5_2]
