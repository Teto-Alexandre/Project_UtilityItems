#> ui:tmw/slot_root
#
# 内部スロット持ちアイテムの「装填動作」を司るエンジン
#
# 新規装填タイプ追加時のみ追記すること
#
# ーーーーーーーーーーーーーーーーーーーーー
#
# アイテムNBTタグ {tmw:{slotable:1}} が必須
#
# @public

#内部スロット持ち（コンテナ側）
    execute if entity @a[scores={ui_slotable=1}] run function ui:tmw/slotable1/lim
#被装填タイプ（弾丸側）
    execute if entity @a[scores={ui_slotable=2}] run function ui:tmw/slotable2/lim
#リボルバータイプ 複数データ収納スロット持ち（コンテナ側）
    execute if entity @a[scores={ui_slotable=3}] run function ui:tmw/slotable3/lim