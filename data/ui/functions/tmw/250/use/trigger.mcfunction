#使用時トリガー召喚

#
tellraw @s {"text":"> アクティベート","color":"gray","clickEvent":{"action":"run_command","value":"/trigger ui_trg set 1"}}
tellraw @s {"text":"> マップ設置","color":"gray","clickEvent":{"action":"run_command","value":"/trigger ui_trg set 2"}}
tellraw @s {"text":"> ランダム生成１","color":"gray","clickEvent":{"action":"run_command","value":"/trigger ui_trg set 3"}}
tellraw @s {"text":"> ランダム生成２","color":"gray","clickEvent":{"action":"run_command","value":"/trigger ui_trg set 4"}}
tellraw @s {"text":"> ストラクチャー取り込み","color":"gray","clickEvent":{"action":"run_command","value":"/trigger ui_trg set 5"}}
tellraw @s {"text":"> ストラクチャー90°回転","color":"gray","clickEvent":{"action":"run_command","value":"/trigger ui_trg set 6"}}
tellraw @s {"text":"> マップ消去しコアをキルする","color":"red","clickEvent":{"action":"run_command","value":"/trigger ui_trg set 99"}}

#
scoreboard players enable @s ui_trg