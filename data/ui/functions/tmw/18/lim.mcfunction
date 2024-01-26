#execute if entity @a[scores={ui_tmw_id=18}] run function ui:tmw/18/lim

#誰かがid:17持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=18}] run function ui:tmw/18/main
