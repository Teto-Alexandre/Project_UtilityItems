# 直進弾コモン
    #必須入力値
        #$c.proj.spread 拡散度(0.001m)
        #$c.proj.speed 速度(0.5m/s)
        #$c.proj.range 射程(0.5m)
        #@s プレイヤーか人型
    #サブ入力値
        #$c.proj.particle 軌跡パーティクル
        #$c.proj.break 破壊力
        #$c.proj.autohit 命中ダメージコモンを利用するか
            #$c.proj.particle2 終端パーティクル
            #$c.proj.kb ノックバックの強さ
            #$c.proj.damagetype 攻撃の属性
        #$c.proj.damage 攻撃力(0.5heart)
        #$c.proj.damage.s 攻撃力分散(0.5heart)
        #$c.proj.soul_damage 魂攻撃力(%)
        #$c.proj.soul_damage.s 魂攻撃力分散(%)
    #タグ：ui_proj_common付きプロジェクタイルを返す

# summon
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","ui_proj_common","ui_proj_common_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute if score $c.proj.spread ui_temp matches 1.. run function ui:common/projectile/square_shuffle
execute as @e[tag=ui_proj_common_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_bm = $c.proj.speed ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_br = $c.proj.range ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_bpart = $c.proj.particle ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_autohit = $c.proj.autohit ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_hpart = $c.proj.particle2 ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_kb = $c.proj.kb ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_bdt = $c.proj.damagetype ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_dmg = $c.proj.damage ui_temp
#scoreboard players set $mod ui_calc1 1
#scoreboard players operation $mod ui_calc1 += $c.proj.damage.s ui_temp
#function ui:common/rand
#scoreboard players operation @e[tag=ui_proj_common_unpower] ui_dmg += $rand ui_calc1
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_gpc = $c.proj.break ui_temp
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_proj_common_unpower] ui_team = @s ui_team
data modify entity @e[tag=ui_proj_common_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
tag @e[tag=ui_proj_common_unpower] remove ui_proj_common_unpower
kill @e[tag=ui_marker]

# temp
scoreboard players reset $c.proj.spread ui_temp
scoreboard players reset $c.proj.speed ui_temp
scoreboard players reset $c.proj.range ui_temp
scoreboard players reset $c.proj.particle ui_temp
scoreboard players reset $c.proj.autohit ui_temp
scoreboard players reset $c.proj.particle2 ui_temp
scoreboard players reset $c.proj.kb ui_temp
scoreboard players reset $c.proj.damagetype ui_temp
scoreboard players reset $c.proj.break ui_temp
scoreboard players reset $c.proj.damage ui_temp
scoreboard players reset $c.proj.soul_damage ui_temp