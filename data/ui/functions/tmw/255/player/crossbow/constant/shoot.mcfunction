# 射撃形態になる

# レーザーサイト
    execute if score $model ui_temp matches 110811 run function ui:tmw/255/player/crossbow/constant/laser

# ストレージのモデルデータを読み込み
    execute store result storage ui:gun temp.value int 1 run scoreboard players get $model ui_temp
    item modify entity @s weapon.mainhand ui:gun/value/model
