#execute if entity @a[scores={ui_tmw_id=204}] run function ui:tmw/204/lim

#誰かがid:204持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=204}] run function ui:tmw/204/main

#付属品