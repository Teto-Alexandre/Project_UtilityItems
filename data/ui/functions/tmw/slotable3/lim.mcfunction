#execute if entity @a[scores={ui_slotable=3}] run function ui:tmw/slotable3/lim

#誰かがslotable3持ったら各自に実行する
    execute as @a[scores={ui_slotable=3}] run function ui:tmw/slotable3/main
