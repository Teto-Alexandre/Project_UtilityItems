## 壁にぶち当たるまでレーザーを飛ばす
## 当たったらその場所にリスポーン、当たらないまま遠くまで光線が伸びたら初期リスにリスポーンする

#
scoreboard players set $count ui_temp 100

#
function ui:tmw/501/19/functions/respawn/ray