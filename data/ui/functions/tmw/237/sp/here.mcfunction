# その場系スペシャルウェポン発動

# ノヴァ
    execute if score $sptype ui_temp matches 101 run playsound entity.wither.death player @a ~ ~ ~ 1 0.8 0
    execute if score $sptype ui_temp matches 101 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force

# スーパースター
    execute if score $sptype ui_temp matches 102 run playsound entity.player.levelup player @a ~ ~ ~ 3 0.5 0
    execute if score $sptype ui_temp matches 102 run particle totem_of_undying ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $sptype ui_temp matches 102 run effect give @s resistance 6 126 false
    execute if score $sptype ui_temp matches 102 run effect give @s strength 6 4 false
    execute if score $sptype ui_temp matches 102 run effect give @s glowing 6 0 false

# サブラッシュ
    execute if score $sptype ui_temp matches 103 run playsound block.beacon.power_select player @a ~ ~ ~ 3 1.8 0

# ヴァリアブル
    execute if score $sptype ui_temp matches 104 run playsound block.beacon.activate player @a ~ ~ ~ 3 1.4 0

# レーダー
    execute if score $sptype ui_temp matches 105 run scoreboard players operation $team ui_temp = @s ui_team
    execute if score $sptype ui_temp matches 105 as @a unless score $team ui_temp = @s ui_team run effect give @s glowing 3 0 false
    execute if score $sptype ui_temp matches 105 run playsound block.beacon.deactivate player @a ~ ~ ~ 3 1.4 0
