execute if entity @s[tag=tmw_using_item] run scoreboard players add @s test 1

execute if entity @s[tag=tmw_using_item] at @s anchored eyes run playsound block.iron_trapdoor.close player @a ^ ^ ^1 1 1 0
#execute if entity @s[tag=tmw_using_item] at @s anchored eyes run particle crit ^ ^ ^1 0 0 0 1 5 force

scoreboard players set #charged test 0
execute if entity @s[tag=!tmw_using_item,scores={test=1..}] run execute as @e[type=arrow,sort=nearest,limit=1] if entity @s[nbt={crit:1b}] run scoreboard players set #charged test 1
execute if entity @s[tag=!tmw_using_item,scores={test=1..}] run kill @e[type=arrow,sort=nearest,limit=1]
execute if entity @s[tag=!tmw_using_item,scores={test=1..}] at @s anchored eyes run playsound entity.generic.explode player @a ^ ^ ^1 1 1 0
execute if entity @s[tag=!tmw_using_item,scores={test=1..}] if score #charged test matches 0 run scoreboard players set #loop test 30
execute if entity @s[tag=!tmw_using_item,scores={test=1..}] if score #charged test matches 1 run scoreboard players set #loop test 60
execute if entity @s[tag=!tmw_using_item,scores={test=1..}] if score #charged test matches 0 at @s anchored eyes run function ui:tmw/18/each/ensyutu_bow/loop
execute if entity @s[tag=!tmw_using_item,scores={test=1..}] if score #charged test matches 1 at @s anchored eyes run function ui:tmw/18/each/ensyutu_bow/loop_charge

execute if entity @s[tag=!tmw_using_item] run scoreboard players set @s test 0
