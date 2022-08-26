# サイト表示
    scoreboard players operation $time ui_temp = $world ui_tc
    scoreboard players operation $time ui_temp %= #2 ui_num
    execute if score $time ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/242/sight0
    execute if score $time ui_temp matches 1 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/242/sight1

# これです
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team

# ターゲット出来るエンティティを周囲に表示
    execute at @s as @e[distance=1..100,predicate=ui:load_unhurtable] unless score @s ui_id = $id ui_temp unless score @s ui_team = $team ui_temp run function ui:tmw/242/target_marker
    execute at @s positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker,distance=..3] add ui_temp_target
    execute at @s positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker,distance=..3,sort=nearest,limit=1] add ui_temp_target2
    execute at @e[tag=ui_temp_target2] run particle dust 0 1 1 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
    execute at @e[tag=ui_temp_target,tag=!ui_temp_target2] run particle dust 0 1 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
    execute at @e[tag=ui_temp_marker,tag=!ui_temp_target] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @s
    kill @e[tag=ui_temp_marker,tag=!ui_temp_target]
    tag @e[tag=ui_temp_target] remove ui_temp_marker
    kill @e[tag=ui_temp_target,tag=!ui_temp_target2]
    tag @e[tag=ui_temp_target2] remove ui_temp_target

# 発射ボタンを押せば青マーカーの相手に全てのミサイルが飛ぶ
    execute at @s[scores={ui_use1=1..}] unless score @s ui_ct matches 1.. run function ui:tmw/242/mult

# タグ消し
    tag @s remove ui_temp_this
    kill @e[tag=ui_temp_target2]
