#execute if entity @a[scores={ui_slotable=1}] run function ui:tmw/slotable1/lim

#誰かがslotable1持ったら各自に実行する
    execute as @a[scores={ui_slotable=1}] run function ui:tmw/slotable1/main
