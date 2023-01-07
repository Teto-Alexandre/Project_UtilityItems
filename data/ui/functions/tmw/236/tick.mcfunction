# アイテム転置
    summon item ~ ~ ~ {Tags:["ui_temp_this","tmw_236"],Invulnerable:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{tmw:{type:5},CustomModelData:217001}},PickupDelay:32767s}
    data modify entity @e[tag=ui_temp_this,limit=1] Motion set from entity @e[type=snowball,sort=nearest,limit=1] Motion
    data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.type set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.tmw.type
    data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
    #スコア付与
    scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_team = @s ui_team
    tag @e[tag=ui_temp_this] remove ui_temp_this
    kill @e[type=snowball,sort=nearest,limit=1]
    scoreboard players reset @s ui_uses

# 予告線表示
    scoreboard players set $visible ui_temp 2
    execute store result score $temp2 ui_temp run data get entity @s SelectedItem.tag.tmw.type
    execute at @s anchored eyes positioned ^ ^ ^ unless score $temp2 ui_temp matches 4 unless score $temp2 ui_temp matches 7 run function ui:tmw/236/linemanager