# ホバー

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle flame ~ ~0.1 ~ 0.4 0.1 0.4 0 8
execute if entity @s[tag=tmw601_changed] run playsound item.flintandsteel.use player @a ~ ~ ~ 0.6 1.5

#
execute if score @s ui_st matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/601/feet/1/act