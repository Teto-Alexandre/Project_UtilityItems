# 数値を入れる
execute if data storage ui:tmw272 temp{input:"self"} run scoreboard players operation $particle_self ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"look"} run scoreboard players operation $particle_look ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"target"} run scoreboard players operation $particle_target ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"other"} run scoreboard players operation $particle_other ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"laser"} run scoreboard players operation $particle_laser ui_temp = $var ui_temp

data remove storage ui:tmw272 temp