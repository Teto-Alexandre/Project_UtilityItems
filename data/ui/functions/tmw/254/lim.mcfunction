#execute if entity @a[scores={ui_tmw_id=254}] run function ui:tmw/254/lim

#誰かがid:254持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=254}] run function ui:tmw/254/main

#付属品
    #レーザー
    execute as @e[tag=ui_temp] run function ui:tmw/254/laser