# 対戦作成、参加、巻き込みレーザー

# 想定されるケース

# 1: 自分 x - 全員に命中
    # 1: 相手 x（リンクを更新して新規作成）
    # 2: 相手 o（相手のリンクを自分に取得）

# 2: 自分 o - リンクを持っていない相手にのみ命中
    # 1: 相手 x（自分のリンクを相手に共有）
    # 2: 相手 一緒（ターゲットではないのですり抜ける）
    # 3: 相手 別 （ターゲットではないのですり抜ける）

execute unless score @s ui_tmw272_link_id matches 1..2147483647 run scoreboard players set $shot_type ui_temp 1
execute if score @s ui_tmw272_link_id matches 1..2147483647 run scoreboard players set $shot_type ui_temp 2

execute unless score @s ui_tmw272_link_id matches 1..2147483647 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_player] run tag @s add ui_temp_targetable
execute if score @s ui_tmw272_link_id matches 1..2147483647 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_player] unless score @s ui_tmw272_link_id matches 1..2147483647 run tag @s add ui_temp_targetable

function ui:tmw/272/id/-1/shot

scoreboard players reset $shot_type ui_temp
tag @e[tag=ui_temp_targetable] remove ui_temp_targetable