# 実行者のコア読み取り
    data modify storage ui:temp temp set from entity @s Inventory[{Slot:17b}].tag.tmw.core
    execute store result score $point ui_temp run data get storage ui:temp temp.point
    execute store result score $pointused ui_temp run data get storage ui:temp temp.pointused

# 音鳴らして取得させる、実行者に返す
    #音を鳴らす
        execute at @s run playsound entity.ghast.scream player @s ~ ~ ~ 0.8 0.8 0
    #取得
        data modify storage ui:temp temp.skills set value []
    #スキルポイントが減る
        execute store result storage ui:temp temp.point int 1 run scoreboard players operation $point ui_temp += $pointused ui_temp
        execute store result storage ui:temp temp.pointused int 1 run scoreboard players set $pointused ui_temp 0
    #反映
        item modify entity @s container.17 ui:tmw243/core
        say スキルツリーをリセットしました

# 一時的記憶領域のリセット
    data remove storage ui:temp temp
    data remove storage ui:skill temp