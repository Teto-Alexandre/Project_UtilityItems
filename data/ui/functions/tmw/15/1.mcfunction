# データ読み取り
    data modify storage ui:common temp set from entity @s SelectedItem.tag.tmw.projectile
    execute store result score $c.proj.multi ui_temp run data get storage ui:common temp.MultiShot
    execute store result score $c.proj.ct ui_temp run data get storage ui:common temp.CoolTime
    #次の項でどうせ消えるから実行はしないけどメモ
    #data remove storage ui:common temp

# 飛び道具生成
    function ui:tmw/15/1.2

# 発射サウンド
    playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1.6 0

# クールタイム（MPの概念がないのでとりあえず仮追加）
    scoreboard players operation @s ui_ct += $c.proj.ct ui_temp

# スコア消し
    scoreboard players reset $c.proj.multi ui_temp
    scoreboard players reset $c.proj.ct ui_temp