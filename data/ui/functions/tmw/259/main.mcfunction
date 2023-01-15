# スキルツリーメーカー
    scoreboard players set $changed ui_temp 0
    execute as @s[tag=tmw_use_n] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-0.5 ~ diamond_block run function ui:tmw/259/diamond_block
    execute as @s[tag=tmw_use_n] if score $changed ui_temp matches 0 at @s run playsound block.dispenser.fail player @a ~ ~ ~ 1 1 0

#
    execute as @s[scores={ui_st2=20}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 2 0
    execute as @s[scores={ui_st2=22}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 2 0
    execute as @s[scores={ui_st2=20}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "WARNING","color": "red"},{"text": "]","color": "gray"},{"text": "> ","color": "red"},{"text": "スニークを3秒継続するとツリー消去受付が開始されます","color": "white"}]
    execute as @s[scores={ui_st2=20}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "WARNING","color": "red"},{"text": "]","color": "gray"},{"text": "> ","color": "red"},{"text": "全てのスキルツリーを削除する事に問題がない場合は、","color": "white"}]
    execute as @s[scores={ui_st2=20}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "WARNING","color": "red"},{"text": "]","color": "gray"},{"text": "> ","color": "red"},{"text": "ダイヤモンドブロックの上で右クリックしてください","color": "white"}]
    
    execute as @s[scores={ui_st2=60}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5 0
    execute as @s[scores={ui_st2=60}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "WARNING","color": "red"},{"text": "]","color": "gray"},{"text": "> ","color": "red"},{"text": "スキルツリー消去受付が開始されました","color": "gold"}]
    execute as @s[tag=tmw_use_s,scores={ui_st2=60..}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-0.5 ~ diamond_block run function ui:tmw/259/del_all
