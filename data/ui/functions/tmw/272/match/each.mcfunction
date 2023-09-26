# カウントを増やす
scoreboard players operation $global_time ui_temp = @s ui_is2
scoreboard players add @s ui_is2 1
scoreboard players operation $temp_5sec ui_temp = $global_time ui_temp
scoreboard players operation $temp_5sec ui_temp %= #100 ui_num

# プレイヤー認識
scoreboard players operation $link_id ui_temp = @s ui_obj_id
execute as @e[tag=tmw272_active] if score @s ui_tmw272_link_id = $link_id ui_temp run tag @s add ui_temp_players
tag @s add tmw272_active_match

# 初回実行時
execute if score $global_time ui_temp matches 0 run function ui:tmw/272/match/periodic/init

# 五秒経過ごとに通知
execute if score $temp_5sec ui_temp matches 69 run playsound entity.experience_orb.pickup player @a[tag=ui_temp_players] ~ ~ ~ 1 2 1
execute if score $temp_5sec ui_temp matches 79 run playsound entity.experience_orb.pickup player @a[tag=ui_temp_players] ~ ~ ~ 1 2 1
execute if score $temp_5sec ui_temp matches 89 run playsound entity.experience_orb.pickup player @a[tag=ui_temp_players] ~ ~ ~ 1 2 1
execute if score $temp_5sec ui_temp matches 99 run function ui:tmw/272/match/periodic/5sec

# HPが0になったプレイヤーをマッチから除外する
execute as @e[tag=ui_temp_players] if score @s ui_tmw272_health matches ..0 run function ui:tmw/272/match/player/death

# 最後の一人になったら勝利判定を出して消える
scoreboard players set $players_count ui_temp 0
execute as @e[tag=ui_temp_players] run scoreboard players add $players_count ui_temp 1
execute if score $players_count ui_temp matches ..1 run function ui:tmw/272/match/end/

# クローバルタイムリセット
scoreboard players reset $global_time ui_temp
scoreboard players reset $players_count ui_temp

# タグリセット
tag @e[tag=ui_temp_players] remove ui_temp_players
tag @s remove tmw272_active_match