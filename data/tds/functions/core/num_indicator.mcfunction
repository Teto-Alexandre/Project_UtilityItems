# ダメージを数値表示
    scoreboard players operation $Word1 tds_dmg = $Damage tds_dmg
    scoreboard players operation $Word1 tds_dmg /= $10000 tds_dmg
    scoreboard players operation $Word2 tds_dmg = $Damage tds_dmg
    scoreboard players operation $Word2 tds_dmg /= $1000 tds_dmg
    scoreboard players operation $Word2 tds_dmg %= $10 tds_dmg
    execute in overworld run data modify block 0 1 0 Text1 set value '[{"score":{"name":"$Word1","objective":"tds_dmg"}},{"text":"."},{"score":{"name":"$Word2","objective":"tds_dmg"}}]'
    summon marker ~ ~1.5 ~ {Tags:["ui_temp_marker"]}
    execute as @e[tag=ui_temp_marker] run function ui:template/square_shuffle
    execute at @e[tag=ui_temp_marker] run summon armor_stand ~ ~ ~ {Tags:["ui_temp_indic","ui_dmg_indic"],CustomName:'{"text":""}',CustomNameVisible:1b,Invisible:1b,NoGravity:1b,Marker:1b}
    execute in overworld as @e[tag=ui_temp_indic] run data modify entity @s CustomName set from block 0 1 0 Text1
    tag @e[tag=ui_temp_indic] remove ui_temp_indic
    kill @e[tag=ui_temp_marker]
    schedule function ui:misc/act/dmg_indic 1t append