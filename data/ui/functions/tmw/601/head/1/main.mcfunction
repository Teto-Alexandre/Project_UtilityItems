# ディメンション

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle witch ~ ~1.5 ~ 0 0 0 0.1 10
execute if entity @s[tag=tmw601_changed] run playsound entity.enderman.teleport player @a ~ ~ ~ 0.5 2

#
execute if score @s ui_st matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/601/head/1/act