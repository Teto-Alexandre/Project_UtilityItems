# ダイスローラー

# データ読み取り
    data modify storage ui:common temp set from entity @s SelectedItem.tag.tmw.dice
    # 回数
    execute store result score $mult ui_temp run data get storage ui:common temp.mult
    # 秘匿
    execute store result score $hide ui_temp run data get storage ui:common temp.hide
    # 消費
    execute store result score $consume ui_temp run data get storage ui:common temp.consume

    scoreboard players set $temp ui_temp 0
    function ui:tmw/15/2.2
    execute if score $hide ui_temp matches 0 run tellraw @a [{"color":"gold","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"$temp","objective":"ui_temp"},"bold":true,"color":"green"},{"color":"gray","text":" : "},{"selector":"@s"}]
    execute if score $hide ui_temp matches 1 run tellraw @a [{"color":"gold","text":"Dice"},{"color":"green","text":"> "},{"selector":"@s"},{"color":"gray","text":" がダイスロールしました"}]

    data remove storage ui:common temp

# 発射サウンド
    execute if score $hide ui_temp matches 0..1 run playsound block.note_block.hat player @a ~ ~ ~ 1 1.6 0.5
    execute if score $hide ui_temp matches 2 run playsound block.note_block.hat player @s ~ ~ ~ 0.8 1.6 0

#
    execute if score $consume ui_temp matches 1 run item replace entity @s weapon.mainhand with air

# スコア消し
    scoreboard players reset $mult ui_temp

# 発動成功
    scoreboard players set $success ui_temp 1