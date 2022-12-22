# 自爆

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle electric_spark ~ ~1.1 ~ 0.5 0 0.5 0.8 8
execute if entity @s[tag=tmw601_changed] run particle dust 1 1 0.5 0.5 ~ ~1.1 ~ 0.5 0.2 0.5 0 15
execute if entity @s[tag=tmw601_changed] run playsound item.trident.thunder player @a ~ ~ ~ 0.5 1.4

#
scoreboard players operation $temp ui_temp = @s ui_st2
scoreboard players operation $temp ui_temp %= #20 ui_num
execute unless score @s ui_st2 matches 0 if score $temp ui_temp matches 0 run function ui:template/explosion.4