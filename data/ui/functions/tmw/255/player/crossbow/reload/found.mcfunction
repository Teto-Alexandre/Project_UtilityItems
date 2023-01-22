# 最前列の弾の情報を取得
    data modify storage ui:temp temp2 set from storage ui:temp temp[0]

    execute store result score $stack ui_temp run data get storage ui:temp temp2.tag.tmw.bullet.Stack
    execute if score $stack ui_temp matches 0 run scoreboard players set $stack ui_temp 1
    scoreboard players operation $magazine.temp ui_temp = $magazine ui_temp
    scoreboard players remove $magazine.temp ui_temp 1
    scoreboard players operation $magazine.temp ui_temp /= $stack ui_temp
    scoreboard players add $magazine.temp ui_temp 1
    scoreboard players operation $magazine.reload ui_temp = $magazine.temp ui_temp
    execute store result score $temp ui_temp run data get storage ui:temp temp2.Count
    execute if score $magazine.temp ui_temp > $temp ui_temp run scoreboard players set $add ui_temp 1
    scoreboard players operation $magazine.temp ui_temp < $temp ui_temp
    scoreboard players operation $magazine.temp ui_temp *= $stack ui_temp
    scoreboard players operation $magazine.temp ui_temp < $magazine ui_temp
    scoreboard players operation $magazine ui_temp < $magazine.temp ui_temp
    #tellraw @a [{"score":{"name":"$stack","objective":"ui_temp"}},{"text":" "},{"score":{"name":"$magazine","objective":"ui_temp"}},{"text":" - "},{"score":{"name":"$magazine.reload","objective":"ui_temp"}}]

    # ここ入れ替え

    #execute store result score $temp ui_temp run data get storage ui:temp temp2.Count
    #execute if score $magazine ui_temp > $temp ui_temp run scoreboard players set $add ui_temp 1
    #scoreboard players operation $magazine ui_temp < $temp ui_temp

# 銃側の書き込み情報を取得 - スタックして装填するかを検証
    data modify storage ui:temp temp set from storage ui:tmw temp.this.tag.tmw.bullets
    execute if score $stack ui_temp matches -1 run function ui:tmw/255/player/crossbow/reload/full_exchange_load
    #割り込み：同型ならスタック
        execute store success score $empty ui_temp run data modify storage ui:temp temp3 set from storage ui:temp temp[-1]
        execute store result score $count ui_temp run data get storage ui:temp temp3.Count
        data remove storage ui:temp temp3.Count
        execute store success score $check ui_temp run data modify storage ui:temp temp3 set from storage ui:temp temp2.tag.tmw.bullet
        execute if score $check ui_temp matches 0 store result storage ui:temp temp[-1].Count int 1 run scoreboard players operation $count ui_temp += $magazine ui_temp
        #execute if score $check ui_temp matches 0 run say 弾をスタックして装填
    #
    execute if score $empty ui_temp matches 0 run scoreboard players set $check ui_temp 1
    execute if score $check ui_temp matches 1 if score $reloaditem ui_temp matches 0 run data modify storage ui:temp temp append from storage ui:temp temp2.tag.tmw.bullet
    execute if score $check ui_temp matches 1 if score $reloaditem ui_temp matches 1 run data modify storage ui:temp temp append value {}
    execute if score $check ui_temp matches 1 run data modify storage ui:temp temp[-1] merge value {Count:1}
    execute if score $check ui_temp matches 1 store result storage ui:temp temp[-1].Count int 1 run scoreboard players get $magazine ui_temp

# スタック数からリロード分だけ減らす、または消滅
    #tellraw @a [{"score":{"name":"$slot","objective":"ui_temp"}},{"text":" "},{"score":{"name":"$magazine","objective":"ui_temp"}}]
    data merge storage ui:common {input:{Mode:"get",Num:-1}}
    execute store result storage ui:common input.Num int 1 run scoreboard players get $slot ui_temp
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    data merge storage ui:common {input:{Mode:"count",Num:1,Text:"add"}}
    execute store result storage ui:common input.Num int -1 run scoreboard players get $magazine.reload ui_temp
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    data merge storage ui:common {input:{Mode:"replace",Num:-1}}
    execute store result storage ui:common input.Num int 1 run scoreboard players get $slot ui_temp
    function ui:common/item

# 書き込み終了
    execute if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:gun/value/bullets
    execute if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:gun/value/bullets
    scoreboard players set $success ui_temp 1
