# 弾切れ時

#
    execute store result score $hold_item_type ui_temp run data get storage ui:gun temp.HoldItemType

# 人参棒に置き換える
    execute if score $hand ui_temp matches 0 run data merge storage ui:common {input:{Mode:"get",Num:-1}}
    execute if score $hand ui_temp matches 1 run data merge storage ui:common {input:{Mode:"get",Num:-106}}
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    execute if score $item ui_temp matches 0 run data merge storage ui:common {input:{Mode:"id",Text:"minecraft:carrot_on_a_stick"}}
    execute if score $item ui_temp matches 1 if score $hold_item_type ui_temp matches 0 run data merge storage ui:common {input:{Mode:"id",Text:"minecraft:crossbow"}}
    execute if score $item ui_temp matches 1 if score $hold_item_type ui_temp matches 1 run data merge storage ui:common {input:{Mode:"id",Text:"minecraft:carrot_on_a_stick"}}
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    execute if score $hand ui_temp matches 0 run data merge storage ui:common {input:{Mode:"replace",Num:-1}}
    execute if score $hand ui_temp matches 1 run data merge storage ui:common {input:{Mode:"replace",Num:-106}}
    function ui:common/item

# 状態値に代入
    scoreboard players operation $noidle ui_temp = $item ui_temp

#
    playsound block.redstone_torch.burnout player @s ~ ~ ~ 0.8 1.8

#
    #execute if score $hand ui_temp matches 0 run say メインハンド
    #execute if score $hand ui_temp matches 1 run say オフハンド
    #execute if score $item ui_temp matches 0 run say 人参棒に変換
    #execute if score $item ui_temp matches 1 run say クロスボウに変換