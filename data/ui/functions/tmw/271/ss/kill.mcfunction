# スキルツリーメーカーアクティベート
    tellraw @a [{"text":"JointGear","color": "gray"},{"text": "> ","color": "green"},{"text":"oID","color": "gray"},{"score":{"name": "$obj_id","objective": "ui_temp"},"color": "aqua"},{"text":"のタレットが破壊されました","color": "gray"}]
    scoreboard players remove $tmw271 ui_temp 1
    tellraw @a [{"text":"JointGear","color": "gray"},{"text": "> ","color": "green"},{"text":"世界タレット数が","color": "gray"},{"score":{"name": "$tmw271","objective": "ui_temp"},"color": "aqua"},{"text":"になりました","color": "gray"}]
    #schedule function ui:tmw/271/ss 1t replace
    scoreboard players set $changed ui_temp 1
    playsound ui.button.click player @a ~ ~ ~ 1 1 0
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.4 0

    kill @e[tag=ui_temp_obj]

    tag @e[tag=ui_temp_obj] remove ui_temp_obj