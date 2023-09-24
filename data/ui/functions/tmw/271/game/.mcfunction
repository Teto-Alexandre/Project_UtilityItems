execute as @a if score @s ui_tmw271_skill_ct matches 1 run tellraw @s [{"text":"能力のクールタイムが終了した。"}]
execute as @a if score @s ui_tmw271_skill_ct matches 1.. run scoreboard players remove @s ui_tmw271_skill_ct 1

scoreboard players set $success ui_temp 0

execute unless entity @a[tag=tmw_271_player_alive,scores={ui_tmw271_job=2}] run say 村側の勝利
execute unless entity @a[tag=tmw_271_player_alive,scores={ui_tmw271_job=2}] run scoreboard players set $success ui_temp 1
execute unless entity @a[tag=tmw_271_player_alive,scores={ui_tmw271_job=1}] unless entity @a[tag=tmw_271_player_alive,scores={ui_tmw271_job=3}] run say 狼側の勝利
execute unless entity @a[tag=tmw_271_player_alive,scores={ui_tmw271_job=1}] unless entity @a[tag=tmw_271_player_alive,scores={ui_tmw271_job=3}] run scoreboard players set $success ui_temp 1

execute if score $success ui_temp matches 1 run function ui:tmw/271/game/end