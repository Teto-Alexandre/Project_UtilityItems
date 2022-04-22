#execute if entity @a[scores={ui_tmw_id=501}] run function ui:tmw/501/lim

#誰かがid:501持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=501}] run function ui:tmw/501/main
