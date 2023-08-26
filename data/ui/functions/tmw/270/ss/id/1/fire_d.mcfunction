# 射撃
execute positioned ~ ~1.8 ~ facing entity @e[tag=ui_temp_target,limit=1] eyes run teleport @s ~ ~-1.8 ~ ~ ~
execute if score $time ui_temp matches 0 positioned ~ ~1.6 ~ positioned ^0.1 ^0.1 ^0.2 run function ui:tmw/270/ss/id/1/shot
execute if score $time ui_temp matches 2 positioned ~ ~1.6 ~ positioned ^-0.1 ^0.1 ^0.2 run function ui:tmw/270/ss/id/1/shot
execute if score $time ui_temp matches 4 positioned ~ ~1.6 ~ positioned ^0.1 ^-0.1 ^0.2 run function ui:tmw/270/ss/id/1/shot
execute if score $time ui_temp matches 6 positioned ~ ~1.6 ~ positioned ^-0.1 ^-0.1 ^0.2 run function ui:tmw/270/ss/id/1/shot
