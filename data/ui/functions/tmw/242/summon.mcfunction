# 音
    execute at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 0.5 0

# ミサイル召喚
    execute at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ^ ^ ^1 {Tags:["tag","tmw_242"],Motion:[0.0d,0.0d,0.0d],Invisible:1b,Invulnerable:1b,Small:1b}
    #召喚した本体に固有ID設定
    execute as @e[tag=tag] at @s run function ui:misc/act/make_obj_id

    execute at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^2 {Tags:["ui_temp_anchor"]}
    execute as @e[tag=ui_temp_anchor] run function ui:template/square_shuffle
    execute as @e[tag=tag] at @s facing entity @e[tag=ui_temp_anchor] feet run function ui:template/accelerator.1
    #データ取得
    data modify storage ui:weapon temp.tmw set from entity @s SelectedItem.tag.tmw
    #タイプを選択
    execute store result score @e[tag=tag] ui_gms run data get storage ui:weapon temp.tmw.fly
    execute store result score @e[tag=tag] ui_gt run data get storage ui:weapon temp.tmw.end
    execute store result score @e[tag=tag] ui_bt run data get storage ui:weapon temp.tmw.width
    #継速度係数 - 前のtickの速度を何倍にするかの計算に使用 100なら等倍 50なら半減 
    #            これを100以上にすると減速限界が発生 & 速度キャパが無くなる
    execute store result score @e[tag=tag] ui_bm run data get storage ui:weapon temp.tmw.speed
    #加速度係数 - 加速度の倍加係数 多いほどよく追尾する 推奨値は20
    execute store result score @e[tag=tag] ui_bm_temp run data get storage ui:weapon temp.tmw.homing
    #寿命 - 爆発までのtick数
    execute store result score @e[tag=tag] ui_br run data get storage ui:weapon temp.tmw.range
    #ターゲットを選択
    execute as @e[tag=tag] run scoreboard players operation @s ui_gpc = @e[tag=ui_temp_target2,limit=1] ui_obj_id
    tag @e[tag=tag] remove tag
    data remove storage ui:weapon temp
    kill @e[tag=ui_temp_anchor]
    schedule function ui:tmw/242/ss/load 1t append

# クールタイム
    scoreboard players set @s ui_ct 20
