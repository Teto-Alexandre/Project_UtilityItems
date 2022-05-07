# 飛び道具生成
    data modify storage ui:common temp set from entity @s SelectedItem.tag.tmw.projectile
    function ui:common/projectile2

# リピート
    scoreboard players remove $c.proj.multi ui_temp 1
    execute if score $c.proj.multi ui_temp matches 1.. run function ui:tmw/15/1.2
