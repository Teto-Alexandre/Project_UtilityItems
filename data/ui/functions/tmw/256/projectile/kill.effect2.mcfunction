# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team
    function ui:common/tag_temp_team/

# ヒット音
    #execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 1 1

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# ヒットパーティクル
    # サイズ別通常爆発
        execute if score @s ui_hpart matches 1 run function ui:tmw/256/projectile/killeffect/1
        execute if score @s ui_hpart matches 2 run function ui:tmw/256/projectile/killeffect/2
        execute if score @s ui_hpart matches 3 run function ui:tmw/256/projectile/killeffect/3
        execute if score @s ui_hpart matches 4 run function ui:tmw/256/projectile/killeffect/4
        execute if score @s ui_hpart matches 5 run function ui:tmw/256/projectile/killeffect/5
        execute if score @s ui_hpart matches 6 run function ui:tmw/256/projectile/killeffect/6
        execute if score @s ui_hpart matches 7 run function ui:tmw/256/projectile/killeffect/7
        execute if score @s ui_hpart matches 8 run function ui:tmw/256/projectile/killeffect/8
        execute if score @s ui_hpart matches 9 run function ui:tmw/256/projectile/killeffect/9
        execute if score @s ui_hpart matches 10 run function ui:tmw/256/projectile/killeffect/10
        execute if score @s ui_hpart matches 20 run function ui:tmw/256/projectile/killeffect/20
    # 個別
        # アメフラシ
        execute if score @s ui_hpart matches 101 run function ui:tmw/256/projectile/killeffect/101
        # マルチミサイル
        execute if score @s ui_hpart matches 102 run function ui:tmw/256/projectile/killeffect/102
        # ヘルハウンド
        execute if score @s ui_hpart matches 103 run function ui:tmw/256/projectile/killeffect/103
        # トリトル
        execute if score @s ui_hpart matches 104 run function ui:tmw/256/projectile/killeffect/104
        # ウルショ召喚
        execute if score @s ui_hpart matches 105 run function ui:tmw/256/projectile/killeffect/105
        # マルチミサイル（横）
        execute if score @s ui_hpart matches 106 run function ui:tmw/256/projectile/killeffect/106
        # ナイスダマ
        execute if score @s ui_hpart matches 107..110 run function ui:tmw/256/projectile/killeffect/107.110
        # ミサイル投下
        execute if score @s ui_hpart matches 111 run function ui:tmw/256/projectile/killeffect/111
        # 燃える
        execute if score @s ui_hpart matches 112 run function ui:tmw/256/projectile/killeffect/112
    # スペシャル溜まらない爆発
        execute if score @s ui_hpart matches 203 run function ui:tmw/256/projectile/killeffect/3
        execute if score @s ui_hpart matches 204 run function ui:tmw/256/projectile/killeffect/4
        execute if score @s ui_hpart matches 205 run function ui:tmw/256/projectile/killeffect/5
        execute if score @s ui_hpart matches 206 run function ui:tmw/256/projectile/killeffect/6
        execute if score @s ui_hpart matches 207 run function ui:tmw/256/projectile/killeffect/7
        execute if score @s ui_hpart matches 208 run function ui:tmw/256/projectile/killeffect/8
        execute if score @s ui_hpart matches 209 run function ui:tmw/256/projectile/killeffect/9
        execute if score @s ui_hpart matches 210 run function ui:tmw/256/projectile/killeffect/10
        execute if score @s ui_hpart matches 220 run function ui:tmw/256/projectile/killeffect/20
    # スペシャル溜まらない爆発
        execute if score @s ui_hpart matches 301..400 run data merge storage ui:common {input:{Mode:"create",Var:1}}
        execute if score @s ui_hpart matches 301..400 run scoreboard players operation $temp ui_temp = @s ui_hpart
        execute if score @s ui_hpart matches 301..400 store result storage ui:common input.Var int 1 run scoreboard players remove $temp ui_temp 300
        execute if score @s ui_hpart matches 301..400 run function ui:common/particle

# その他
    execute if score @s ui_hpart matches ..200 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# キル
    kill @s

# 一時タグ削除
    tag @s remove ui_temp_this
