# 他のスキルツリーを消す
    execute at @e[tag=tmw_259_node] run fill ~-1 ~5 ~-1 ~1 ~5 ~1 air replace stone_button
    execute at @e[tag=tmw_259_node] run fill ~ ~3 ~ ~ ~5 ~ air
    kill @e[tag=tmw_259]

# スキルツリーメーカーアクティベート
    scoreboard players set $obj_id ui_temp 0
    function ui:tmw/259/root/round_place
    schedule function ui:tmw/259/ss 1t replace
    scoreboard players set $changed ui_temp 1
    playsound ui.button.click player @a ~ ~ ~ 1 1 0
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.4 0
