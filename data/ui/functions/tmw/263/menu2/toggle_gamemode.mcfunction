#=======================================================================================================



playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

scoreboard players add #tmw_263_game ui_world 1
execute if score #tmw_263_game ui_world matches 2.. run scoreboard players set #tmw_263_game ui_world 0

execute if score #tmw_263_game ui_world matches 0 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Gamemode Switch","color":"white"},{"text":" OFF","color":"red"}]
execute if score #tmw_263_game ui_world matches 1 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Gamemode Switch","color":"white"},{"text":" ON","color":"green"}]



#=======================================================================================================