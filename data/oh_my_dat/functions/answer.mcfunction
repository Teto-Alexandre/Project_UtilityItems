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
tellraw @p [{"text":"origin[0] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[0].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[1] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[1].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[2] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[2].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[3] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[3].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[4] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[4].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[5] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[5].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[6] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[6].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[7] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[7].tag.display.Name","interpret": true}]
tellraw @p [{"text":"origin[8] > ","color": "#ffe0cc"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[8].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札1枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札2枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[1].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札3枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[2].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札4枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[3].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札5枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[4].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札6枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[5].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札7枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[6].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札8枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[7].tag.display.Name","interpret": true}]
tellraw @p [{"text":"手札9枚目 > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[8].tag.display.Name","interpret": true}]
execute store result score $origin ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin
tellraw @p [{"text":"$origin : ","color":"#ccffcc"},{"score":{"name": "$origin","objective": "ui_temp"}}]
execute store result score $base ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base
tellraw @p [{"text":"$base : ","color":"#ccffcc"},{"score":{"name": "$base","objective": "ui_temp"}}]
execute store result score $match ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
tellraw @p [{"text":"$match : ","color":"#ccffcc"},{"score":{"name": "$match","objective": "ui_temp"}}]
execute store result score $hand ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand
tellraw @p [{"text":"$hand : ","color":"#ccffcc"},{"score":{"name": "$hand","objective": "ui_temp"}}]
execute store result score $ae ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects
tellraw @p [{"text":"$ae : ","color":"#ccffcc"},{"score":{"name": "$ae","objective": "ui_temp"}}]
execute store result score $de ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects
tellraw @p [{"text":"$de : ","color":"#ccffcc"},{"score":{"name": "$de","objective": "ui_temp"}}]
tellraw @p [{"text":"最終使用カード > ","color": "#ccffff"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.LastUsed.name","interpret": true},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.LastUsed.Name","interpret": true}]

scoreboard players reset $origin ui_temp
scoreboard players reset $base ui_temp
scoreboard players reset $match ui_temp
scoreboard players reset $hand ui_temp
scoreboard players reset $ae ui_temp
scoreboard players reset $de ui_temp
