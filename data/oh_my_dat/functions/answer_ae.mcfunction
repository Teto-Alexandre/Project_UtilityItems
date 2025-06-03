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
tellraw @p ["",{"selector":"@s"},{"text":"の情報を表示します。 [デバッグメッセージ]","color": "gray"}]
tellraw @p [{"text":"AE[0] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[1] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[2] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[3] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[4] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[5] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[6] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[7] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[8] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
tellraw @p [{"text":"AE[9] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].id"}]
execute store result score $ae ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects
tellraw @p [{"text":"$ae : ","color":"#ccffcc"},{"score":{"name": "$ae","objective": "ui_temp"}}]

scoreboard players reset $ae ui_temp
