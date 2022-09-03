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
advancement revoke @s only musicplayer:crafted_tuner
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Tuner","color":"green","italic":false}',Lore:['{"text":" "}','{"text":"Handy Music Player用のチューナー。","color":"white","italic":false}','[{"text":"右クリック","color":"green","italic":false},{"text":"でピッチを","color":"white"},{"text":"+0.1","color":"red"},{"text":"、","color":"white"}]','[{"text":"スニーク中に右クリック","color":"aqua","italic":false},{"text":"でピッチを","color":"white"},{"text":"-0.1","color":"blue"}]','{"text":"という風にピッチを変更できる。","color":"white","italic":false}','{"text":"上限は0～2(playsoundと同じ要領)","color":"white","italic":false}','{"text":"左手に持ってクリックすると便利な機能が使える。","color":"white","italic":false}','{"text":"尚、再生中の曲のピッチを変えることは","color":"gray","bold":true,"italic":false,"underlined":true}','{"text":"できない。","color":"gray","bold":true,"italic":false,"underlined":true}']},CustomModelData:2000,soundtuner:1,Unbreakable:1b} 1
clear @s structure_void 1
recipe take @a musicplayer:soundtuner_recipe
scoreboard players set @s kkun_killitem 2