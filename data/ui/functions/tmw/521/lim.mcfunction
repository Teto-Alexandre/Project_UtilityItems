#execute if entity @a[scores={ui_tmw_id=521}] run function ui:tmw/521/lim

#誰かがid:521持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=521}] run function ui:tmw/521/main
