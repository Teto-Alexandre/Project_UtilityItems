scoreboard players operation $x ui_temp = @s ui_pos_x_core_relative
scoreboard players operation $y ui_temp = @s ui_pos_y_core_relative
scoreboard players operation $z ui_temp = @s ui_pos_z_core_relative

function ui:tmw/268/template/x
function ui:tmw/268/template/y
function ui:tmw/268/template/z

execute at @s as @e[type=block_display,sort=nearest,limit=1] positioned as @s run teleport @e[type=block_display,sort=nearest,limit=1] ~ ~ ~ ~ ~
