#=======================================================================================================



playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

execute as @e[type=item,distance=..5] run data merge entity @s {Item:{tag:{Unbreakable:1b}}}



#=======================================================================================================