playsound block.tripwire.click_on player @s ~ ~ ~ 1 1 0

tag @s[gamemode=adventure] add tmw_263_gamemode_a

tag @s[gamemode=survival] add tmw_263_gamemode_s
tag @s[gamemode=spectator] add tmw_263_gamemode_s

tag @s[gamemode=creative] add tmw_263_gamemode_c

gamemode survival @s[tag=tmw_263_gamemode_a]
tellraw @s[tag=tmw_263_gamemode_a] [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Gamemode Survival","color":"white"}]
gamemode creative @s[tag=tmw_263_gamemode_s]
tellraw @s[tag=tmw_263_gamemode_s] [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Gamemode Creative","color":"white"}]
gamemode adventure @s[tag=tmw_263_gamemode_c]
tellraw @s[tag=tmw_263_gamemode_c] [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Gamemode Adventure","color":"white"}]

tag @s[tag=tmw_263_gamemode_a] remove tmw_263_gamemode_a
tag @s[tag=tmw_263_gamemode_s] remove tmw_263_gamemode_s
tag @s[tag=tmw_263_gamemode_c] remove tmw_263_gamemode_c