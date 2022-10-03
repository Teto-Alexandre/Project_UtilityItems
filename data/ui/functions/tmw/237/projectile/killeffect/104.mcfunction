# ミサイルの発射を媒介する

#
summon item ~ ~ ~ {Tags:["ui_temp_this2","tmw_237_sub","tmw237_sub_nopoint"],Invulnerable:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{tmw:{type:1,color:1},CustomModelData:217111}},PickupDelay:32767s}
execute as @e[tag=ui_temp_this2,limit=1] rotated as @p run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=ui_temp_this2,limit=1] run function ui:template/accelerator/1
data modify entity @e[tag=ui_temp_this2,limit=1] Item.tag.tmw.type set value 153
execute store result entity @e[tag=ui_temp_this2,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $team ui_temp
scoreboard players operation @e[tag=ui_temp_this2,limit=1] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp_this2,limit=1] ui_team = @s ui_team
scoreboard players set @e[tag=ui_temp_this2,limit=1] ui_uses -1
scoreboard players set @e[tag=ui_temp_this2,limit=1] ui_is -1
scoreboard players set @e[tag=ui_temp_this2,limit=1] ui_is2 -1
playsound entity.snowball.throw player @a ~ ~ ~ 1 0.8 0
#data modify entity @e[tag=ui_temp_this2,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
tag @e[tag=ui_temp_this2] remove ui_temp_this2
