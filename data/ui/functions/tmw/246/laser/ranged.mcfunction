summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui","ui_use_1"]}
scoreboard players operation @e[tag=ui_use_1,tag=!ui_use_1R,sort=nearest,limit=1] ui_id = @s ui_id
execute as @e[tag=ui_use_1,tag=!ui_use_1R,sort=nearest,limit=1] rotated as @p run teleport @s ~ ~1.2 ~ ~ ~

playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.5 2 0

tag @e[tag=ui_use_1,tag=!ui_use_1R,sort=nearest,limit=1] add ui_use_1R