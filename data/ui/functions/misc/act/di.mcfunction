# 媒体キル
execute at @s[tag=tmw_drop_n,scores={ui_tmw_id=1..}] run kill @e[type=item,limit=1,sort=nearest,nbt={Age:0s,Item:{tag:{tmw:{is:1}}}}]
execute at @s[tag=tmw_drop_s,scores={ui_tmw_id=1..}] run kill @e[type=item,limit=1,sort=nearest,nbt={Age:0s,Item:{tag:{tmw:{is:1}}}}]

tag @s[tag=tmw_drop_n] remove tmw_drop_n
tag @s[tag=tmw_drop_s] remove tmw_drop_s

scoreboard players reset @s ui_di