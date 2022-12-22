# アイアンウィル

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle block iron_block ~ ~0.2 ~ 0.4 0.1 0.4 0 8
execute if entity @s[tag=tmw601_changed] run playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.6 2

#
execute at @s[scores={ui_st=0}] run function ui:tmw/601/feet/3/shoot
execute as @s[scores={ui_st=1..}] at @s run function ui:tmw/601/feet/3/sneak