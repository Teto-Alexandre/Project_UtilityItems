# 必要データ収集
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType

# スペシャルウェポン発動
execute if score $color ui_temp matches 1 run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 light_blue_wool replace #ui:wools
execute if score $color ui_temp matches 2 run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 pink_wool replace #ui:wools
playsound entity.wither.death player @a ~ ~ ~ 1 0.8 0
particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
#summon item ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub"],Invulnerable:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{tmw:{type:1,color:1},CustomModelData:217001}},PickupDelay:32767s}
#execute as @e[tag=ui_temp_this,limit=1] run function ui:template/accelerator.1
#execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.type int 1 run scoreboard players get $subtype ui_temp
#execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $color ui_temp
#scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_id = @s ui_id
#scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_team = @s ui_team
##data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
#tag @e[tag=ui_temp_this] remove ui_temp_this
scoreboard players operation $ink ui_temp = $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp = $ink ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp > #5 ui_num
scoreboard players operation $ink.temp ui_temp < #95 ui_num

# 塗りPをリセット
scoreboard players set @s ui_paint 0
scoreboard players set $changed ui_temp 1