#
execute store result score $ilv ui_temp run scoreboard players get @s ui_tmw501_19_stat_ilv

#
execute store result score $mov ui_temp run scoreboard players get @s ui_tmw501_19_stat_mov
execute store result score $en ui_temp run scoreboard players get @s ui_tmw501_19_now_en
execute store result score $s1 ui_temp run scoreboard players get @s ui_tmw501_19_now_s1
execute store result score $s2 ui_temp run scoreboard players get @s ui_tmw501_19_now_s2

# サブタイ
title @s subtitle ["",{"text":"InformationLevel: ","color":"yellow"},{"score":{"name":"$ilv","objective":"ui_temp"},"color":"yellow"},{"text":"                    MovementSpeed: ","color":"gold"},{"score":{"name":"$mov","objective":"ui_temp"},"color":"gold"}]

# タイトル
title @s title ["",{"score":{"name":"$en","objective":"ui_temp"},"color":"yellow"},{"text":"               ","color":"white"},{"score":{"name":"$s2","objective":"ui_temp"},"color":"aqua"},{"text":":","color":"white"},{"score":{"name":"$s1","objective":"ui_temp"},"color":"green"}]