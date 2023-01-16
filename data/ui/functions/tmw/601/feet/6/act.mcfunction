# 消えるブロックかチェック

#
scoreboard players set $success ui_temp 0
execute align xyz positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ #impermeable unless block ~ ~ ~ #ui:nobreak run function ui:tmw/601/feet/6/set
execute if score $success ui_temp matches 0 positioned ~-0.5 ~ ~-0.5 align xyz positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ #impermeable unless block ~ ~ ~ #ui:nobreak run function ui:tmw/601/feet/6/set
execute if score $success ui_temp matches 0 positioned ~0.5 ~ ~-0.5 align xyz positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ #impermeable unless block ~ ~ ~ #ui:nobreak run function ui:tmw/601/feet/6/set
execute if score $success ui_temp matches 0 positioned ~-0.5 ~ ~0.5 align xyz positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ #impermeable unless block ~ ~ ~ #ui:nobreak run function ui:tmw/601/feet/6/set
execute if score $success ui_temp matches 0 positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ #impermeable unless block ~ ~ ~ #ui:nobreak run function ui:tmw/601/feet/6/set
