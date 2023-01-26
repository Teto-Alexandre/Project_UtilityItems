#
execute store result score $ilv ui_temp run scoreboard players get @s ui_tmw501_19_stat_ilv

#
execute store result score $mov ui_temp run scoreboard players get @s ui_tmw501_19_stat_mov
execute store result score $en ui_temp run scoreboard players get @s ui_tmw501_19_now_en
execute store result score $s1 ui_temp run scoreboard players get @s ui_tmw501_19_now_s1
execute store result score $s2 ui_temp run scoreboard players get @s ui_tmw501_19_now_s2

#
execute store result score $rot ui_temp run data get entity @s Rotation[0] 0.1
scoreboard players remove $rot ui_temp 8
scoreboard players operation $rot ui_temp %= #36 ui_num

#
function ui:template/get_motion

#
function ui:template/text_board/open
scoreboard players set $count ui_temp 18
function ui:tmw/501/19/battle/hud/id/3/actionbar
function ui:template/text_board/bro_actionbar
function ui:template/text_board/close

# タイトル
function ui:template/text_board/open
scoreboard players set $count ui_temp 0
function ui:tmw/501/19/battle/hud/id/3/title
function ui:template/text_board/bro_title
function ui:template/text_board/close

##ポラリス-ヘッド-サジタリウス
##高性能カメラ(2) 情報強度4
##4:%表示、静止時10mレーダー(いるかいないか)
##5:数値表示、静止時30mレーダー(5m刻み)
##6:静止時2次元レーダー(50m、一番近い対象を区別)、50mレーダー(5m刻み)
##7:静止時3次元レーダー(50m、一番近い対象を区別))、100mレーダー(5m刻み)
##8:静止時3次元レーダー(100m、一番近い対象を区別))、300mレーダー(5m刻み) 

##ポラリス-ヘッド-タウラス
##近距離用カメラ(1) 情報強度2
##2:low表示、常時5mレーダー(いるかいないか)
##3:%表示、常時時15mレーダー(5m刻み)
##4数値表示、常時2次元レーダー(10m、一番近い対象を区別)、常時時15mレーダー(1m刻み)
##5:敵HP表示、常時2次元レーダー(20m、一番近い対象を区別)、常時時30mレーダー(1m刻み)
##6:常時2次元レーダー(50m、一番近い対象を区別)、常時時50mレーダー(1m刻み) 

##ポラリス-ヘッド-アリエス
##高性能カメラ(2) 情報強度3
##3:%表示、静止時2次元レーダー(15m、一番近い対象を区別)
##4:常時2次元レーダー(10m、一番近い対象を区別)、静止時2次元レーダー(15m、一番近い対象を区別)
##5:数値表示、常時2次元レーダー(10m、一番近い対象を区別)、静止時2次元レーダー(30m、一番近い対象を区別)
##6:常時2次元レーダー(15m、一番近い対象を区別)、静止時2次元レーダー(50m、一番近い対象を区別)
##7:常時2次元レーダー(30m、一番近い対象を区別)、静止時2次元レーダー(100m、一番近い対象を区別) 
