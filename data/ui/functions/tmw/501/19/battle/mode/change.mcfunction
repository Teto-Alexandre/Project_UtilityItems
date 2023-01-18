#
tag @s add tmw255_disable_fire

#
effect give @s darkness 10 127 true
effect give @s slowness 10 127 true
effect give @s weakness 10 127 true

#
#tp @s @s

#
function ui:tmw/501/19/functions/energy/regen

#
execute if score @s ui_tmw501_19_mct matches 40 run tellraw @s {"text":"2.0s"}
execute if score @s ui_tmw501_19_mct matches 30 run tellraw @s {"text":"1.5s"}
execute if score @s ui_tmw501_19_mct matches 20 run tellraw @s {"text":"1.0s"}
execute if score @s ui_tmw501_19_mct matches 10 run tellraw @s {"text":"0.5s"}
execute if score @s ui_tmw501_19_mct matches 1 if score @s ui_tmw501_19_now_mode matches 1 run tellraw @s {"text":"モード: コンバット"}
execute if score @s ui_tmw501_19_mct matches 1 if score @s ui_tmw501_19_now_mode matches 2 run tellraw @s {"text":"モード: スキャン"}

#
execute if score @s ui_tmw501_19_mct matches 1 run effect clear @s darkness
execute if score @s ui_tmw501_19_mct matches 1 if score @s ui_tmw501_19_now_mode matches 1 run effect clear @s weakness
execute if score @s ui_tmw501_19_mct matches 1 run effect clear @s slowness

#
scoreboard players remove @s ui_tmw501_19_mct 1
