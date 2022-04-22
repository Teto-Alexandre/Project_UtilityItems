# 初回検知
    execute if entity @s[tag=ui_14_temp] run function ui:ui/14/temp

# 時間カウント
    scoreboard players add @s[scores={ui_is=-1..}] ui_is 1

# 演出
    ## 煙 もやもや 何度か煙 もやもやが広がる 周囲に黒い柱が順番に立つ エンダー集まるやつ 爆発と大量の黒い煙 空間の穴っぽい黒い塊dust
    ## ドアバンx1,x2,ウィザーの叫び+ビーコン,エンパ入れる音x12,1.7速ポータル,招雷
    ## 展開してから一分でウィザーの死と煙吐いて消える
    ## パーティクル
    execute if score @s ui_is matches 0..59 run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0 2 force
    execute if score @s ui_is matches 0 run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 30 force
    execute if score @s ui_is matches 0 run particle dust 0 0 0 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score @s ui_is matches 25 run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 30 force
    execute if score @s ui_is matches 25 run particle dust 0 0 0 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score @s ui_is matches 35 run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 30 force
    execute if score @s ui_is matches 35 run particle dust 0 0 0 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score @s ui_is matches 60..79 run particle smoke ~ ~1 ~ 1 1 1 0 16 force
    execute if score @s ui_is matches 80.. run particle smoke ~ ~1 ~ 1.5 1.5 1.5 0 54 normal
    execute if score @s ui_is matches 80.. run particle smoke ~4 ~1 ~ 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 90.. run particle smoke ~2.83 ~1 ~2.83 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 100.. run particle smoke ~ ~1 ~4 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 110.. run particle smoke ~-2.83 ~1 ~2.83 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 120.. run particle smoke ~-4 ~1 ~ 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 130.. run particle smoke ~-2.83 ~1 ~-2.83 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 140.. run particle smoke ~ ~1 ~-4 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 150.. run particle smoke ~2.83 ~1 ~-2.83 0.1 2 0.1 0 20 normal
    execute if score @s ui_is matches 160 run particle portal ~ ~1 ~ 0 0 0 5 200 force
    execute if score @s ui_is matches 200 run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
    execute if score @s ui_is matches 210 run particle dust 0 0 0 3 ~ ~1 ~ 2 2 2 0 60 force
    execute if score @s ui_is matches 210.. run particle dust 0 0 0 2.5 ~ ~1 ~ 0.5 0.5 0.5 0 1 force
    execute if score @s ui_is matches 1400 run particle dust 0 0 0 3 ~ ~1 ~ 3 3 3 0 100 force
    ## サウンド
    ### ドアバン
    execute if score @s ui_is matches 0 run playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 25 run playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 35 run playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 1 0.6
    ### ウィザービーコン
    execute if score @s ui_is matches 60 run playsound entity.wither.death block @a ~ ~ ~ 1 0.7
    execute if score @s ui_is matches 60 run playsound block.beacon.activate block @a ~ ~ ~ 2 0.8
    ### エンパ
    execute if score @s ui_is matches 80 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.50
    execute if score @s ui_is matches 90 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.55
    execute if score @s ui_is matches 100 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.60
    execute if score @s ui_is matches 110 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.65
    execute if score @s ui_is matches 120 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.70
    execute if score @s ui_is matches 130 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.75
    execute if score @s ui_is matches 140 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.80
    execute if score @s ui_is matches 150 run playsound entity.ender_eye.death block @a ~ ~ ~ 2 0.85
    execute if score @s ui_is matches 80 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 90 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 100 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 110 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 120 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 130 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 140 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 150 run playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
    ### 1.7速ポータル
    execute if score @s ui_is matches 160 run playsound block.portal.travel block @a ~ ~ ~ 1 1.7
    ### 招雷
    execute if score @s ui_is matches 210 run playsound item.trident.thunder block @a ~ ~ ~ 1 0.6
    execute if score @s ui_is matches 210 run playsound entity.wither.spawn block @a ~ ~ ~ 1 0.7
    ### 
    execute if score @s ui_is matches 1400 run playsound entity.wither.death block @a ~ ~ ~ 1 1

# テレポートは210から
    execute if score @s ui_is matches 210.. at @a[distance=..2] run function ui:ui/14/teleport

# ほか
    execute if score @s ui_is matches 1400 run function ui:ui/14/clear