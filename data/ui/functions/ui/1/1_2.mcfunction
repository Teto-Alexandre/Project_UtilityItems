#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s[scores={ui_tc=1}] unless block ~ ~ ~ white_stained_glass unless block ~ ~ ~ #ui:nobreak run setblock ~ ~ ~ white_stained_glass destroy

execute at @s align xyz run particle dust 1 1 1 0.6 ~0 ~0 ~0 0 0 0 0 1 force
execute at @s align xyz run particle dust 1 1 1 0.6 ~0 ~0 ~1 0 0 0 0 1 force
execute at @s align xyz run particle dust 1 1 1 0.6 ~0 ~1 ~0 0 0 0 0 1 force
execute at @s align xyz run particle dust 1 1 1 0.6 ~0 ~1 ~1 0 0 0 0 1 force
execute at @s align xyz run particle dust 1 1 1 0.6 ~1 ~0 ~0 0 0 0 0 1 force
execute at @s align xyz run particle dust 1 1 1 0.6 ~1 ~0 ~1 0 0 0 0 1 force
execute at @s align xyz run particle dust 1 1 1 0.6 ~1 ~1 ~0 0 0 0 0 1 force
execute at @s align xyz run particle dust 1 1 1 0.6 ~1 ~1 ~1 0 0 0 0 1 force

execute at @s[scores={ui_tc=200}] if block ~ ~ ~ white_stained_glass run setblock ~ ~ ~ air destroy
kill @s[scores={ui_tc=200..}]
execute at @s if block ~ ~ ~ air run kill @s

#=======================================================================================================