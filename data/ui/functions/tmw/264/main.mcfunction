# 検知範囲拡大
tag @s[tag=tmw_use_s] add tmw_use_n
tag @s[tag=tmw_drop_s] add tmw_drop_n
tag @s[tag=tmw_oh_s] add tmw_oh_n

# 実行
execute as @s[tag=tmw_use_n] run function ui:tmw/501/19/battle/mode/change/trigger
execute as @s[tag=tmw_drop_n] run function ui:tmw/501/19/battle/camera/change/trigger
execute as @s[tag=tmw_oh_n] if score @s ui_tmw501_19_stat_jet_type matches 0 run function ui:tmw/501/19/battle/jet/change/trigger_not
execute as @s[tag=tmw_oh_n] unless score @s ui_tmw501_19_stat_jet_type matches 0 run function ui:tmw/501/19/battle/jet/change/trigger
