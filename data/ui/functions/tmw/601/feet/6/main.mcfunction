# 足場が消える靴

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 1 0 0 1 ~ ~0.1 ~ 0.4 0.1 0.4 0 25
execute if entity @s[tag=tmw601_changed] run playsound entity.tnt.primed player @a ~ ~ ~ 0.6 1.5

#
execute if entity @s[nbt={OnGround:1b}] run function ui:tmw/601/feet/6/act
