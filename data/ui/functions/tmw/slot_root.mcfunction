#内部エネルギースロット系とエネルギー貯蔵系の装填処理もろもろ独立部分

#内部エネルギースロット持ち
    execute if entity @a[scores={ui_slotable=1}] run function ui:tmw/slotable1/lim
#エネルギー貯蔵器
    execute if entity @a[scores={ui_slotable=2}] run function ui:tmw/slotable2/lim
#リボルバータイプ 複数データ収納スロット持ち
    execute if entity @a[scores={ui_slotable=3}] run function ui:tmw/slotable3/lim