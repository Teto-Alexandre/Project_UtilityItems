scoreboard players set $c.proj.success ui_temp 1

# データ読み取り
    data modify storage ui:common temp set from entity @s SelectedItem.tag.tmw.projectile
    execute store result score $c.proj.multi ui_temp run data get storage ui:common temp.MultiShot
    execute store result score $c.proj.sound ui_temp run data get storage ui:common temp.Sound
    #次の項でどうせ消えるから実行はしないけどメモ
    #data remove storage ui:common temp

# 発射サウンド
    execute if score $c.proj.sound ui_temp matches 1 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1.6 0
    execute if score $c.proj.sound ui_temp matches 2 run playsound item.trident.throw player @a ~ ~ ~ 0.8 1 0
    execute if score $c.proj.sound ui_temp matches 3 store result score $c.proj.mp ui_temp run data get storage ui:common temp.MP
    execute if score $c.proj.sound ui_temp matches 3 if score $c.proj.mp ui_temp > @s ui_tmw601_4600_mp run scoreboard players set $c.proj.success ui_temp 0
    execute if score $c.proj.sound ui_temp matches 3 if score $c.proj.success ui_temp matches 1 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1.6 0
    execute if score $c.proj.sound ui_temp matches 3 if score $c.proj.success ui_temp matches 1 run scoreboard players operation @s ui_tmw601_4600_mp -= $c.proj.mp ui_temp
    execute if score $c.proj.sound ui_temp matches 3 if score $c.proj.success ui_temp matches 0 run playsound block.dispenser.fail player @a ~ ~ ~ 0.8 1.6 0
    execute if score $c.proj.sound ui_temp matches 4 store result score $c.proj.mp ui_temp run data get storage ui:common temp.MP
    execute if score $c.proj.sound ui_temp matches 4 if score $c.proj.mp ui_temp > @s ui_tmw601_4600_mp run scoreboard players set $c.proj.success ui_temp 0
    execute if score $c.proj.sound ui_temp matches 4 if score $c.proj.success ui_temp matches 1 run playsound entity.wither.hurt player @a ~ ~ ~ 1.2 1 0
    execute if score $c.proj.sound ui_temp matches 4 if score $c.proj.success ui_temp matches 1 run scoreboard players operation @s ui_tmw601_4600_mp -= $c.proj.mp ui_temp
    execute if score $c.proj.sound ui_temp matches 4 if score $c.proj.success ui_temp matches 0 run playsound block.dispenser.fail player @a ~ ~ ~ 0.8 1.6 0

# 飛び道具生成
    execute if score $c.proj.success ui_temp matches 1 run function ui:tmw/15/1.2

# 発動成功
    execute if score $c.proj.success ui_temp matches 1 run scoreboard players set $success ui_temp 1

# スコア消し
    scoreboard players reset $c.proj.multi ui_temp
    scoreboard players reset $c.proj.sound ui_temp
    scoreboard players reset $c.proj.mp ui_temp
    scoreboard players reset $c.proj.success ui_temp