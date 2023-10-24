# 私だ
tag @e[tag=ui_temp_targetable,distance=..1,sort=nearest,limit=1] add ui_temp_target
tag @s add ui_temp_player

# 対象にIDが存在しないなら割り振る
execute as @s unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id
execute as @e[tag=ui_temp_target] unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# 各種IDをキャッシュ
execute if score $shot_type ui_temp matches 2 run scoreboard players operation $link_id ui_temp = @s ui_tmw272_link_id
execute if score $shot_type ui_temp matches 1 run scoreboard players operation $link_id ui_temp = @e[tag=ui_temp_target,limit=1] ui_tmw272_link_id
scoreboard players operation $host_id ui_temp = @s ui_obj_id
scoreboard players operation $obj_id ui_temp = @e[tag=ui_temp_target,limit=1] ui_obj_id

# 発動者の参加しているゲームテーブルが存在するかサーチ
execute as @e[tag=tmw272] if score @s ui_obj_id = $link_id ui_temp run tag @s add ui_temp_game
execute as @e[tag=ui_temp_game] run function ui:tmw/272/id/-1/ng_filter/
execute if score $shot_type ui_temp matches 404 run tellraw @s [{"text":"[CG"},{"score":{"name": "$link_id","objective": "ui_temp"}},{"text":"-PlAuth] > "},{"text":"一度離脱した戦線に再び参加することはできません"}]

# プレイヤー追加/初回だけ
execute if score $shot_type ui_temp matches 2 if entity @e[tag=ui_temp_game] run function ui:tmw/272/id/-1/add
execute if score $shot_type ui_temp matches 2 unless entity @e[tag=ui_temp_game] run say このメッセージは出ないはずだよ
execute if score $shot_type ui_temp matches 1 if entity @e[tag=ui_temp_game] run function ui:tmw/272/id/-1/join
execute if score $shot_type ui_temp matches 1 unless entity @e[tag=ui_temp_game] run function ui:tmw/272/id/-1/first

#
execute as @e[predicate=ui:load_unhurtable] if score @s ui_tmw272_link_id = $link_id ui_temp run tag @s add tmw272_active_temp
execute unless score $shot_type ui_temp matches 404 run tellraw @a [{"text":"[CG"},{"score":{"name": "$link_id","objective": "ui_temp"}},{"text":"-PlAuth] > "},{"selector":"@e[tag=tmw272_active_temp]"},{"text":"が戦線を開きました"}]
execute unless score $shot_type ui_temp matches 404 run tag @e[tag=tmw272_active_temp] add tmw272_active
tag @e[tag=tmw272_active_temp] remove tmw272_active_temp

# キャッシュ削除各種
scoreboard players reset $link_id ui_temp
scoreboard players reset $host_id ui_temp
scoreboard players reset $obj_id ui_temp
tag @e[tag=ui_temp_ng_temp] remove ui_temp_ng_temp
tag @e[tag=ui_temp_active_temp] remove ui_temp_active_temp
tag @e[tag=ui_temp_player] remove ui_temp_player
tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[tag=ui_temp_game] remove ui_temp_game
data remove storage ui:temp player_template
data remove storage ui:temp temp