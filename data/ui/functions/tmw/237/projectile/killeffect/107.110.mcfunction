# ナイスダマの爆発

#
summon item ~ ~ ~ {Tags:["ui_temp_this_plus","tmw_237_sub","ui_refd"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{tmw:{type:399},CustomModelData:120001}},PickupDelay:32767s,Motion:[0.0d,0.0d,0.0d]}
#execute store result entity @e[tag=ui_temp_this_plus,limit=1] Item.tag.tmw.type int 1 run scoreboard players get $activator ui_temp
execute store result entity @e[tag=ui_temp_this_plus,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $team ui_temp
scoreboard players operation @e[tag=ui_temp_this_plus,limit=1] ui_id = $id ui_temp
scoreboard players operation @e[tag=ui_temp_this_plus,limit=1] ui_team = $team ui_temp
scoreboard players set @e[tag=ui_temp_this_plus,limit=1] ui_uses -1
scoreboard players set @e[tag=ui_temp_this_plus,limit=1] ui_is -1
execute if score @s ui_hpart matches 107 run scoreboard players set @e[tag=ui_temp_this_plus,limit=1] ui_is2 8
execute if score @s ui_hpart matches 108 run scoreboard players set @e[tag=ui_temp_this_plus,limit=1] ui_is2 13
execute if score @s ui_hpart matches 109 run scoreboard players set @e[tag=ui_temp_this_plus,limit=1] ui_is2 17
execute if score @s ui_hpart matches 110 run scoreboard players set @e[tag=ui_temp_this_plus,limit=1] ui_is2 20
tag @e[tag=ui_temp_this_plus] remove ui_temp_this_plus
