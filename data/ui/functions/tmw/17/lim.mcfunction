#execute if entity @a[scores={ui_tmw_id=17}] run function ui:tmw/17/lim

#誰かがid:17持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=17}] run function ui:tmw/17/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/17/ss_constant 1t append
    schedule function ui:tmw/17/ss_unhold 2t replace