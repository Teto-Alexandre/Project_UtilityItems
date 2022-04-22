#execute if entity @a[scores={ui_tmw_id=201}] run function ui:tmw/201/lim

#誰かがid:201持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=201}] run function ui:tmw/201/main

#付属品