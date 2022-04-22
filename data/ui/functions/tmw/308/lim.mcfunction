#execute if entity @a[scores={ui_tmw_id=308}] run function ui:tmw/308/lim

#誰かがid:308持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=308}] run function ui:tmw/308/main
