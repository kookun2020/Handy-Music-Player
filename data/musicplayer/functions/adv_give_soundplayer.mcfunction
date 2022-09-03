#   Copyright © 2022 kookun

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
##クラフト時の動作
advancement revoke @s only musicplayer:crafted_soundplayer
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Player","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"レコード","color":"green","italic":false},{"text":"を入れると音楽がなる機械。","color":"white"}]','{"text":"顔のようなものがうっすら見えるが","color":"white","italic":false}','{"text":"多分気のせい...だと思う。","color":"white","italic":false}','[{"text":"又、通常では入らない","color":"white","italic":false},{"text":"特殊レコード","color":"light_purple","underlined":true},{"text":"も"}]','{"text":"入れることができる。","color":"white","italic":false}','{"text":" "}','{"text":"レコードの入れ方:","color":"gold","italic":false}','{"text":"これを利き手、入れたいものを","color":"white","italic":false}','{"text":"オフハンドにもって右クリック。","color":"white","italic":false}','{"text":"レコードが入った状態で右クリックすると","color":"white","italic":false}','{"text":"中のレコードを取り出せる。","color":"white","italic":false}','{"text":"気が向いたら随時機能更新するかも","color":"dark_gray","italic":false,"strikethrough":true}']},CustomModelData:2020,musicplay:1,Unbreakable:1b} 1
clear @s structure_void 1
recipe take @a musicplayer:soundplayer_recipe
scoreboard players set @s kkun_killitem 2