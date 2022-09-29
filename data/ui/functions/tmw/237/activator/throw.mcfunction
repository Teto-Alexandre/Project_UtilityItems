summon item ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub"],Invulnerable:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{tmw:{type:1,color:1},CustomModelData:217111}},PickupDelay:32767s}
execute as @e[tag=ui_temp_this,limit=1] rotated as @p run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=ui_temp_this,limit=1] run function ui:template/accelerator.1
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.type int 1 run scoreboard players get $activator ui_temp
execute if score $activator ui_temp matches 101 run function ui:tmw/237/sub/model/101
execute if score $activator ui_temp matches 103 run function ui:tmw/237/sub/model/103
execute if score $activator ui_temp matches 108 run data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set value 217121
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $team ui_temp
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_team = @s ui_team
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_uses -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is2 -1
execute if score $sptype ui_temp matches 253 if score $sptime ui_temp matches 1.. run tag @e[tag=ui_temp_this,limit=1] add tmw237_sub_nopoint
playsound entity.snowball.throw player @a ~ ~ ~ 1 0.8 0
#data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
tag @e[tag=ui_temp_this] remove ui_temp_this