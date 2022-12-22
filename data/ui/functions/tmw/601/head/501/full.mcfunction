# 採掘 501

# 装着時演出
execute if entity @s[tag=tmw601_changed_all] run particle block stone ~ ~1 ~ 0.4 0.5 0.4 0 20
execute if entity @s[tag=tmw601_changed_all] run playsound block.glass.break player @a ~ ~ ~ 1 1
execute if entity @s[tag=tmw601_changed_all] run attribute @s generic.armor modifier add 1-601-501-0-1 "tmw601_501" 5 add

# フルセットボーナス
particle block stone ~ ~1 ~ 0.3 0.5 0.3 0 1
effect give @s haste 1 1 true

#
scoreboard players set $full ui_temp 1
