gamerule showDeathMessages false
scoreboard players set $Lethal tds_dmg 1
function tds:deathtime
kill @s
gamerule showDeathMessages true