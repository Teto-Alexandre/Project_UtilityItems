# 実行者のコア読み取り
    data modify storage ui:temp temp set from entity @s Inventory[{Slot:17b}].tag.tmw.core

# 既に同じ数値を持っていたら弾く
    #コアのスキルリストと獲得スキルのidを隔離
        data modify storage ui:temp2 temp set from storage ui:temp temp.skills
    #コアのスキルごとに照合
        function ui:common/skilltree/function/liner_search
    #コアのスキルリストを削除
        data remove storage ui:temp2 temp

# 一時的記憶領域のリセット
    data remove storage ui:temp temp