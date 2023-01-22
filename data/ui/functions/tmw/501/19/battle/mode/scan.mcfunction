#
tag @s add tmw255_disable_fire

#
execute as @s[tag=!tmw_501_19_scan_ilv] run scoreboard players add @s ui_tmw501_19_stat_ilv 1
execute as @s[tag=!tmw_501_19_scan_ilv] run tag @s add tmw_501_19_scan_ilv

#
effect give @s weakness 10 127 true

#
function ui:tmw/501/19/functions/energy/regen
function ui:tmw/501/19/functions/energy/regen
