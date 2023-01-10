#=======================================================================================================



playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

scoreboard players add #tmw_263_kill ui_world 1
execute if score #tmw_263_kill ui_world matches 3.. run scoreboard players set #tmw_263_kill ui_world 0

execute if score #tmw_263_kill ui_world matches 0 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Kill Mode","color":"white"},{"text":" NONE","color":"red"}]
execute if score #tmw_263_kill ui_world matches 1 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Kill Mode","color":"white"},{"text":" DROPITEM","color":"green"}]
execute if score #tmw_263_kill ui_world matches 2 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Kill Mode","color":"white"},{"text":" ERASER","color":"gold"}]



#=======================================================================================================