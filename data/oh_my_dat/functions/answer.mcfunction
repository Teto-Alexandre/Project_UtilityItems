### 私が追加した奴

### 指定されたエンティティ(@s)の個別ストレージを可視化する

# IDを持っていなければ、IDを割り当て
execute unless score @s OhMyDatID matches 1.. run function oh_my_dat:sys/allocate
# IDを一時変数にコピー
execute store result storage oh_my_dat: target_id int 1 run scoreboard players operation _ OhMyDatID = @s OhMyDatID
# 取得するIDに変化があるかどうか確認
execute store result storage oh_my_dat: update byte 1 run data modify storage oh_my_dat: last_id set from storage oh_my_dat: target_id
# ストレージ提供
execute if data storage oh_my_dat: {update:true} run function oh_my_dat:sys/provide

#
tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list[0]"}]
execute store result score $temp ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list
tellraw @a [{"score":{"name": "$temp","objective": "ui_temp"}}]
