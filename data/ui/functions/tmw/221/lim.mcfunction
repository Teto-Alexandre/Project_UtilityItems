#execute if entity @a[scores={ui_tmw_id=221}] run function ui:tmw/221/lim

#誰かがid:221持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=221}] run function ui:tmw/221/main
