# tickの最初にやること
    function ui:misc/first

# スキル用操作検知システム

    ## 各操作の検知
        execute as @a[tag=ui_attacked_by_entity] at @s run function ui:misc/act/player_attacked_by_entity
        execute as @a[tag=ui_attack_to_entity] at @s run function ui:misc/act/player_attack_to_entity
        execute as @a run scoreboard players operation @s ui_ddn += @s ui_dda
        execute as @a run scoreboard players operation @s ui_ddn += @s ui_ddr
        execute as @a[scores={ui_ddn=1..}] at @s run tag @s add tmw_use
        execute as @a[scores={ui_use1=1..}] run function ui:misc/act/use
        execute as @a[scores={ui_di=1..},tag=!tmw_mh_calc,nbt=!{SelectedItem:{}}] at @s run function ui:misc/act/drop
        execute as @a[tag=tmw_oh_calc,nbt={Inventory:[{Slot:-106b}]},nbt=!{SelectedItem:{}}] run function ui:misc/act/offhand
        execute as @a[scores={ui_usec=1..}] at @s run function ui:misc/act/use_crossbow
        execute as @a[advancements={ui:system/shield=true}] at @s run function ui:misc/act/using_shield
        execute as @a[advancements={ui:player/using_item=true}] run function ui:misc/act/using_item
        execute as @a if score @s ui_stc matches 1.. if score @s ui_stlb matches 0..5 run function ui:misc/act/double_sneak

    ## 所持アイテムid確認+装填確認
        execute as @a store result score @s ui_tmw_id run data get entity @s SelectedItem.tag.tmw.id
        execute as @a store result score @s ui_tmw_id2 run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.id
        execute as @a store result score @s ui_slotable run data get entity @s SelectedItem.tag.tmw.slotable

    ## 破壊ツール
        execute as @a[nbt={SelectedItem:{tag:{ui_shortcuts:{Tags:["pickaxe"]}}}}] at @s run function ui:misc/act/break/pickaxe/main
        execute as @a[nbt={SelectedItem:{tag:{ui_shortcuts:{Tags:["axe"]}}}}] at @s run function ui:misc/act/break/axe/main
        execute as @a[nbt={SelectedItem:{tag:{ui_shortcuts:{Tags:["shovel"]}}}}] at @s run function ui:misc/act/break/shovel/main
        execute as @a[nbt={SelectedItem:{tag:{ui_shortcuts:{Tags:["hoe"]}}}}] at @s run function ui:misc/act/break/hoe/main

    ## 操作要件確認用
        #execute as @a[tag=tmw_use] run say 攻撃時能力発動!
        #execute as @a[tag=tmw_drop_n] run say Qキー能力発動!
        #execute as @a[tag=tmw_drop_s,scores={ui_st2=..99}] run say チャージせずにShift+Q能力発動!
        #execute as @a[tag=tmw_drop_s,scores={ui_st2=100..}] run say 5秒以上チャージしてShift+Q能力発動!
        #execute as @a[tag=tmw_oh_n] run say Fキー能力発動!
        #execute as @a[tag=tmw_oh_s,scores={ui_st2=..99}] run say チャージせずにShift+F能力発動!
        #execute as @a[tag=tmw_oh_s,scores={ui_st2=100..}] run say 5秒以上チャージしてShift+F能力発動!
        #execute as @a[scores={ui_st=0,ui_use1=1..}] run say 右クリック能力発動!
        #execute as @a[scores={ui_st=1..,ui_st2=..99,ui_use1=1..}] run say チャージせずにShift+右クリック能力発動!
        #execute as @a[scores={ui_st=1..,ui_st2=100..,ui_use1=1..}] run say 5秒以上チャージしてShift+右クリック能力発動!

# メインアクションはすべてここに置く

    ## 誰か一人でも持ってる人がいないなら起動すらしない
        scoreboard players set $tmw.act ui_world 0
        execute if entity @a[scores={ui_tmw_id=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if entity @a[scores={ui_tmw_id2=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if entity @a[scores={ui_tmw_id_old=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if entity @a[scores={ui_tmw_id_old2=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if score $tmw.act ui_world matches 1 if score $tmw.activation ui_world matches 1 run function ui:tmw/root
    
    ## ブロック破壊されたアイテムの本体
        execute if score $tick.break ui_world matches 1 run function ui:misc/act/break/major

    ## ｲｴｰｲ内部スロット持ってる～？
        execute if entity @a[scores={ui_slotable=1..}] run function ui:tmw/slot_root

    ## 起動スキルの存在しないユニークアイテム
        execute as @a[scores={ui_uset=1..}] run function ui:tmw/-1_-2
        tag @a[tag=dt] remove dt
        tag @a[nbt={Inventory:[{Slot:-106b,tag:{tmw:{id:-2}}}]}] add dt
        execute as @a[scores={ui_dr=1..}] run function ui:tmw/-3

    ## 条件別ポーション効果の置き換え
        execute as @e[tag=!ui_powered,type=arrow] run function ui:potion/arrow_set
        execute as @e[tag=ui_arrow_T,type=arrow] run function ui:potion/arrow_tick
        execute as @e[tag=!ui_groundd,type=arrow,nbt={inGround:1b}] run function ui:potion/arrow_hit
        execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] run function ui:potion/pot
        execute as @e[type=area_effect_cloud,nbt={Age:10,effects:[{id:"minecraft:luck"}]}] run function ui:potion/aec

    ## スポーンエッグ型アイテムと付随性能
        execute if entity @e[type=bat,nbt={NoAI:1b}] run function ui:misc/egg_root
        #工業ブロック全て
        execute if entity @e[tag=ui_i] run function ui:industry/lim

    ## 食べ物型アイテム
        execute as @a[scores={ui_cookie=1..}] run function ui:food/cookie

    ## ディメンション
        execute as @a[nbt={Dimension:"ui:dream"}] at @s run function ui:dimension/dream/main

    ## スキルツリー
        execute if score $skilltree ui_world matches 1 run function ui:skilltree/main
    
    ## コモンイベント
        execute as @e[tag=ui_proj_common] at @s run function ui:common/projectile/tick
        execute as @e[tag=ui_c_ref] at @s run function ui:tmw/214/refmain

    ## 死んだことを検知
        ### 死んだ直後に実行するコマンド群
            execute as @a[scores={ui_dc=1..}] run function ui:misc/dead
        ### リスポーン直後に実行するコマンド群
            execute as @e[type=player,scores={ui_dc_r=1..}] run function ui:misc/respawned

# 特殊処理

    ## 恒常能力値操作(旧HP最大値操作)

        ### クリエならHPを最大に戻す
            scoreboard players set @a[gamemode=creative] ui_hp 0

        ### 能力値いろいろいじる
            function ui:misc/permanent_effect

    ## 魔導障壁

        ### 障壁アリなら耐性を付ける
            execute as @a[scores={ui_dhp=1..}] run function ui:misc/dhp
        ### 障壁ナシになったら耐性を消す
            effect clear @a[scores={ui_dhp=..0},nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b,duration:19}]}] minecraft:resistance

# 一秒おきに実行するコマンドのカウント
    scoreboard players add $world ui_tc 1
    execute if score $world ui_tc matches 21.. run function ui:periodic/1sec

# Tickの最後にやることの予約: どんなscheduleよりも遅く実行されるようにここに配置
    schedule function ui:misc/last 1t append
