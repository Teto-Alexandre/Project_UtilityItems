#execute if entity @a[scores={ui_tmw_id=206}] run function ui:tmw/206/lim

#誰かがid:206持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=206}] run function ui:tmw/206/main

#付属品