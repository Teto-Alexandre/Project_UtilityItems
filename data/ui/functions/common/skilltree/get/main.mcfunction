# 初期スコア
    #弾く用
        scoreboard players set $cancel ui_temp 0

# 実行者のコア読み取り
    data modify storage ui:temp temp set from entity @s Inventory[{Slot:17b}].tag.tmw.core
    execute store result score $point ui_temp run data get storage ui:temp temp.point
    execute store result score $pointused ui_temp run data get storage ui:temp temp.pointused

# ui:skill tempの書き込み
    #外部から入力
    #data merge storage ui:skill {temp:{id:101,point:1,needtotal:1,need:[[1,2],[3]]}}
    #data merge storage ui:skill {temp:{id:101,point:1}}

# ノードタイプ
    execute store result score $nodetype ui_temp run data get storage ui:skill temp.nodetype

# 前提条件が一つでもかけていれば弾く
    #条件リストを隔離
        data modify storage ui:skill2 temp set from storage ui:skill temp.need
    #条件ごとに実行する
        execute store result score $needtotal ui_temp run data get storage ui:skill temp.needtotal
        scoreboard players set $mettotal ui_temp 0
        execute if score $needtotal ui_temp matches 1.. run function ui:common/skilltree/get/needed_checker/list_master
        execute if score $mettotal ui_temp < $needtotal ui_temp run scoreboard players set $cancel ui_temp 1
        execute if score $mettotal ui_temp < $needtotal ui_temp run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":">> ","color":"red"},{"text":"前提ノードが不足しています","color":"gray"}]
        #execute unless score $mettotal ui_temp < $needtotal ui_temp run tellraw @s ["",{"text":"> 前提スキルセットが充足しました "},{"score":{"name":"$mettotal","objective":"ui_temp"},"color":"green"},{"text":" < "},{"score":{"name":"$needtotal","objective":"ui_temp"},"color":"green"}]
    #条件リストを削除
        data remove storage ui:skill2 temp

# 既に同じ数値を持っていたら弾く
    #コアのスキルリストと獲得スキルのidを隔離
        execute store result score $id ui_temp run data get storage ui:skill temp.id
        data modify storage ui:temp2 temp set from storage ui:temp temp.skills
    #コアのスキルごとに照合
        function ui:common/skilltree/get/double_checker/liner_search
    #コアのスキルリストを削除
        data remove storage ui:temp2 temp

# 前提条件が一つでもかけていれば弾く
    #条件リストを隔離
        data modify storage ui:skill2 temp set from storage ui:skill temp.cant
    #条件ごとに実行する
        execute store result score $canttotal ui_temp run data get storage ui:skill2 temp
        scoreboard players set $metcount ui_temp 0
        execute if score $canttotal ui_temp matches 1.. run function ui:common/skilltree/get/cant_checker/list
        execute if score $canttotal ui_temp matches 1.. if score $metcount ui_temp matches 1 run scoreboard players set $cancel ui_temp 1
        execute if score $canttotal ui_temp matches 1.. if score $metcount ui_temp matches 1 run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":">> ","color":"red"},{"text":"競合ノードを既に習得しています","color":"gray"}]
        #execute if score $canttotal ui_temp matches 1.. unless score $metcount ui_temp matches 1 run tellraw @s ["",{"text":"> 競合スキルを習得していません"}]
        #execute unless score $canttotal ui_temp matches 1.. run tellraw @s ["",{"text":"> ノードに競合スキルは存在しません"}]
    #条件リストを削除
        data remove storage ui:skill2 temp

# 入力した必要ポイント未満なら弾く
    #必要ポイントを参照
        execute store result score $needpoint ui_temp run data get storage ui:skill temp.point
    #足りないなら弾く
        execute if score $point ui_temp < $needpoint ui_temp run scoreboard players set $cancel ui_temp 1
        execute if score $point ui_temp < $needpoint ui_temp run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":">> ","color":"red"},{"text":"スキルポイントが不足しています","color":"gray"}]
        #execute unless score $point ui_temp < $needpoint ui_temp run tellraw @s ["",{"text":"> スキルポイントが十分にあります "},{"score":{"name":"$point","objective":"ui_temp"},"color":"green"},{"text":" < "},{"score":{"name":"$needpoint","objective":"ui_temp"},"color":"green"}]

# 音鳴らして取得させる、実行者に返す
    #音を鳴らす
        execute if score $cancel ui_temp matches 0 at @s run playsound block.note_block.flute player @s ~ ~ ~ 1 1.2 0
        execute if score $cancel ui_temp matches 1 at @s run playsound entity.ghast.scream player @s ~ ~ ~ 0.8 1.6 0
    #ノードタイプ1: 取得条件ノードを解除する
        #条件リストを隔離
            execute if score $cancel ui_temp matches 0 if score $nodetype ui_temp matches 1 run data modify storage ui:temp temp.skills2 set value []
        #条件ごとに実行する
            execute if score $cancel ui_temp matches 0 if score $nodetype ui_temp matches 1 run execute store result score $needtotal ui_temp run data get storage ui:skill temp.needtotal
            execute if score $cancel ui_temp matches 0 if score $nodetype ui_temp matches 1 run execute if score $needtotal ui_temp matches 1.. run function ui:common/skilltree/get/needed_delete/list_master
            execute if score $cancel ui_temp matches 0 if score $nodetype ui_temp matches 1 run data modify storage ui:temp temp.skills set from storage ui:temp temp.skills2
            data remove storage ui:temp temp.skill2
        #条件リストを削除
            execute if score $cancel ui_temp matches 0 if score $nodetype ui_temp matches 1 run data remove storage ui:skill2 temp
    #取得
        execute if score $cancel ui_temp matches 0 run data modify storage ui:temp temp.skills append from storage ui:skill temp.id
    #スキルポイントが減る
        execute if score $cancel ui_temp matches 0 store result storage ui:temp temp.point int 1 run scoreboard players operation $point ui_temp -= $needpoint ui_temp
        execute if score $cancel ui_temp matches 0 store result storage ui:temp temp.pointused int 1 run scoreboard players operation $pointused ui_temp += $needpoint ui_temp

    #反映
        execute if score $cancel ui_temp matches 0 run item modify entity @s container.17 ui:tmw240/core
        execute if score $cancel ui_temp matches 0 if data storage ui:skill temp.name run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":"> ","color":"green"},{"text":"[","color":"gray"},{"storage":"ui:skill","nbt":"temp.name","interpret":true},{"text":"]を習得しました","color":"gray"}]
        execute if score $cancel ui_temp matches 0 unless data storage ui:skill temp.name run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":"> ","color":"green"},{"text":"ノードを習得しました","color":"gray"}]
        execute if score $cancel ui_temp matches 1 if data storage ui:skill temp.name run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":"> ","color":"red"},{"text":"[","color":"gray"},{"storage":"ui:skill","nbt":"temp.name","interpret":true},{"text":"]を習得するための条件が足りません","color":"gray"}]
        execute if score $cancel ui_temp matches 1 unless data storage ui:skill temp.name run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":"> ","color":"red"},{"text":"ノードを習得するための条件が足りません","color":"gray"}]
        tellraw @s ["",{"text":"[","color":"gray"},{"text":"Tree","color":"white"},{"text":"]","color":"gray"},{"text":"> ","color":"yellow"},{"text":"残ポイントは ","color":"gray"},{"storage":"ui:temp","nbt":"temp.point","interpret":true},{"text":" です","color":"gray"}]

# 一時的記憶領域のリセット
    data remove storage ui:temp temp
    data remove storage ui:skill temp