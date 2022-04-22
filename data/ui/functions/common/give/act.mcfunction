# スタック数をスコアから取得するgiveコモン
    #必須入力値
        #storage ui:temp {give:{id:"minecraft:cobblestone",Count:1b}}
        #$c.give.num 個数
        #コマンド実行地点 出現座標
    #サブ入力値
        #無し
    #numスタックの入力アイテムを返す

# calc
execute store result storage ui:temp give.Count byte 1 run scoreboard players get $c.give.num ui_temp
summon item ~ ~ ~ {Tags:["ui_c_give_item"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:0s}
data modify entity @e[tag=ui_c_give_item,limit=1] Item set from storage ui:temp give
data remove storage ui:temp give
kill @e[tag=ui_c_give_item,nbt={Item:{id:"minecraft:stone",Count:1b}}]
tag @e[tag=ui_c_give_item] remove ui_c_give_item
