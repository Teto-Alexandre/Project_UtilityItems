# ミサイル召喚
    summon armor_stand ~ ~ ~ {Tags:["tag","tmw_242_f"],Motion:[0.01d,0.01d,0.01d],Invisible:1b,Invulnerable:1b,Small:1b,PortalCooldown:60}
    #召喚した本体に固有ID設定
    execute as @e[tag=tag] at @s run function ui:misc/act/make_obj_id

    summon marker ~ ~ ~ {Tags:["ui_temp_anchor"]}
    execute as @e[tag=ui_temp_anchor] run function ui:template/square_shuffle
    execute as @e[tag=tag] at @s facing entity @e[tag=ui_temp_anchor] feet run function ui:template/accelerator.1
    #タイプを選択
    scoreboard players set @e[tag=tag] ui_gms 2
    #ターゲットを選択
    execute as @e[tag=tag] at @s run scoreboard players operation @s ui_gpc = @e[tag=ui_temp_target2,limit=1] ui_obj_id
    #爆発時間を設定
    scoreboard players set $mod ui_calc1 8
    function ui:common/rand
    scoreboard players add $rand ui_calc1 8
    scoreboard players operation @e[tag=tag] ui_is2 = $rand ui_calc1

    tag @e[tag=tag] remove tag
    kill @e[tag=ui_temp_anchor]
    schedule function ui:tmw/242/ss/fragment 1t append