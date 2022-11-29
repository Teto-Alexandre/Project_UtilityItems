execute as @s at @s anchored eyes run summon potion ^ ^ ^ {Item:{id:"splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:6,Amplifier:29b},{Id:7,Amplifier:29b}]}},Tags:["ui_temp_potion"]}
execute as @e[tag=ui_temp_potion] at @s rotated as @p run function ui:template/accelerator/1.5
tag @e[tag=ui_temp_potion] remove ui_temp_potion

execute at @s run particle firework ~ ~1 ~ 0.3 0.3 0.3 0.05 10 force
execute at @s run playsound block.enchantment_table.use player @a ~ ~ ~ 1 1.5
execute at @s run playsound entity.egg.throw player @a ~ ~ ~ 1 1