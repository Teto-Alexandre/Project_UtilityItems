#浮遊感奪っちゃったかな
execute as @e[tag=ui_temp_lev] run function ui:misc/act/lev.done
execute if entity @e[tag=ui_temp_lev] run schedule function ui:misc/act/lev 1t append