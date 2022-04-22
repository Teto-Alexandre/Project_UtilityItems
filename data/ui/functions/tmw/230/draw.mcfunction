execute positioned ^ ^ ^4 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["tmw_230_1","tmw_230_1_temp"]}
execute positioned ^ ^ ^4 align xyz if entity @e[tag=tmw_230_1,tag=!tmw_230_1_temp,dx=0,dy=0,dz=0] run fill ~ ~ ~ ~ ~ ~ air replace glass
execute positioned ^ ^ ^4 align xyz if entity @e[tag=tmw_230_1,tag=!tmw_230_1_temp,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=tmw_230_1,sort=nearest,limit=2]
tag @e[tag=tmw_230_1_temp] remove tmw_230_1_temp
playsound ui.cartography_table.take_result player @s ~ ~ ~ 2 1 0