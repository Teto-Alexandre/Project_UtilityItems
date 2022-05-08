#浮遊感奪っちゃったかな
execute as @e[tag=ui_temp_lev_jump] run function ui:misc/act/lev.jump.done
execute if entity @e[tag=ui_temp_lev_jump] run schedule function ui:misc/act/lev.jump 1t append