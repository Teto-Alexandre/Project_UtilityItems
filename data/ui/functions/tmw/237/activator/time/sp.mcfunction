# スペシャルウェポン時間経過

# 隔離
    scoreboard players operation $time ui_temp = $sptime ui_temp
    scoreboard players operation $activator ui_temp = $sptype ui_temp

# マスター
    function ui:tmw/237/activator/time/master

# 時間減少
    scoreboard players set @s ui_paint 0
    scoreboard players remove $sptime ui_temp 1
    scoreboard players set $changed ui_temp 1