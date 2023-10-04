#

# 白いひし形
execute if score @s ui_is2 matches 1 run function ui:common/particle/ss/upper/32/1
# レーザーテスト
execute if score @s ui_is2 matches 2 run function ui:common/particle/ss/upper/32/2/
# 斬嵐
execute if score @s ui_is2 matches 3 run function ui:common/particle/ss/upper/32/3/

execute if score $is ui_temp matches 20.. run kill @s