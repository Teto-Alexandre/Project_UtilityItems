# 秒数制限取得
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burstmax/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burstmax/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burstmax/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burstmax/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burstmax/sub

# 離すと書き込み
    execute if score $ishold ui_temp matches 2.. as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/burst8.2

# タメ
    execute if score $ishold ui_temp matches 1.. if score @s ui_st2 matches 0 run function ui:tmw/237/burst/hold