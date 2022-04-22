#execute if entity @a[scores={ui_tmw_id=9}] run function ui:tmw/9/lim

#誰かがid:9持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=9}] run function ui:tmw/9/main

#付属品
    # tmw_9_1:居合ターゲットレーザー
    # tmw_9_2:居合ターゲットレーザー命中者
    # tmw_9_3:居合orテレポ本体判定
        #SSロジック始動
        schedule function ui:tmw/9/ss1 1t append
    # tmw_9_4:火砕砲撃
        #SSロジック始動
        schedule function ui:tmw/9/ss2 1t append
    # tmw_9_5:トラクターレーザー
        execute as @e[tag=tmw_9_5] run function ui:tmw/9/9_5
    # tmw_9_6:電磁砲
        execute as @e[tag=tmw_9_6] at @s run function ui:tmw/9/9_6
    # tmw_9_7:閃光(上位性能)
        execute as @e[tag=tmw_9_7] at @s run function ui:tmw/9/9_7
    # tmw_9_8:波動(代償はHP)
        execute as @e[tag=tmw_9_8] at @s run function ui:tmw/9/9_8/active
    # tmw_9_9:居合斬撃