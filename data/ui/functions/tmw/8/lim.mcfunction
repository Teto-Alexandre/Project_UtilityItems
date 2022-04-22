#execute if entity @a[scores={ui_tmw_id=8}] run function ui:tmw/8/lim

#誰かがid:8持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=8}] run function ui:tmw/8/main

#付属品
    #なし