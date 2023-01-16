execute unless entity @e[tag=tmw601_feet_6,distance=..0.5] run schedule function ui:tmw/601/feet/6/ss 1t append
execute unless entity @e[tag=tmw601_feet_6,distance=..0.5] run summon armor_stand ~ ~ ~ {Tags:["tmw601_feet_6"],Marker:1b,Invisible:1b,NoGravity:1b}

scoreboard players set $success ui_temp 1