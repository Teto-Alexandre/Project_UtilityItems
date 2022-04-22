#execute if entity @a[scores={ui_tmw_id=234}] run function ui:tmw/234/lim

#誰かがid:234持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=234}] run function ui:tmw/234/main

#付属品