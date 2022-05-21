# その場系スペシャルウェポン発動

# ノヴァ
    execute if score $sptype ui_temp matches 101 run playsound entity.wither.death player @a ~ ~ ~ 1 0.8 0
    execute if score $sptype ui_temp matches 101 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score $sptype ui_temp matches 101 run effect give @s luck 1 0 false
    execute if score $sptype ui_temp matches 101 run scoreboard players set $sptime ui_temp 21

# スーパースター
    execute if score $sptype ui_temp matches 102 run playsound entity.player.levelup player @a ~ ~ ~ 3 0.5 0
    execute if score $sptype ui_temp matches 102 run particle totem_of_undying ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $sptype ui_temp matches 102 run effect give @s resistance 10 126 false
    execute if score $sptype ui_temp matches 102 run effect give @s strength 10 4 false
    execute if score $sptype ui_temp matches 102 run effect give @s glowing 10 0 false
    execute if score $sptype ui_temp matches 102 run scoreboard players set $sptime ui_temp 201

# サブラッシュ
    execute if score $sptype ui_temp matches 103 run playsound block.beacon.power_select player @a ~ ~ ~ 3 1.8 0
    execute if score $sptype ui_temp matches 103 run effect give @s luck 5 0 false
    execute if score $sptype ui_temp matches 103 run scoreboard players set $sptime ui_temp 101

# ヴァリアブル
    execute if score $sptype ui_temp matches 104 run playsound block.beacon.activate player @a ~ ~ ~ 3 1.4 0
    execute if score $sptype ui_temp matches 104 run effect give @s luck 8 0 false
    execute if score $sptype ui_temp matches 104 run scoreboard players set $sptime ui_temp 161

# レーダー
    execute if score $sptype ui_temp matches 105 run scoreboard players operation $id ui_temp = @s ui_id
    execute if score $sptype ui_temp matches 105 as @a unless score $id ui_temp = @s ui_id run effect give @s glowing 3 0 false
    execute if score $sptype ui_temp matches 105 run playsound block.beacon.deactivate player @a ~ ~ ~ 3 1.4 0
    execute if score $sptype ui_temp matches 105 run effect give @s luck 3 0 false
    execute if score $sptype ui_temp matches 105 run scoreboard players set $sptime ui_temp 61

# アイテム更新
    scoreboard players set $changed ui_temp 1