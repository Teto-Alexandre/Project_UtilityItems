#execute if entity @a[scores={ui_tmw_id=203}] run function ui:tmw/203/lim

#誰かがid:203持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=203}] run function ui:tmw/203/main

#付属品