# チャージ

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle sweep_attack ~ ~0.1 ~ 0 0 0 0 1
execute if entity @s[tag=tmw601_changed] run playsound entity.player.attack.sweep player @a ~ ~ ~ 0.6 2

#
execute if score @s ui_st matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/601/feet/2/act