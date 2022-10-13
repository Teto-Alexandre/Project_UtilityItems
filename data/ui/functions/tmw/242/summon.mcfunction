# ミサイル召喚
    execute at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ^ ^ ^1 {Tags:["tag","tmw_242"],Motion:[0.0d,0.0d,0.0d],Invisible:1b,Invulnerable:1b,Small:1b}
    #召喚した本体に固有ID設定
    execute as @e[tag=tag] at @s run function ui:misc/act/make_obj_id

    execute at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^2 {Tags:["ui_temp_anchor"]}
    execute as @e[tag=ui_temp_anchor] run function ui:template/square_shuffle
    execute as @e[tag=tag] at @s facing entity @e[tag=ui_temp_anchor] feet run function ui:template/accelerator/1
    #タイプを選択
    scoreboard players operation @e[tag=tag] ui_gms = $fly ui_temp
    scoreboard players operation @e[tag=tag] ui_gt = $end ui_temp
    scoreboard players operation @e[tag=tag] ui_bt = $width ui_temp
    #継速度係数 - 前のtickの速度を何倍にするかの計算に使用 100なら等倍 50なら半減 
    #            これを100以上にすると減速限界が発生 & 速度キャパが無くなる
    scoreboard players operation @e[tag=tag] ui_bm = $speed ui_temp
    #加速度係数 - 加速度の倍加係数 多いほどよく追尾する 推奨値は20
    scoreboard players operation @e[tag=tag] ui_bm_temp = $homing ui_temp
    #寿命 - 爆発までのtick数
    scoreboard players operation @e[tag=tag] ui_br = $range ui_temp
    #ターゲットを選択
    execute as @e[tag=tag] run scoreboard players operation @s ui_gpc = @e[tag=ui_temp_target2,limit=1] ui_obj_id
    tag @e[tag=tag] remove tag
    kill @e[tag=ui_temp_anchor]

# リピート
    scoreboard players remove $repeat ui_temp 1
    execute if score $repeat ui_temp matches 1.. run function ui:tmw/242/summon
