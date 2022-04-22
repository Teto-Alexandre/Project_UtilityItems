#execute if entity @a[scores={ui_tmw_id=220}] run function ui:tmw/220/lim

#誰かがid:220持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=220}] run function ui:tmw/220/main
