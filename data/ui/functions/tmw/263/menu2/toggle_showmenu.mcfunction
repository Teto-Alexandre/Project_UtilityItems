#=======================================================================================================



playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

scoreboard players add #tmw_263_menu ui_world 1
execute if score #tmw_263_menu ui_world matches 2.. run scoreboard players set #tmw_263_menu ui_world 0

execute if score #tmw_263_menu ui_world matches 0 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Menu Mode","color":"white"},{"text":" NEVER","color":"red"}]
execute if score #tmw_263_menu ui_world matches 1 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Menu Mode","color":"white"},{"text":" SHOW","color":"green"}]

execute if score #tmw_263_menu ui_world matches 0 run tellraw @a [{"text":"[redlaser]","color":"gold"},{"text":": /function ui:tmw/263/toggle_showmenu で再表示できます","color":"white"}]



#=======================================================================================================