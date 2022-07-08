summon item ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub","ui_refd"],Invulnerable:1b,Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120001}},PickupDelay:32767s}
execute as @e[tag=ui_temp_this,limit=1] rotated as @p run teleport @s ~ ~ ~ ~ ~
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.type int 1 run scoreboard players get $subtype ui_temp
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $team ui_temp
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_team = @s ui_team
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_uses -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is2 -1
playsound entity.snowball.throw player @a ~ ~ ~ 1 0.6 0
#data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
tag @e[tag=ui_temp_this] remove ui_temp_this