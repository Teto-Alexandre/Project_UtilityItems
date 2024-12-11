#execute positioned ~ ~1 ~ as @e[type=item,distance=..5,nbt={Age:0s}] run data modify storage ui:cg temp.give set from entity @s Item
#execute positioned ~ ~1 ~ as @e[type=item,distance=..5,nbt={Age:0s}] run kill @s
#function ui:tmw/272/match/mob_player/macro with storage ui:cg temp.give
#
#data remove storage ui:cg temp.give

execute positioned ~ ~1 ~ as @e[type=item,tag=!tmw272_dropitem_card,distance=..5,nbt={Age:0s}] run function ui:tmw/272/match/mob_player/2