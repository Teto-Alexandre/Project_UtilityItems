# 魔法の弾丸

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 0 0 1 1.5 ~ ~0.9 ~ 0.4 0.4 0.4 0 20
execute if entity @s[tag=tmw601_changed] run particle firework ~ ~0.9 ~ 0 0 0 0.1 20
execute if entity @s[tag=tmw601_changed] run playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1
execute if entity @s[tag=tmw601_changed] run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 1

#
#execute if score @s ui_st matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/601/head/1/act