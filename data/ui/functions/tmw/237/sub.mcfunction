# 必要データ収集
execute store result score $subtype ui_temp run data get storage ui:gun temp.SubType

# サブウェポン発動
summon item ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub"],Invulnerable:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{tmw:{type:1,color:1},CustomModelData:217001}},PickupDelay:32767s}
execute as @e[tag=ui_temp_this,limit=1] run function ui:template/accelerator.1
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.type int 1 run scoreboard players get $subtype ui_temp
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $color ui_temp
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_team = @s ui_team
playsound entity.snowball.throw player @a ~ ~ ~ 1 0.8 0
#data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
tag @e[tag=ui_temp_this] remove ui_temp_this

# インク減少
scoreboard players operation $ink ui_temp -= $ink.sub ui_temp
scoreboard players set $changed ui_temp 1