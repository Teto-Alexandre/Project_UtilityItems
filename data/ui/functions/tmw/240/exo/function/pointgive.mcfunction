# 実行者のコア読み取り
    data modify storage ui:temp temp set from entity @s Inventory[{Slot:17b}].tag.tmw.core
    execute store result score $point ui_temp run data get storage ui:temp temp.point

# ui:skill tempの書き込み
    #外部から入力
    scoreboard players set $temp ui_temp 1

# 音鳴らして取得させる、実行者に返す
    #音を鳴らす
        execute at @s run playsound block.note_block.hat player @s ~ ~ ~ 0.8 1.2 0
    #スキルポイントが減る
        execute store result storage ui:temp temp.point int 1 run scoreboard players operation $point ui_temp += $temp ui_temp
    #反映
        item modify entity @s container.17 ui:tmw240/core
        say スキルポイントを獲得しました

# 一時的記憶領域のリセット
    data remove storage ui:temp temp