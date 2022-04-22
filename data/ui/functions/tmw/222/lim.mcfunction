#execute if entity @a[scores={ui_tmw_id=222}] run function ui:tmw/222/lim

#誰かがid:222持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=222}] run function ui:tmw/222/main

#付属品
    #レーザー
    execute as @e[tag=ui_temp] run function ui:tmw/222/laser