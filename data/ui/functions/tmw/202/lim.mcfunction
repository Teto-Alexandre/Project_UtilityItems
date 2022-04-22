#execute if entity @a[scores={ui_tmw_id=202}] run function ui:tmw/202/lim

#誰かがid:202持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=202}] run function ui:tmw/202/main

#付属品