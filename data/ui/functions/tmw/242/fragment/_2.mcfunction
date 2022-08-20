# 爆発
execute as @s[tag=ex] at @s run summon creeper ~ ~ ~ {ignited:1b,Fuse:0s}
execute as @s[tag=ex] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force
kill @s[tag=ex]