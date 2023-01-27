## 仮称:ロボ

#declare tag tmw_501_19_

# ここはプレイヤーごとに毎 tick 実行する区画

# 各状態限定実行
execute if entity @s[tag=tmw_501_19_battle] run function ui:tmw/501/19/periodic/battle
execute if entity @s[tag=tmw_501_19_respawn] run function ui:tmw/501/19/periodic/respawn
execute if entity @s[tag=tmw_501_19_dead] run function ui:tmw/501/19/periodic/dead
execute if entity @s[tag=tmw_501_19_lobby] run function ui:tmw/501/19/periodic/lobby
