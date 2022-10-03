# ミサイルの発射を媒介する

# ターゲット可能なすべてのエンティティの位置情報を半径５m地点に集積

# idがないターゲット可能な存在全てにidを振る
execute as @e[distance=1..75,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/killeffect/106.2
execute positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker,distance=..3,sort=nearest,limit=1] add ui_temp_target2
#execute positioned ^ ^ ^4 run particle explosion ~ ~ ~ 0 0 0 0 1 force
#execute at @e[tag=ui_temp_target,sort=random,limit=1] run particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force
#say @e[tag=ui_temp_target2]

# ミサイル召喚
    execute at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ^ ^ ^1 {Tags:["tag","tmw_242"],Motion:[0.0d,0.0d,0.0d],Invisible:1b,Invulnerable:1b,Small:1b}
    #召喚した本体に固有ID設定
    execute as @e[tag=tag] at @s run function ui:misc/act/make_obj_id

    execute at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^2 {Tags:["ui_temp_anchor"]}
    execute as @e[tag=ui_temp_anchor] run function ui:template/square_shuffle
    execute as @e[tag=tag] at @s facing entity @e[tag=ui_temp_anchor] feet run function ui:template/accelerator/1
    #タイプを選択
    scoreboard players set @e[tag=tag] ui_gms 6
    scoreboard players set @e[tag=tag] ui_gt 11
    scoreboard players set @e[tag=tag] ui_bt 2
    #継速度係数 - 前のtickの速度を何倍にするかの計算に使用 100なら等倍 50なら半減 
    #            これを100以上にすると減速限界が発生 & 速度キャパが無くなる
    scoreboard players set @e[tag=tag] ui_bm 100
    #加速度係数 - 加速度の倍加係数 多いほどよく追尾する 推奨値は20
    scoreboard players set @e[tag=tag] ui_bm_temp 20
    #寿命 - 爆発までのtick数
    scoreboard players set @e[tag=tag] ui_br 30
    #ターゲットを選択
    execute as @e[tag=tag] run scoreboard players operation @s ui_gpc = @e[tag=ui_temp_target2,limit=1] ui_obj_id
    scoreboard players operation @e[tag=tag] ui_id = $id ui_temp
    scoreboard players operation @e[tag=tag] ui_team = $team ui_temp
    tag @e[tag=tag] remove tag
    kill @e[tag=ui_temp_anchor]

# SSロジック起動
    schedule function ui:tmw/242/ss/load 1t append





## ミサイルを召喚する
#scoreboard players set $success ui_temp 0
#scoreboard players set $obj_id ui_temp 0
#scoreboard players operation $obj_id ui_temp = @e[tag=ui_temp_target2] ui_obj_id
##id
##team
#scoreboard players set $particle.end ui_temp 5
#scoreboard players set $speed ui_temp 60
#scoreboard players set $speed.add ui_temp 0
#scoreboard players set $range ui_temp 80
#scoreboard players set $spread ui_temp 200
#scoreboard players set $damage ui_temp 50
#data modify storage ui:temp temp.Name set value '{"text":"マルチミサイル","color":"gold"}'
#scoreboard players set $deathmessage ui_temp 1
#execute as @e[distance=1..75,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp at @s positioned ~ ~ ~ run function ui:tmw/237/attack/missile/fire_here
#execute if score $success ui_temp matches 0 at @e[distance=..10,predicate=ui:load_unhurtable,sort=nearest,limit=1] positioned ~ ~ ~ run function ui:tmw/237/attack/missile/fire_here

# データ消し
kill @e[tag=ui_temp_marker]
data remove storage ui:temp temp.Name
