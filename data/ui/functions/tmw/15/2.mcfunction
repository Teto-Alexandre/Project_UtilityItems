# ダイスローラー

# データ読み取り
    data modify storage ui:common temp set from entity @s SelectedItem.tag.tmw.dice
    execute store result score $mult ui_temp run data get storage ui:common temp.mult
    #次の項でどうせ消えるから実行はしないけどメモ

    scoreboard players set $temp ui_temp 0
    function ui:tmw/15/2.2
    tellraw @s [{"color":"gray","text":"DiceTotal"},{"color":"green","text":"> "},{"score":{"name":"$temp","objective":"ui_temp"},"bold":true,"color":"green"}]

    data remove storage ui:common temp

# 発射サウンド
    playsound block.note_block.hat player @a ~ ~ ~ 0.8 1.6 0

# スコア消し
    scoreboard players reset $mult ui_temp

# 発動成功
    scoreboard players set $success ui_temp 1