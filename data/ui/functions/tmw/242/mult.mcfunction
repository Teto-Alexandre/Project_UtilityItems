# 音
    execute at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 0.5 0

#データ取得
    data modify storage ui:weapon temp.tmw set from entity @s SelectedItem.tag.tmw

# 複数回発動
    execute store result score $repeat ui_temp run data get storage ui:weapon temp.tmw.mult
    #タイプを選択
    execute store result score $fly ui_temp run data get storage ui:weapon temp.tmw.fly
    execute store result score $end ui_temp run data get storage ui:weapon temp.tmw.end
    execute store result score $width ui_temp run data get storage ui:weapon temp.tmw.width
    #継速度係数 - 前のtickの速度を何倍にするかの計算に使用 100なら等倍 50なら半減 
    #            これを100以上にすると減速限界が発生 & 速度キャパが無くなる
    execute store result score $speed ui_temp run data get storage ui:weapon temp.tmw.speed
    #加速度係数 - 加速度の倍加係数 多いほどよく追尾する 推奨値は20
    execute store result score $homing ui_temp run data get storage ui:weapon temp.tmw.homing
    #寿命 - 爆発までのtick数
    execute store result score $range ui_temp run data get storage ui:weapon temp.tmw.range
    #斡旋
    function ui:tmw/242/summon

# データクリア
    data remove storage ui:weapon temp

# SSロジック起動
    schedule function ui:tmw/242/ss/load 1t append

# クールタイム
    scoreboard players set @s ui_ct 20
