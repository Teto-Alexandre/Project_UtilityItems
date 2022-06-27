# スキルツリーアクティベート
    execute as @s[tag=tmw_use_n] run item replace entity @s container.17 from entity @s weapon.mainhand
    execute as @s[tag=tmw_use_n] run item modify entity @s container.17 ui:tmw240/item_activate
    execute as @s[tag=tmw_use_n] run item replace entity @s weapon.mainhand with air
    execute as @s[tag=tmw_use_n] run schedule function ui:tmw/240/ss 1t append
