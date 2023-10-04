# カウントを増やす
scoreboard players operation $turn_time ui_temp = @s ui_is2
scoreboard players remove @s ui_is2 1

#
scoreboard players set $turn_time_rev ui_temp 100
execute if score @s ui_tmw272_match_round matches 0 run scoreboard players set $turn_time_rev ui_temp 200
execute if score @s ui_tmw272_match_round matches 5..9 run scoreboard players set $turn_time_rev ui_temp 140
execute if score @s ui_tmw272_match_round matches 10.. run scoreboard players set $turn_time_rev ui_temp 200
scoreboard players operation $turn_time_rev ui_temp -= $turn_time ui_temp

# プレイヤー認識
scoreboard players operation $link_id ui_temp = @s ui_obj_id
execute as @e[tag=tmw272_active] if score @s ui_tmw272_link_id = $link_id ui_temp run tag @s add ui_temp_players
tag @s add tmw272_active_match

# 初回実行時
execute if entity @s[tag=!tmw272_match_init] run function ui:tmw/272/match/periodic/init

# 時間経過ごとに通知
execute if score $turn_time ui_temp matches 30 run playsound entity.experience_orb.pickup player @a[tag=ui_temp_players] ~ ~ ~ 1 2 1
execute if score $turn_time ui_temp matches 20 run playsound entity.experience_orb.pickup player @a[tag=ui_temp_players] ~ ~ ~ 1 2 1
execute if score $turn_time ui_temp matches 10 run playsound entity.experience_orb.pickup player @a[tag=ui_temp_players] ~ ~ ~ 1 2 1
execute if score $turn_time ui_temp matches 0 run function ui:tmw/272/match/periodic/turn

## エンティティはここで動かす

# プレイヤーごとに実行する常在効果
execute as @e[tag=ui_temp_players] run function ui:tmw/272/match/player/

# 最後の一人になったら勝利判定を出して消える
scoreboard players set $players_count ui_temp 0
execute as @e[tag=ui_temp_players] run scoreboard players add $players_count ui_temp 1
execute if score $players_count ui_temp matches ..1 run function ui:tmw/272/match/end/

# クローバルタイムリセット
scoreboard players reset $turn_time_rev ui_temp
scoreboard players reset $turn_time ui_temp
scoreboard players reset $players_count ui_temp

# タグリセット
tag @e[tag=ui_temp_players] remove ui_temp_players
tag @s remove tmw272_active_match