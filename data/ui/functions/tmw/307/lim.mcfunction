#execute if entity @a[scores={ui_tmw_id2=307}] run function ui:tmw/307/lim

#誰かがid:307持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=307}] run function ui:tmw/307/main
