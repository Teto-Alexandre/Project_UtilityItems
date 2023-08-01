#
execute if entity @a[tag=ui_temp_player,scores={ui_tmw601_accessory=5001}] run tag @s add ui_temp_boost
execute if entity @s[tag=ui_temp_boost] run scoreboard players remove $is ui_temp 30
execute if score $is ui_temp matches -29..-15 run playsound minecraft:entity.elder_guardian.death player @a ~ ~ ~ 1 1 0
execute if score $is ui_temp matches -29..-15 run particle dust 1 0.8 0 1 ~ ~ ~ 1 1 1 0 5 force
execute if entity @s[tag=ui_temp_boost] if score $is ui_temp matches -14..0 run particle dust 1 0.8 0 1 ~ ~ ~ 0.5 0.5 0.5 0 5 force
execute if entity @s[tag=ui_temp_boost] if score $is ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 2 0
execute if entity @s[tag=ui_temp_boost] if score $is ui_temp matches 3 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 2 0
execute if entity @s[tag=ui_temp_boost] if score $is ui_temp matches 5 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 2 0
execute if entity @s[tag=ui_temp_boost] if score $is ui_temp matches 11 run playsound ui:high_cannon player @a ~ ~ ~ 2 2 0

#
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10028/first
execute if score $is ui_temp matches 1 run data merge storage ui:common {input:{Mode:"create",Var:25,Var2:6}}
execute if score $is ui_temp matches 1 run execute at @s run function ui:common/particle
execute if score $is ui_temp matches 11 run function ui:common/particle/ss/downer/10028/flash

#
execute if score $is ui_temp matches 11.. run kill @s
