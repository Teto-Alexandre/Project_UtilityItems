playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

tag @s[tag=tmw_263_give_2] add tmw_263_keephold_0
tag @s[tag=!tmw_263_give_1,tag=!tmw_263_give_2] add tmw_263_keephold_1
tag @s[tag=tmw_263_give_1] add tmw_263_keephold_2

tag @s[tag=tmw_263_keephold_0] remove tmw_263_give_2
tag @s[tag=tmw_263_keephold_1] remove tmw_263_load
tellraw @s[tag=tmw_263_keephold_0] [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Hold Mode","color":"white"},{"text":" OFF","color":"red"}]
tag @s[tag=tmw_263_keephold_1] add tmw_263_give_1
tag @s[tag=tmw_263_keephold_1] add tmw_263_load
tellraw @s[tag=tmw_263_keephold_1] [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Hold Mode","color":"white"},{"text":" NORMAL","color":"green"}]
tag @s[tag=tmw_263_keephold_2] remove tmw_263_give_1
tag @s[tag=tmw_263_keephold_2] add tmw_263_give_2
tellraw @s[tag=tmw_263_keephold_2] [{"text":"[redlaser]","color":"gold"},{"text":": ","color":"white"},{"text":"Hold Mode","color":"white"},{"text":" FORCE","color":"gold"}]

tag @s[tag=tmw_263_keephold_0] remove tmw_263_keephold_0
tag @s[tag=tmw_263_keephold_1] remove tmw_263_keephold_1
tag @s[tag=tmw_263_keephold_2] remove tmw_263_keephold_2
