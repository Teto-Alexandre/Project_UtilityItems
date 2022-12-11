#
    scoreboard players add @s ui_is 1
    execute if score @s ui_is matches 1 run playsound entity.warden.sonic_charge player @a ~ ~ ~ 1.5 1 0
    execute if score @s ui_is matches 29 run playsound entity.warden.sonic_boom player @a ~ ~ ~ 2 1 0
    execute if score @s ui_is matches 29 run function ui:tmw/237/projectile/move/108/shottime
    function ui:tmw/237/projectile/move/108/laser
    teleport @s ~ ~ ~
    scoreboard players set @s ui_temp 0