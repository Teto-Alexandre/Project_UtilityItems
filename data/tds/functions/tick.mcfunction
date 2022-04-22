#毎tick実行する分

# A
execute as @e[tag=tds_NoKB_temp] run attribute @s generic.knockback_resistance modifier remove 0-0-0-0-1
tag @e[tag=tds_NoKB_temp] remove tds_NoKB_temp

# B
scoreboard players add $world tds_tick 1
execute if score $world tds_tick matches 21.. run function tds:1sec