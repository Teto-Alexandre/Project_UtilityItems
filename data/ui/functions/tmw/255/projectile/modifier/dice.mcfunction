# dice の追加効果
    execute if data storage ui:temp temp.Modifier{sub:"luk"} run scoreboard players operation @s ui_d_luck += $level ui_temp
    execute if data storage ui:temp temp.Modifier{sub:"luk"} if score @s ui_d_luck matches 1.. run tellraw @p[distance=..2] [{"text":"※ダイス干渉※","color":"light_purple"},{"text":" あなたの次のダイスは","color":"gray"},{"text":"幸運","color":"aqua"},{"text":"になる","color":"gray"}]
    execute if data storage ui:temp temp.Modifier{sub:"luk"} if score @s ui_d_luck matches ..-1 run tellraw @p[distance=..2] [{"text":"※ダイス干渉※","color":"light_purple"},{"text":" あなたの次のダイスは","color":"gray"},{"text":"不運","color":"red"},{"text":"になる","color":"gray"}]

    execute if data storage ui:temp temp.Modifier{sub:"num"} run scoreboard players operation @s ui_d_addnum += $level ui_temp
    execute if data storage ui:temp temp.Modifier{sub:"num"} if score @s ui_d_addnum matches 1.. run tellraw @p[distance=..2] [{"text":"※ダイス干渉※","color":"light_purple"},{"text":" あなたの次のダイスは","color":"gray"},{"score":{"name": "@s","objective": "ui_d_addnum"},"color":"aqua"},{"text":"される","color":"gray"}]
    execute if data storage ui:temp temp.Modifier{sub:"num"} if score @s ui_d_addnum matches 0 run tellraw @p[distance=..2] [{"text":"※ダイス干渉※","color":"light_purple"},{"text":" あなたの次のダイスは","color":"gray"},{"text":"±0","color":"white"},{"text":"される","color":"gray"}]
    execute if data storage ui:temp temp.Modifier{sub:"num"} if score @s ui_d_addnum matches ..-1 run tellraw @p[distance=..2] [{"text":"※ダイス干渉※","color":"light_purple"},{"text":" あなたの次のダイスは","color":"gray"},{"score":{"name": "@s","objective": "ui_d_addnum"},"color":"red"},{"text":"される","color":"gray"}]

    execute if data storage ui:temp temp.Modifier{sub:"luk"} at @e[tag=ui_temp_this] run particle dust 1 0 1 4 ~ ~ ~ 0.5 0.5 0.5 0 15 force
    execute if data storage ui:temp temp.Modifier{sub:"num"} at @e[tag=ui_temp_this] run particle dust 0 0.7 0 4 ~ ~ ~ 0.5 0.5 0.5 0 15 force
    execute at @e[tag=ui_temp_this] run playsound entity.shulker.ambient neutral @a ~ ~ ~ 1 0.7 0
    execute at @e[tag=ui_temp_this] run playsound entity.shulker.ambient neutral @a ~ ~ ~ 1 0.5 0
    execute at @e[tag=ui_temp_this] run playsound item.honey_bottle.drink neutral @a ~ ~ ~ 1 0.8 0