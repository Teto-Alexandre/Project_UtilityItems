# 複数所持or武器競合ペナルティ

# 初回だけ見逃してあげよう
scoreboard players set $temp ui_temp 0
execute if score $lasttime ui_temp matches 0 run scoreboard players set $temp ui_temp 1
execute if score $lasttime ui_temp matches 0 store result score $lasttime ui_temp run time query gametime

# 二回目はダメ
execute if score $temp ui_temp matches 0 run function ui:tmw/237/changed/hand2

# 変更した
scoreboard players set $changed ui_temp 1