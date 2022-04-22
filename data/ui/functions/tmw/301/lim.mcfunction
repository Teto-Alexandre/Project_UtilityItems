#execute if entity @a[scores={ui_tmw_id=301}] run function ui:tmw/301/lim

#誰かがid:301持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=301}] run function ui:tmw/301/main

#付属品
    #レーザー
    execute as @e[tag=ui_301_1] run function ui:tmw/301/laser

    #一個目の選択をした時
    execute as @e[tag=ui_i_seld] run function ui:tmw/301/seld
    execute as @e[tag=ui_i_sel] run function ui:tmw/301/sel

    #二個目の選択をした時
    execute as @e[tag=ui_i_seld2] at @s run function ui:tmw/301/seld2