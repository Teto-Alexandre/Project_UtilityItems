#霊媒師

#
scoreboard players operation $temp ui_temp = @s ui_tmw271_trig
scoreboard players remove $temp ui_temp 2100

execute as @a if score @s ui_tmw271_id = $temp ui_temp run tag @s add ui_temp_target

tellraw @s [{"text":"霊媒を行います ─────"}]

execute unless score @s ui_tmw271_job matches 4 run tellraw @s [{"text":"あなたは霊媒師ではありません。"}]
execute if score @s ui_tmw271_job matches 4 unless score @s ui_tmw271_skill_ct matches 0 run tellraw @s [{"text":"クールタイム中です。"}]
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 unless entity @a[tag=ui_temp_target] run tellraw @s [{"text":"対象を発見できません。ログアウトでしょうか？"}]
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 if entity @a[tag=ui_temp_target] unless entity @s[tag=!tmw_271_player_alive] run tellraw @s [{"text":"なぜか対象は生きています。もう一度お試しください。"}]
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 if entity @a[tag=ui_temp_target] if entity @s[tag=!tmw_271_player_alive] if score @a[tag=ui_temp_target,limit=1] ui_tmw271_job matches 1 run tellraw @s [{"text":"白です。能力を消費しました。"}]
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 if entity @a[tag=ui_temp_target] if entity @s[tag=!tmw_271_player_alive] if score @a[tag=ui_temp_target,limit=1] ui_tmw271_job matches 1 run scoreboard players add @s ui_tmw271_skill_ct 600
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 if entity @a[tag=ui_temp_target] if entity @s[tag=!tmw_271_player_alive] if score @a[tag=ui_temp_target,limit=1] ui_tmw271_job matches 2 run tellraw @s [{"text":"黒です。能力を消費しました。"}]
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 if entity @a[tag=ui_temp_target] if entity @s[tag=!tmw_271_player_alive] if score @a[tag=ui_temp_target,limit=1] ui_tmw271_job matches 2 run scoreboard players add @s ui_tmw271_skill_ct 600
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 if entity @a[tag=ui_temp_target] if entity @s[tag=!tmw_271_player_alive] if score @a[tag=ui_temp_target,limit=1] ui_tmw271_job matches 3 run tellraw @s [{"text":"白です。能力を消費しました。"}]
execute if score @s ui_tmw271_job matches 4 if score @s ui_tmw271_skill_ct matches 0 if entity @a[tag=ui_temp_target] if entity @s[tag=!tmw_271_player_alive] if score @a[tag=ui_temp_target,limit=1] ui_tmw271_job matches 3 run scoreboard players add @s ui_tmw271_skill_ct 600

tag @a remove ui_temp_target