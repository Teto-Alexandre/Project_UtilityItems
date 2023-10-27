# デッキの右クリックの挙動

# マッチ中でない場合：マッチレーザー
# マッチ中：VEのステータス確認

execute if entity @s[tag=tmw272_active] run tag @s add tmw272_stats_listener

execute if entity @s[tag=tmw272_active] run function ui:tmw/272/id/-1/shot_start
execute unless entity @s[tag=tmw272_active] run function ui:tmw/272/id/-1/shot_start
#execute if entity @s[tag=tmw272_active] as @e[tag=tmw272_visual_input] run function ui:tmw/272/common/stats_open/tellraw

tag @a[tag=tmw272_stats_listener] remove tmw272_stats_listener