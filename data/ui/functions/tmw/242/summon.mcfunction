# 音
    execute at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 0.5 0

# ミサイル召喚
    execute at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ^ ^ ^1 {Tags:["tag","tmw_242"],Motion:[0.01d,1.0d,0.01d],Invisible:1b,Invulnerable:1b,Small:1b,PortalCooldown:60}
    #召喚した本体に固有ID設定
    execute as @e[tag=tag] at @s run function ui:misc/act/make_obj_id

    execute at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^2 {Tags:["ui_temp_anchor"]}
    execute as @e[tag=ui_temp_anchor] run function ui:template/square_shuffle
    execute as @e[tag=tag] at @s facing entity @e[tag=ui_temp_anchor] feet run function ui:template/accelerator.1
    #タイプを選択
    execute store result score @e[tag=tag] ui_gms run data get entity @s SelectedItem.tag.tmw.type
    #ターゲットを選択
    execute as @e[tag=tag] at @s run scoreboard players operation @s ui_gpc = @e[tag=ui_temp_target2,limit=1] ui_obj_id
    tag @e[tag=tag] remove tag
    kill @e[tag=ui_temp_anchor]
    schedule function ui:tmw/242/ss/load 1t append

# クールタイム
    scoreboard players set @s ui_ct 20
