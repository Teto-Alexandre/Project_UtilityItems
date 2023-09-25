# 私だ
tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_player,distance=..1,sort=nearest,limit=1] add ui_temp_target

# 対象にIDが存在しないなら割り振る
execute as @s unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id
execute as @e[tag=ui_temp_target] unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# スコア作ろうね
scoreboard objectives add ui_tmw272_link_id dummy

# 各種IDをキャッシュ
scoreboard players operation $link_id ui_temp = @s ui_tmw272_link_id
scoreboard players operation $host_id ui_temp = @s ui_obj_id
scoreboard players operation $obj_id ui_temp = @e[tag=ui_temp_target,limit=1] ui_obj_id

# 発動者の参加しているゲームテーブルが存在するかサーチ
execute as @e[tag=tmw272] if score @s ui_obj_id = $link_id ui_temp run tag @s add ui_temp_game

# プレイヤー追加/初回だけ
execute if entity @e[tag=ui_temp_game] run function ui:tmw/272/id/-1/add
execute unless entity @e[tag=ui_temp_game] run function ui:tmw/272/id/-1/first

#
execute as @e[predicate=ui:load_unhurtable] if score @s ui_tmw272_link_id = $link_id ui_temp run tag @s add tmw272_active_temp
tellraw @a [{"text":"[CG"},{"score":{"name": "$link_id","objective": "ui_temp"}},{"text":"-PlAuth] > "},{"selector":"@e[tag=tmw272_active_temp]"},{"text":"が参加しています"}]
tag @e[tag=tmw272_active_temp] add tmw272_active

# キャッシュ削除各種
scoreboard players reset $link_id ui_temp
scoreboard players reset $host_id ui_temp
scoreboard players reset $obj_id ui_temp
tag @e[tag=ui_temp_active_temp] remove ui_temp_active_temp
tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[tag=ui_temp_game] remove ui_temp_game
data remove storage ui:temp player_template