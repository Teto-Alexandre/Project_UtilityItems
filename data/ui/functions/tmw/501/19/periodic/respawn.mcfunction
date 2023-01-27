## リスポーンタイムをカウントしている間、リスポーン地点を選ばせる
## 完遂でレーザーを発射して battle 状態に変える
## レーザーが当たらなかったら初期リスのどこかに復活させる

# リスポーン待ちの tick

# 死亡時
execute if entity @s[tag=tmw_501_19_respawn_first] run function ui:tmw/501/19/periodic/respawn_first

# カウントダウン
title @s subtitle {"text":"- RESPAWN -"}
execute if score @s ui_tmw501_19_now_respawn_time matches 200 run title @s times 3 14 3
execute if score @s ui_tmw501_19_now_respawn_time matches 200 run title @s title {"text":"10s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 180 run title @s title {"text":"9s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 160 run title @s title {"text":"8s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 140 run title @s title {"text":"7s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 120 run title @s title {"text":"6s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 100 run title @s title {"text":"5s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 80 run title @s title {"text":"4s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 60 run title @s title {"text":"3s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 40 run title @s title {"text":"2s"}
execute if score @s ui_tmw501_19_now_respawn_time matches 20 run title @s title {"text":"1s"}

#
scoreboard players operation $temp ui_temp = @s ui_tmw501_19_now_respawn_time
scoreboard players operation $temp ui_temp %= #3 ui_num
execute if score $temp ui_temp matches 0 at @s run function ui:tmw/501/19/functions/respawn/check/core

#
scoreboard players remove @s ui_tmw501_19_now_respawn_time 1

#
execute if score @s ui_tmw501_19_now_respawn_time matches ..0 run function ui:tmw/501/19/periodic/respawn_last
