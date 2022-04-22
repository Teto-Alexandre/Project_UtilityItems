# 大ダメージコモン
    #必須入力値
        #@s プレイヤーか人型
    #サブ入力値
        #無し
    #返り値
        #軽減可能な1024ダメージを受ける

# 耐えた人に進捗をあげる

# act
tag @s add tds_ui_highdamage
tag @s add tds_ui_highdamage_temp
data merge storage tds: {Damage:1024.00,EPF:-1,BypassArmor:false,BypassResistance:false}
execute at @s run function tds:attack
advancement grant @s[tag=tds_ui_highdamage_temp] only ui:main/other/resist_death