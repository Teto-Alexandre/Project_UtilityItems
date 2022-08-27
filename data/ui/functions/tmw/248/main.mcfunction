# これです
    tag @s add ui_temp_this
    scoreboard players set $id ui_temp 0
    scoreboard players set $team ui_temp 0

# ターゲット出来るエンティティを周囲に表示
    execute at @s as @e[distance=1..150] if score @s ui_id matches 1.. run function ui:tmw/248/target_marker
    execute at @s positioned ^ ^ ^2 run tag @e[tag=ui_temp_marker,distance=..1] add ui_temp_target
    execute at @s positioned ^ ^ ^2 run tag @e[tag=ui_temp_marker,distance=..1,sort=nearest,limit=1] add ui_temp_target2
    execute at @e[tag=ui_temp_target2] run particle dust 0 1 1 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
    execute at @e[tag=ui_temp_target,tag=!ui_temp_target2] run particle dust 0 1 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
    execute at @e[tag=ui_temp_marker,tag=!ui_temp_target] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
    kill @e[tag=ui_temp_marker,tag=!ui_temp_target]
    tag @e[tag=ui_temp_target] remove ui_temp_marker
    kill @e[tag=ui_temp_target,tag=!ui_temp_target2]
    tag @e[tag=ui_temp_target2] remove ui_temp_target

# ID表示
    execute store result score $obj_id ui_temp run scoreboard players get @e[tag=ui_temp_target2,limit=1] ui_obj_id
    execute as @e[tag=!ui_temp_target2] if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_target3
    scoreboard players operation $id ui_temp = @e[tag=ui_temp_target3] ui_id
    title @s times 0 5 0
    title @s title [{"text":"ID:"},{"score":{"name":"$id","objective":"ui_temp"}},{"text":"               "}]

# 発射ボタンを押せば青マーカーの相手に全てのミサイルが飛ぶ
    execute at @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. unless entity @e[tag=ui_temp_target2] run playsound block.dispenser.fail player @s ~ ~ ~ 1 1 0
    execute at @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. if entity @e[tag=ui_temp_target2] run function ui:tmw/248/search

# タグ消し
    tag @e[tag=ui_temp_mark] remove ui_temp_mark
    tag @e[tag=ui_temp_target3] remove ui_temp_target3
    tag @s remove ui_temp_this
    kill @e[tag=ui_temp_target2]
