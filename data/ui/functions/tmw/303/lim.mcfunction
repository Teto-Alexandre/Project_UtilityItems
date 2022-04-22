#execute if entity @a[scores={ui_tmw_id=303}] run function ui:tmw/303/lim

#誰かがid:303持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=303}] run function ui:tmw/303/main
