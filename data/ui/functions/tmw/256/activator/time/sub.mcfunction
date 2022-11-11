# サブウェポン時間経過

# 隔離
    scoreboard players operation $time ui_temp = $subtime ui_temp
    scoreboard players operation $activator ui_temp = $subtype ui_temp

# マスター
    function ui:tmw/256/activator/time/master

# 時間減少
    scoreboard players remove $subtime ui_temp 1
    scoreboard players set $changed ui_temp 1