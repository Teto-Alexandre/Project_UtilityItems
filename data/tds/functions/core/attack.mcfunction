# ダメージを与える

# 引数データをコピー
    execute store result score $Damage tds_dmg run data get storage tds: Damage 100
    execute unless data storage tds: EPF run data modify storage tds: EPF set value -1
    execute unless data storage tds: DisableParticle run data modify storage tds: DisableParticle set value 0b
    execute unless data storage tds: BypassArmor run data modify storage tds: BypassArmor set value 0b
    execute unless data storage tds: BypassResistance run data modify storage tds: BypassResistance set value 0b

# 計算に必要な値を取得
    #function tds:core/get_status
    execute unless score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run data get entity @s Health 10000
    execute if score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run scoreboard players operation @s tds_hps *= $100 tds_dmg
    execute if data storage tds: {BypassArmor:0b} store result score $defensePoints tds_dmg run attribute @s generic.armor get 100
    execute if data storage tds: {BypassArmor:1b} run scoreboard players set $defensePoints tds_dmg 0
    execute if data storage tds: {BypassArmor:0b} store result score $toughness tds_dmg run attribute @s generic.armor_toughness get 100
    execute if data storage tds: {BypassArmor:1b} run scoreboard players set $toughness tds_dmg 0
    execute store result score $EPF tds_dmg run data get storage tds: EPF
    execute unless score $EPF tds_dmg matches 0.. run function tds:core/get_default_epf
    execute if data storage tds: {BypassResistance:0b} store result score $Resistance tds_dmg run data get entity @s ActiveEffects[{Id:11b}].Amplifier
    execute if data storage tds: {BypassResistance:0b} if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $Resistance tds_dmg 1
    execute if data storage tds: {BypassResistance:1b} run scoreboard players set $Resistance tds_dmg 0

# 与えるダメージの計算
    #function tds:core/calc
        #防具による軽減
    scoreboard players operation $CalcA tds_dmg = $defensePoints tds_dmg
    scoreboard players operation $CalcA tds_dmg *= $20 tds_dmg
    scoreboard players operation $CalcA tds_dmg /= $100 tds_dmg
    scoreboard players operation $CalcB.3 tds_dmg = $toughness tds_dmg
    scoreboard players operation $CalcB.3 tds_dmg *= $25 tds_dmg
    scoreboard players operation $CalcB.3 tds_dmg += $20000 tds_dmg
    scoreboard players operation $CalcB.2 tds_dmg = $Damage tds_dmg
    scoreboard players operation $CalcB.2 tds_dmg *= $10000 tds_dmg
    scoreboard players operation $CalcB.2 tds_dmg /= $CalcB.3 tds_dmg
    scoreboard players operation $CalcB tds_dmg = $defensePoints tds_dmg
    scoreboard players operation $CalcB tds_dmg -= $CalcB.2 tds_dmg
    scoreboard players operation $CalcC tds_dmg = $CalcA tds_dmg
    scoreboard players operation $CalcC tds_dmg > $CalcB tds_dmg
    scoreboard players operation $CalcC tds_dmg < $2000 tds_dmg
    scoreboard players operation $CalcC tds_dmg *= $4 tds_dmg
    scoreboard players operation $CalcD tds_dmg = $10000 tds_dmg
    scoreboard players operation $CalcD tds_dmg -= $CalcC tds_dmg
    scoreboard players operation $CalcD tds_dmg /= $10 tds_dmg
    scoreboard players operation $Damage tds_dmg *= $CalcD tds_dmg
    scoreboard players operation $Damage tds_dmg /= $10 tds_dmg
        # エンチャントによる軽減
    scoreboard players operation $EPF tds_dmg < $20 tds_dmg
    scoreboard players operation $EPF tds_dmg *= $4 tds_dmg
    scoreboard players operation $CalcE tds_dmg = $100 tds_dmg
    scoreboard players operation $CalcE tds_dmg -= $EPF tds_dmg
    scoreboard players operation $Damage tds_dmg *= $CalcE tds_dmg
    scoreboard players operation $Damage tds_dmg /= $100 tds_dmg
        # 耐性による軽減
    scoreboard players operation $Resistance tds_dmg < $5 tds_dmg
    scoreboard players operation $Resistance tds_dmg *= $2 tds_dmg
    scoreboard players operation $CalcF tds_dmg = $10 tds_dmg
    scoreboard players operation $CalcF tds_dmg -= $Resistance tds_dmg
    scoreboard players operation $Damage tds_dmg *= $CalcF tds_dmg
    scoreboard players operation $Damage tds_dmg /= $10 tds_dmg
        # リセット
    scoreboard players reset $CalcA
    scoreboard players reset $CalcB
    scoreboard players reset $CalcB.2
    scoreboard players reset $CalcB.3
    scoreboard players reset $CalcC
    scoreboard players reset $CalcD
    scoreboard players reset $CalcE
    scoreboard players reset $CalcF
    scoreboard players reset $defensePoints
    scoreboard players reset $toughness
    scoreboard players reset $EPF
    scoreboard players reset $Resistance

