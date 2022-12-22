# スライム

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle block slime_block ~ ~0.2 ~ 0.4 0.1 0.4 0 8
execute if entity @s[tag=tmw601_changed] run playsound entity.slime.death player @a ~ ~ ~ 0.6 1.5

#
execute store result score $fall ui_temp run data get entity @s FallDistance
execute if score $fall ui_temp matches 6.. run scoreboard players set $count ui_temp 7
execute if score $fall ui_temp matches 6.. positioned ~ ~-2 ~ run function ui:tmw/601/feet/4/act