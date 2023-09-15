# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team
    function ui:common/tag_temp_team

# ヒットパーティクル
    execute unless score @s ui_hpart matches -1..0 run function ui:tmw/255/projectile/killeffect/id

# キル
    kill @s

# 一時タグ削除
    tag @s remove ui_temp_this
