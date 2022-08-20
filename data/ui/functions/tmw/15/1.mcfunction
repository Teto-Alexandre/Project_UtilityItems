# データ読み取り
    data modify storage ui:common temp set from entity @s SelectedItem.tag.tmw.projectile
    execute store result score $c.proj.multi ui_temp run data get storage ui:common temp.MultiShot
    execute store result score $c.proj.sound ui_temp run data get storage ui:common temp.Sound
    #次の項でどうせ消えるから実行はしないけどメモ
    #data remove storage ui:common temp

# 飛び道具生成
    function ui:tmw/15/1.2

# 発射サウンド
    execute if score $c.proj.sound ui_temp matches 1 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1.6 0
    execute if score $c.proj.sound ui_temp matches 2 run playsound item.trident.throw player @a ~ ~ ~ 0.8 1 0

# スコア消し
    scoreboard players reset $c.proj.multi ui_temp
    scoreboard players reset $c.proj.sound ui_temp

# 発動成功
    scoreboard players set $success ui_temp 1