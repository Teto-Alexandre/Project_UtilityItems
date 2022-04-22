#execute if entity @a[scores={ui_slotable=2}] run function ui:tmw/slotable2/lim

#誰かがslotable2持ったら各自に実行する
    execute as @a[scores={ui_slotable=2}] run function ui:tmw/slotable2/main