#===========================================================================

# Mobに適用
    #function tds:core/health_subtract

# アメジスト耐性によるダメージ減算と耐性増加
    execute as @s[tag=tds_amethyst] run function tds:core/amethyst
# 属性処理
    # 火属性ならダメージ値の２００００分の１の炎上をスタックする
    execute as @s[tag=tds_e_fire] run function tds:core/fire
    # 冷気属性ならダメージ値の２００００分の１の冷気をスタックする
    execute as @s[tag=tds_e_cold] run function tds:core/cold
# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage tds_dmg < $Health tds_dmg
# Health減算
    scoreboard players operation $Health tds_dmg -= $Damage tds_dmg
# ここで不死のトーテム起動
        execute if score $Health tds_dmg matches ..0 if entity @s[type=player,nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] run function tds:core/totem
        execute if score $Health tds_dmg matches ..0 if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying"}]}] run function tds:core/totem
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health tds_dmg /= $100 tds_dmg
        execute if entity @s[type=player] run scoreboard players operation @s tds_hps = $Health tds_dmg
        execute if entity @s[type=player] run scoreboard players set @s ui_dr 1
        
    # Mob
        execute if entity @s[type=!player] if score $Health tds_dmg matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health tds_dmg
        execute if entity @s[type=wither,nbt=!{Invul:0}] if score $Health tds_dmg matches ..0 run advancement grant @a[distance=..50] only ui:main/gun/attack
        execute if entity @s[type=!player,type=!ender_dragon] if score $Health tds_dmg matches ..0 run kill @s
        execute if entity @s[type=ender_dragon] if score $Health tds_dmg matches ..0 run data merge entity @s {DragonPhase:9}

    # プレイヤーじゃないなら見た目だけダメージ （オバフロ形式は直後にダメージを喰らうと100%バグるのが分かったので利用中止）
    # プレイヤーはエフェクトクラウドで一瞬耐性を付ける
        execute at @s[type=!player,type=!ender_dragon] if score $Health tds_dmg matches 1.. run function tds:core/damage
        execute if entity @s[type=ender_dragon,nbt=!{DragonPhase:9}] unless data entity @s {Silent:1b} run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ 5 1 0
        execute if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}

    # プレイヤーかつヘルス0なら死亡メッセージ
        ## 攻撃者特定
        execute if score $Health tds_dmg matches ..0 if score $Attacker tds_dmg matches 1.. as @a if score @s ui_id = $Attacker tds_dmg run tag @s add tds_tempa
        ## キルログ
        execute if entity @s[type=player,tag=tds_fire] if score $Health tds_dmg matches ..0 run function tds:message/d_fire
        execute if entity @s[type=player,tag=tds_cold] if score $Health tds_dmg matches ..0 run function tds:message/d_cold
        execute if entity @s[type=player,tag=tds_freeze] if score $Health tds_dmg matches ..0 run function tds:message/d_freeze
        execute if entity @s[type=player,tag=tds_ether_bullet] if score $Health tds_dmg matches ..0 run function tds:message/d_ether_bullet
        execute if entity @s[type=player,tag=tds_amethyst] if score $Health tds_dmg matches ..0 run function tds:message/d_amethyst
        execute if entity @s[type=player,tag=tds_infinity_bullet] if score $Health tds_dmg matches ..0 run function tds:message/d_infinity_bullet
        execute if entity @s[type=player,tag=tds_antimatter] if score $Health tds_dmg matches ..0 run function tds:message/d_antimatter
        execute if entity @s[type=player,tag=tds_gun_bullet] if score $Health tds_dmg matches ..0 run function tds:message/d_gun_bullet
        execute if entity @s[type=player,tag=tds_torch_bullet] if score $Health tds_dmg matches ..0 run function tds:message/d_torch_bullet
        execute if entity @s[type=player,tag=tds_bloodless] if score $Health tds_dmg matches ..0 run function tds:message/d_bloodless
        execute if entity @s[type=player,tag=tds_ui_proj] if score $Health tds_dmg matches ..0 run function tds:message/d_ui_proj
        execute if entity @s[type=player,tag=tds_ui_highdamage] if score $Health tds_dmg matches ..0 run function tds:message/d_ui_highdamage

# 演出
    function tds:core/damage_indicator

# リセット
    scoreboard players reset $Damage tds_dmg
    scoreboard players reset $Health tds_dmg
    scoreboard players reset $Attacker tds_dmg
    tag @a[tag=tds_tempa] remove tds_tempa
    tag @s remove tds_fire
    tag @s remove tds_cold
    tag @s remove tds_e_fire
    tag @s remove tds_e_cold
    tag @s remove tds_ether_bullet
    tag @s remove tds_amethyst
    tag @s remove tds_infinity_bullet
    tag @s remove tds_antimatter
    tag @s remove tds_gun_bullet
    tag @s remove tds_torch_bullet
    tag @s remove tds_bloodless
    tag @s remove tds_ui_proj
    tag @s remove tds_ui_highdamage