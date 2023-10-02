#

# 白いひし形
execute if score @s ui_is2 matches 1 run function ui:common/particle/ss/upper/32/1
# レーザーテスト
execute if score @s ui_is2 matches 2 run function ui:common/particle/ss/upper/32/2/

execute if score $is ui_temp matches 1.. run kill @s