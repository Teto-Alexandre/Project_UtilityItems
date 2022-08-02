# エンダーコアアクティベート
    data merge storage ui:common {input:{Mode:"dropall"}}
    function ui:common/ender
    item replace entity @s enderchest.0 from entity @s weapon.mainhand
    item replace entity @s weapon.mainhand with air
    schedule function ui:tmw/243/ss 3t replace
    scoreboard players set $changed ui_temp 1
    playsound ui.button.click player @a ~ ~ ~ 1 1 0
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.4 0
