#> ui:misc/act/drop
#
# アイテムドロップ時に実行、スニークキーを押しているかで分岐
#
# アイテムの検知に便利なタグを付与する
#
# 利用時はアイテムにNBTタグ {tmw:{enableQ:1}} を付けて
#
# 処理終了時にアイテムはメインハンドに移動することに注意
#
# @public

# ドロップアイテムのenableタグ照合
    tag @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] add ui_temp_item
    execute store result score $temp ui_temp run data get entity @e[tag=ui_temp_item,limit=1] Item.tag.tmw.enableQ

# ドロップアイテムにアイテムidがあるならタグ付けとメインハンド再帰を行う
    execute if score $temp ui_temp matches 1 run function ui:misc/act/drop.recall
    tag @e[tag=ui_temp_item] remove ui_temp_item