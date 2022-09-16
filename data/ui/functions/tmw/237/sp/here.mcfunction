# その場系スペシャルウェポン発動

# ノヴァ
    execute if score $sptype ui_temp matches 251 run playsound entity.wither.death player @a ~ ~ ~ 1 0.8 0
    execute if score $sptype ui_temp matches 251 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force

# スーパースター
    execute if score $sptype ui_temp matches 252 run playsound entity.player.levelup player @a ~ ~ ~ 3 0.5 0
    execute if score $sptype ui_temp matches 252 run particle totem_of_undying ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $sptype ui_temp matches 252 run effect give @s resistance 6 126 false
    execute if score $sptype ui_temp matches 252 run effect give @s strength 6 2 false
    execute if score $sptype ui_temp matches 252 run effect give @s glowing 6 0 false

# サブラッシュ
    execute if score $sptype ui_temp matches 253 run playsound block.beacon.power_select player @a ~ ~ ~ 3 1.8 0

# ヴァリアブル
    execute if score $sptype ui_temp matches 254 run effect give @s resistance 8 0 false
    execute if score $sptype ui_temp matches 254 run effect give @s strength 8 0 false
    execute if score $sptype ui_temp matches 254 run effect give @s speed 8 0 false
    execute if score $sptype ui_temp matches 254 run playsound block.beacon.activate player @a ~ ~ ~ 3 1.4 0

# レーダー
    execute if score $sptype ui_temp matches 255 run scoreboard players operation $team ui_temp = @s ui_team
    execute if score $sptype ui_temp matches 255 as @a unless score $team ui_temp = @s ui_team run effect give @s glowing 6 0 false
    execute if score $sptype ui_temp matches 255 run playsound block.beacon.deactivate player @a ~ ~ ~ 3 1.4 0

# チャクチ
    execute if score $sptype ui_temp matches 256 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 0.8 0
    execute if score $sptype ui_temp matches 256 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 1 0
    execute if score $sptype ui_temp matches 256 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 0.8 0
    execute if score $sptype ui_temp matches 256 run effect give @s levitation 1 29 false

# トーテム
    execute if score $sptype ui_temp matches 257 run function ui:tmw/237/misc/temp_team
    execute if score $sptype ui_temp matches 257 run tag @a[tag=ui_temp_team] add tmw_237_sp_survive
    execute if score $sptype ui_temp matches 257 at @a[tag=ui_temp_team] run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 0.8 0
    execute if score $sptype ui_temp matches 257 at @a[tag=ui_temp_team] run particle totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.2 10 force
    execute if score $sptype ui_temp matches 257 run tag @e[tag=ui_temp_team] remove ui_temp_team
