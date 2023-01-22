#
tag @s remove tmw255_disable_fire

#
execute as @s[tag=tmw_501_19_scan_ilv] run scoreboard players remove @s ui_tmw501_19_stat_ilv 1
execute as @s[tag=tmw_501_19_scan_ilv] run tag @s remove tmw_501_19_scan_ilv

#
function ui:tmw/501/19/functions/energy/regen
