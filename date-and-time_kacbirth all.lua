--orig https://obsproject.com/forum/resources/date-and-time.644/
-- 令和テキトー表示とUTCグローバル時間を出せるよう改造

--出力例
--サマータイム有り＋時差情報 先頭に!をつけるとUTC時間になる
--%Y/%m/%d(%Vw)%X(UTC%z%DST)

--全部出し
--%UTC
--%c%DST
--%x%X%z
--%s
--%ISO
--%ISOZ
--%VR%m月%d日(%Vw)%H時%M分%S秒

--複数のタイムゾーン
--%JST
--UTC+?? %UTC
--UTC協定時間%ISOZ
--ISO8601 %ISO

--AC音ゲーの情報を出す
--%i
--%J%is
--%K%it
--%E%ie


--個別誕生日
--%in
--%ib%ic
--%ia%il

--独自拡張2020/04/17現在 
--%EM	AC音ゲーお誕生日何日以内のやつ
--%E	デバッグ文字1 サービス終了日
--%J	デバッグ文字2 サービス開始日
--%K	デバッグ文字3 今年の周年日
--%i	AC音ゲーゲームの名前,フリーズ防止
--%is	AC音ゲーの記念日の時間からの経過時間
--%it	AC音ゲーの記念日までの時間
--%ie	AC音ゲーのサービス終了した時間からの経過時間(データがないものは表示なし)

--%in	AC音ゲー個別
--%ib	AC音ゲー個別誕生日
--%ic	AC音ゲー個別誕生日までの時間
--%ia	AC音ゲー今年の誕生日
--%il	AC音ゲー今年の誕生日までの時間

--%UTC  worldtime set UTCsetting,	UTC標準時からUI設定の時間を表示,サマータイムは非対応
--%JST  ISO8601表示日本時間
--%ISO  ISO8601表示ローカル時間
--%ISOZ ISO8601表示UTC時間
--%Z	サマーなしタイムゾーン時差情報,元はタイムゾーンストリングだが文字化けで使えないので（）
--%ZZ   timezone,HH:mm  timezoneサマーなしタイムゾーン時差情報  
--%zz   サマータイム有り＋時差情報 HH:mm
--%DST  夏時間かどうか出力する 引数"J"で夏時間
--%s    unixtime,フリーズ防止
--%VR--%Vr--%VH--%Vh--%VS--%Vs--%VT--%Vt 日本の和暦、開始年しかちぇくしてないのでてきとー


--OBSlua標準出力
--画像でまとめてみた　https://imgur.com/a/MYtwxg1

--http://noriko3.blog42.fc2.com/blog-entry-128.html?sp
--%% the character `%´ %の文字だけをだしたいとき 
--%a ロケールの省略形の曜日名 (Sun..Sat) 
--%A ロケールの完全表記の曜日名、可変長 (Sunday..Saturday) 
--%b ロケールの省略形の月名 (Jan..Dec) 
--%B ロケールの完全表記の月名、可変長 (January..December) 
--%c ロケールの日付と時刻 (Sat Nov 4 12:02:33 EST
--%d 月内通算日数 (01..31) 
--%D 日付 (mm/dd/yy) 
--%H hour, using a 24-hour clock (23) [00-23] 時間 
--%h %b と同じ 
--%I hour, using a 12-hour clock (11) [01-12] 時間ampm %pとセット 
--%j 年内通算日数 (001..366) 
--%k 時 (0..23) 
--%l 時 (1..12) 
--%M minute (48) [00-59] 分 
--%m month (09) [01-12] 月 
--%n 改行 
--%p AM あるいは PM のロケール 
--%r 時刻、12 時間 (hh:mm:ss [AP]M) 
--%S second (10) [00-61] 秒 
--%s 1970-01-01 0:00:00 UTC からの秒数 (標準外の拡張) 
--%T 時刻、24 時間 (hh:mm:ss) 
--%t 水平タブ 
--%U 日曜日を週の最初の日とした年内通算週 (00..53) 
--%V 週番号 
--%w weekday (3) [0-6 = Sunday-Saturday] 曜日の番号 
--%w 週のうちの曜日 (0..6) (0 が日曜日) 
--%W 月曜日を週の最初の日とした年内通算週 (00..53) 
--%x date (e.g., 09/16/98) 年月日 
--%X time (e.g., 23:48:10) 時分秒 
--%X ロケールによる時刻の表現 (%H:%M:%S) 
--%x ロケールの日付表現 (mm/dd/yy) 
--%Y full year (1998) 年 
--%y two-digit year (98) [00-99] ２桁の年 
--%y 年の最後の 2 つの数字 (00..99) 
--%Y 年 (1970...) 
--%Z タイムゾーン (例 EDT)、あるいはタイムゾーンが決定できないならば無し 
--%z timezone,osdateのサマータイム有り 

--クラッシュ使用不可か別の文字処理に使う
--%E　デバッグ文字1
--%J　デバッグ文字2
--%K　デバッグ文字3
--%L
--%N
--%O
--%P
--%Q
--%f
--%i AC音ゲーの時間
--%k 
--%l
--%o
--%q
--%s　　unixtimeに使用
--%v

--%%A:%A%n%%B:%B%n%%C:%C%n%%D:%D%n%%E:%E%n%%F:%F%n%%G:%G%n
--%%H:%H%n%%I:%I%n%%J:%J%n%%K:%K%n%%L:%L%n%%M:%M%n%%N:%N%n
--%%O:%O%n%%P:%P%n%%Q:%Q%n%%R:%R%n%%S:%S%n%%T:%T%n%%U:%U%n
--%%V:%V%n%%W:%W%n%%X:%X%n%%Y:%Y%n%%Z:%Z%n%%n:%n
--
--%%a:%a%n%%b:%b%n%%c:%c%n%%d:%d%n%%e:%e%n%%f:%f%n%%g:%g%n
--%%h:%h%n%%i:%i%n%%j:%j%n%%k:%k%n%%l:%l%n%%m:%m 
--%%o:%o%n%%p:%p%n%%q:%q%n%%r:%r%n%%s:%s%n%%t:%t%n%%u:%u
--%%v:%v%n%%w:%w%n%%x:%x%n%%y:%y%n%%z:%z

--hour	15 os.date("*t").hash　os.dateがもつ構造体
--min	21 
--wday	1
--day	28
--month	6
--year	2009
--sec	48
--yday	179






obs           = obslua
source_name   = ""

last_text     = ""
format_string = ""
activated     = false
utc           = 0
ima           = 0
imass         = 0
useidol		  = 1
mln        	  = 1
cgn           = 1
smn        	  = 1
scn           = 1
dsn           = 1
daylim 		  =7
daystring     =""
debugtxt1	  = ""
debugtxt2	  = ""
debugtxt3	  = ""
daychange     = ""


--kacてきとーｄｂ
imashead ={"ゲーム名","稼働","国備考","終わり"}
imas = {{"beatmania","1997-12-10T00:00:00+09:00","",""},{"beatmania 2ndMIX","1998-03-18T00:00:00+09:00","",""},{"beatmania 3rdMIX","1998-09-28T00:00:00+09:00","",""},{"beatmania 4thMIX -the beat goes on-","1999-04-26T00:00:00+09:00","",""},{"beatmania 5thMIX -Time to get down-","1999-09-22T00:00:00+09:00","",""},{"beatmania 6thMIX -THE UK UNDERGROUND MUSIC-","2001-07-11T00:00:00+09:00","",""},{"beatmania 7thMIX -keepin' evolution-","2002-01-31T00:00:00+09:00","",""},{"beatmania ClubMIX","2000-03-28T00:00:00+09:00","",""},{"beatmania complete MIX","1999-01-19T00:00:00+09:00","",""},{"beatmania complete MIX 2","2000-01-27T00:00:00+09:00","",""},{"beatmania CORE REMIX","2000-11-28T00:00:00+09:00","",""},{"beatmania featuring DREAMS COME TRUE","2000-05-31T00:00:00+09:00","",""},{"beatmania IIDX","1999-02-26T00:00:00+09:00","",""},{"beatmania IIDX 10th style","2004-02-18T00:00:00+09:00","",""},{"beatmania IIDX 11 IIDX RED","2004-10-28T00:00:00+09:00","",""},{"beatmania IIDX 12 HAPPY SKY","2005-07-13T00:00:00+09:00","",""},{"beatmania IIDX 13 DistorteD","2006-03-15T00:00:00+09:00","",""},{"beatmania IIDX 14 GOLD","2007-02-21T00:00:00+09:00","",""},{"beatmania IIDX 15 DJ TROOPERS","2007-12-19T00:00:00+09:00","",""},{"beatmania IIDX 16 EMPRESS","2008-11-19T00:00:00+09:00","",""},{"beatmania IIDX 17 SIRIUS","2009-10-21T00:00:00+09:00","",""},{"beatmania IIDX 18 Resort Anthem","2010-09-15T00:00:00+09:00","",""},{"beatmania IIDX 19 Lincle","2011-09-15T00:00:00+09:00","",""},{"beatmania IIDX 20 tricoro","2012-09-19T00:00:00+09:00","",""},{"beatmania IIDX 21 SPADA","2013-11-13T00:00:00+09:00","",""},{"beatmania IIDX 22 PENDUAL","2014-09-17T00:00:00+09:00","",""},{"beatmania IIDX 23 copula ","2015-11-11T00:00:00+09:00","",""},{"beatmania IIDX 24 SINOBUZ","2016-10-26T00:00:00+09:00","",""},{"beatmania IIDX 25 CANNON BALLERS","2017-12-21T00:00:00+09:00","",""},{"beatmania IIDX 26 Rootage","2018-11-07T00:00:00+09:00","",""},{"beatmania IIDX 27 HEROIC VERSE","2019-10-16T00:00:00+09:00","",""},{"beatmania IIDX 28 BISTROVER","2020-10-28T00:00:00+09:00","",""},{"beatmania IIDX 29 CastHour","2021-10-13T00:00:00+09:00","",""},{"beatmania IIDX 2nd style","1999-09-30T00:00:00+09:00","",""},{"beatmania IIDX 30 RESIDENT","2022-10-19T00:00:00+09:00","",""},{"beatmania IIDX 31 EPOLIS","2023-10-18T00:00:00+09:00","",""},{"beatmania IIDX 32 Pinky Crush","2024-10-09T00:00:00+09:00","",""},{"beatmania IIDX 3rd style","2000-02-25T00:00:00+09:00","",""},{"beatmania IIDX 4th style","2000-09-28T00:00:00+09:00","",""},{"beatmania IIDX 5th style","2001-03-27T00:00:00+09:00","",""},{"beatmania IIDX 6th style","2001-09-28T00:00:00+09:00","",""},{"beatmania IIDX 7th style","2002-03-27T00:00:00+09:00","",""},{"beatmania IIDX 8th style","2002-09-27T00:00:00+09:00","",""},{"beatmania IIDX 9th style","2003-06-25T00:00:00+09:00","",""},{"beatmania IIDX substream","1999-07-27T00:00:00+09:00","",""},{"beatmania III","2000-03-08T00:00:00+09:00","",""},{"beatmania III APPEND 6thMIX","2001-07-11T00:00:00+09:00","",""},{"beatmania III APPEND 7thMIX","2002-01-26T00:00:00+09:00","",""},{"beatmania III APPEND CORE REMIX","2000-12-21T00:00:00+09:00","",""},{"beatmania III THE FINAL","2002-08-26T00:00:00+09:00","",""},{"beatstage II","--","",""},{"BeatStream","2014-07-17T00:00:00+09:00","",""},{"BeatStream アニムトライヴ","2015-12-21T00:00:00+09:00","","2017-08-31T00:00:00+09:00"},{"DANCE 86.4 FUNKY RADIO STATION","2005-06-23T00:00:00+09:00","",""},{"DANCE aROUND","2022-03-03T00:00:00+09:00","",""},{"Dance Dance Revolution","2013-03-14T00:00:00+09:00","JP,KR",""},{"Dance Dance Revolution （初代）","1998-09-26T00:00:00+09:00","JP",""},{"Dance Dance Revolution 2ndMIX","1999-01-29T00:00:00+09:00","JP",""},{"Dance Dance Revolution 2ndMIX CLUB VERSION","1999-05-06T00:00:00+09:00","JP",""},{"Dance Dance Revolution 2ndMIX CLUB VERSION 2","1999-07-27T00:00:00+09:00","JP",""},{"Dance Dance Revolution 2ndMIX LINK VERSION","1999-04-28T00:00:00+09:00","JP",""},{"Dance Dance Revolution 3rdMIX","1999-10-30T00:00:00+09:00","JP",""},{"Dance Dance Revolution 3rdMIX PLUS","2000-06-21T00:00:00+09:00","JP",""},{"Dance Dance Revolution 3rdMIX ver Korea","--","KR",""},{"Dance Dance Revolution 3rdMIX ver Korea 2","--","KR",""},{"Dance Dance Revolution 4thMIX","2000-08-24T00:00:00+09:00","JP",""},{"Dance Dance Revolution 4thMIX PLUS","2000-12-28T00:00:00+09:00","JP",""},{"Dance Dance Revolution 5thMIX","2001-05-02T00:00:00+09:00","JP",""},{"Dance Dance Revolution A","2016-03-30T00:00:00+09:00","JP",""},{"Dance Dance Revolution A,KR","2016-04-04T00:00:00+09:00","KR",""},{"Dance Dance Revolution A,US","2016-07-06T00:00:00+09:00","US",""},{"Dance Dance Revolution A20","2019-07-24T00:00:00+09:00","JP",""},{"Dance Dance Revolution A20","2019-03-20T00:00:00+09:00","JP新台",""},{"Dance Dance Revolution A20 PLUS","2020-07-01T00:00:00+09:00","JP新台",""},{"Dance Dance Revolution A20 PLUS,旧台","2020-07-06T00:00:00+09:00","JP、KR、US",""},{"Dance Dance Revolution A20,KR","2019-08-01T00:00:00+09:00","KR",""},{"Dance Dance Revolution A20,US","2019-09-24T00:00:00+09:00","US",""},{"Dance Dance Revolution EXTREME","2003-01-29T00:00:00+09:00","JP",""},{"Dance Dance Revolution Internet Ranking Version","1998-11-18T00:00:00+09:00","JP",""},{"Dance Dance Revolution Kids","2000-12-01T00:00:00+09:00","稼働月",""},{"Dance Dance Revolution Solo 2000","1999-12-16T00:00:00+09:00","JP",""},{"Dance Dance Revolution Solo 4thMix","2000-12-28T00:00:00+09:00","US",""},{"Dance Dance Revolution Solo BASS MIX","1999-08-19T00:00:00+09:00","JP",""},{"Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA","2006-07-12T00:00:00+09:00","JP",""},{"Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,EU","2006-04-01T00:00:00+09:00","\nEU",""},{"Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,US","2006-05-01T00:00:00+09:00","\nUS",""},{"Dance Dance Revolution SuperNOVA2","2007-08-22T00:00:00+09:00","JP",""},{"Dance Dance Revolution SuperNOVA2,US","2008-01-18T00:00:00+09:00","\r\nUS",""},{"Dance Dance Revolution X","2008-12-24T00:00:00+09:00","JP",""},{"Dance Dance Revolution X,EU","2009-06-09T00:00:00+09:00","EU",""},{"Dance Dance Revolution X,US","2009-06-03T00:00:00+09:00","US",""},{"Dance Dance Revolution X2","2010-07-07T00:00:00+09:00","JP",""},{"Dance Dance Revolution X2,EU","2011-05-13T00:00:00+09:00","EU",""},{"Dance Dance Revolution X2,US","2010-12-31T00:00:00+09:00","US",""},{"Dance Dance Revolution X3 VS 2ndMIX","2011-11-16T00:00:00+09:00","JP",""},{"Dance Dance RevolutionUSA","2001-01-01T00:00:00+09:00","US稼働年",""},{"Dance Maniax","2000-06-21T00:00:00+09:00","",""},{"Dance Maniax 2ndMIX","2000-12-05T00:00:00+09:00","",""},{"Dance Maniax 2ndMIX APPEND J☆PARADISE","2001-04-19T00:00:00+09:00","",""},{"DanceDanceRevolution A3","2022-03-17T00:00:00+09:00","JP金筐体",""},{"DanceDanceRevolution A3,旧X白","2022-06-22T00:00:00+09:00","JP",""},{"DanceDanceRevolution WORLD","2024-06-12T00:00:00+09:00","",""},{"DanceEvolution ARCADE","2012-03-27T00:00:00+09:00","",""},{"DanceEvolutionArcade舞蹈进化","--","",""},{"DANCERUSH STARDOM","2018-03-23T00:00:00+09:00","",""},{"Dancing Stage","--","EU",""},{"Dancing Stage EUroMIX2","2002-08-01T00:00:00+09:00","EU稼働月",""},{"Dancing Stage featuring Disney's RAVE","2000-11-30T00:00:00+09:00","JP",""},{"Dancing Stage featuring DREAMS COME TRUE","1999-12-25T00:00:00+09:00","JP",""},{"Dancing Stage featuring TRUE KiSS DESTiNATiON","1999-07-27T00:00:00+09:00","JP",""},{"Dancing Stage Fusion","2005-01-01T00:00:00+09:00","EU稼働年",""},{"Dancing StageEUroMIX","--","EU",""},{"DDRMAX -Dance Dance Revolution 6thMIX-","2001-11-24T00:00:00+09:00","JP",""},{"DDRMAX2 -Dance Dance Revolution 7thMIX-","2002-05-01T00:00:00+09:00","JP",""},{"DJMAXTECHNICA(JP)","2010-12-21T00:00:00+09:00","JP",""},{"DJMAXTECHNICA2(JP)","2012-09-27T00:00:00+09:00","JP",""},{"drummania","1999-07-21T00:00:00+09:00","",""},{"drummania 10thMIX","2004-04-22T00:00:00+09:00","",""},{"drummania 2ndMIX","2000-03-27T00:00:00+09:00","",""},{"drummania 3rdMIX","2000-09-13T00:00:00+09:00","",""},{"drummania 4thMIX","2001-03-17T00:00:00+09:00","",""},{"drummania 5thMIX","2001-09-13T00:00:00+09:00","",""},{"drummania 6thMIX","2002-02-28T00:00:00+09:00","",""},{"drummania 7thMIX","2002-08-30T00:00:00+09:00","",""},{"drummania 7thMIX power-up ver.","2002-11-29T00:00:00+09:00","",""},{"drummania 8thMIX","2003-04-02T00:00:00+09:00","",""},{"drummania 9thMIX","2003-10-08T00:00:00+09:00","",""},{"DrumManiaV","2005-02-23T00:00:00+09:00","",""},{"DrumManiaV2","2005-11-24T00:00:00+09:00","",""},{"DrumManiaV3","2006-09-13T00:00:00+09:00","",""},{"DrumManiaV4 Яock×Rock","2007-08-08T00:00:00+09:00","",""},{"DrumManiaV5 Rock to Infinity","2008-06-18T00:00:00+09:00","",""},{"DrumManiaV6 BLAZING!!!!","2009-04-09T00:00:00+09:00","",""},{"DrumManiaV7","2010-03-25T00:00:00+09:00","",""},{"DrumManiaV8","2011-03-28T00:00:00+09:00","",""},{"GITADORA","2013-02-14T00:00:00+09:00","",""},{"GITADORA EXCHAIN","2018-09-12T00:00:00+09:00","",""},{"GITADORA FUZZ-UP","2022-12-14T00:00:00+09:00","",""},{"GITADORA GALAXY WAVE","2024-03-13T00:00:00+09:00","",""},{"GITADORA Matixx","2017-09-06T00:00:00+09:00","",""},{"GITADORA NEX＋AGE","2019-10-02T00:00:00+09:00","",""},{"GITADORA OverDrive","2014-03-05T00:00:00+09:00","",""},{"GITADORA Tri-Boost","2015-04-21T00:00:00+09:00","",""},{"GITADORA Tri-Boost Re:EVOLVE","2016-12-14T00:00:00+09:00","",""},{"GUITARFREAKS ","1999-03-15T00:00:00+09:00","",""},{"GUITARFREAKS 10thMIX","2003-10-08T00:00:00+09:00","",""},{"GUITARFREAKS 11thMIX","2004-04-22T00:00:00+09:00","",""},{"GUITARFREAKS 2ndMIX ","1999-07-10T00:00:00+09:00","",""},{"GUITARFREAKS 2ndMIX Link version ","1999-09-01T00:00:00+09:00","稼働月",""},{"GUITARFREAKS 3rdMIX","2000-04-21T00:00:00+09:00","",""},{"GUITARFREAKS 4thMIX","2000-09-13T00:00:00+09:00","",""},{"GUITARFREAKS 5thMIX","2001-03-17T00:00:00+09:00","",""},{"GUITARFREAKS 6thMIX","2001-09-13T00:00:00+09:00","",""},{"GUITARFREAKS 7thMIX","2002-02-28T00:00:00+09:00","",""},{"GUITARFREAKS 8thMIX","2002-08-30T00:00:00+09:00","",""},{"GUITARFREAKS 8thMIX power-up ver.","2002-11-29T00:00:00+09:00","",""},{"GUITARFREAKS 9thMIX","2003-04-02T00:00:00+09:00","",""},{"GuitarFreaksV","2005-02-23T00:00:00+09:00","",""},{"GuitarFreaksV2","2005-11-24T00:00:00+09:00","",""},{"GuitarFreaksV3","2006-09-13T00:00:00+09:00","",""},{"GuitarFreaksV4 Яock×Rock","2007-08-08T00:00:00+09:00","",""},{"GuitarFreaksV5 Rock to Infinity","2008-06-18T00:00:00+09:00","",""},{"GuitarFreaksV6 BLAZING!!!!","2009-04-09T00:00:00+09:00","",""},{"GuitarFreaksV7","2010-03-25T00:00:00+09:00","",""},{"GuitarFreaksV8","2011-03-28T00:00:00+09:00","",""},{"GuitarFreaksXG＆DrumManiaXG","2010-03-10T00:00:00+09:00","",""},{"GuitarFreaksXG2＆DrumManiaXG2","2011-03-09T00:00:00+09:00","XG筐体",""},{"GuitarFreaksXG2＆DrumManiaXG2,SD","2011-03-16T00:00:00+09:00","SD筐体",""},{"GuitarFreaksXG3＆DrumManiaXG3","2012-02-23T00:00:00+09:00","",""},{"HELLO! POP'N MUSIC - ハロー! ポップンミュージック","2011-03-23T00:00:00+09:00","",""},{"jubeat","2008-07-24T00:00:00+09:00","",""},{"jubeat Ave.","2022-08-03T00:00:00+09:00","",""},{"jubeat beyond the Ave. ","2023-09-20T00:00:00+09:00","",""},{"jubeat clan","2017-07-26T00:00:00+09:00","",""},{"jubeat copious","2011-09-15T00:00:00+09:00","",""},{"jubeat festo","2018-09-05T00:00:00+09:00","",""},{"jubeat knit","2010-07-29T00:00:00+09:00","",""},{"jubeat prop","2015-02-20T00:00:00+09:00","",""},{"jubeat Qubell","2016-03-30T00:00:00+09:00","",""},{"jubeat ripples","2009-08-05T00:00:00+09:00","",""},{"jubeat saucer","2012-09-25T00:00:00+09:00","",""},{"jubeat saucer fulfill","2014-03-03T00:00:00+09:00","",""},{"jubeat(リブート)","--","",""},{"jubeat乐动魔方","--","",""},{"jubeat乐动魔方2代","--","",""},{"jubeat乐动魔方3代","--","",""},{"KEYBOARDMANIA","2000-02-06T00:00:00+09:00","",""},{"KEYBOARDMANIA 2ndMIX","2000-10-06T00:00:00+09:00","",""},{"KEYBOARDMANIA 3rdMIX","2001-03-15T00:00:00+09:00","",""},{"MAMBO A GO GO","2001-06-04T00:00:00+09:00","",""},{"MARTIALBEATアーケード","2002-03-01T00:00:00+09:00","",""},{"MÚSECA 1+1/2","2016-07-27T00:00:00+09:00","",""},{"MÚSECA(ミュゼカ）","2015-12-10T00:00:00+09:00","",""},{"NEW pop'n music Welcome to Wonderland!","--","",""},{"ParaParaParadise","2000-09-12T00:00:00+09:00","",""},{"ParaParaParadise 1st MIX Plus","2000-12-26T00:00:00+09:00","",""},{"ParaParaParadise 2nd MIX","2001-03-15T00:00:00+09:00","",""},{"ParaParaParadise V1.1","2000-10-24T00:00:00+09:00","",""},{"pop'n music - ポップンミュージック","1998-09-28T00:00:00+09:00","",""},{"pop'n music 10 - ポップンミュージック10","2003-08-06T00:00:00+09:00","",""},{"pop'n music 11 - ポップンミュージック11","2004-03-24T00:00:00+09:00","",""},{"pop'n music 12 いろは - ポップンミュージック12 いろは","2004-12-08T00:00:00+09:00","",""},{"pop'n music 13 カーニバル - ポップンミュージック13 カーニバル","2005-09-07T00:00:00+09:00","",""},{"pop'n music 14 FEVER! - ポップンミュージック14 フィーバー!","2006-05-17T00:00:00+09:00","",""},{"pop'n music 15 ADVENTURE - ポップンミュージック15 アドベンチャー","2007-04-25T00:00:00+09:00","",""},{"pop'n music 16 PARTY♪ - ポップンミュージック16 パーティー♪","2008-03-24T00:00:00+09:00","",""},{"pop'n music 17 THE MOVIE - ポップンミュージック17 ザ・ムービー","2009-03-04T00:00:00+09:00","",""},{"pop'n music 18 せんごく列伝 - ポップンミュージック18 せんごくれつでん","2010-01-20T00:00:00+09:00","",""},{"pop'n music 19 TUNE STREET - ポップンミュージック19 チューンストリート","2010-12-09T00:00:00+09:00","",""},{"pop'n music 2 - ポップンミュージック2","1999-03-26T00:00:00+09:00","",""},{"pop'n music 20 fantasia - ポップンミュージック20 ファンタジア","2011-12-07T00:00:00+09:00","",""},{"pop'n music 3 - ポップンミュージック3","1999-09-16T00:00:00+09:00","",""},{"pop'n music 4 - ポップンミュージック4","2000-03-16T00:00:00+09:00","",""},{"pop'n music 5 - ポップンミュージック5","2000-11-17T00:00:00+09:00","",""},{"pop'n music 6 - ポップンミュージック6","2001-05-11T00:00:00+09:00","",""},{"pop'n music 7 - ポップンミュージック7","2001-11-22T00:00:00+09:00","",""},{"pop'n music 8 - ポップンミュージック8","2002-05-30T00:00:00+09:00","",""},{"pop'n music 9 - ポップンミュージック9","2002-12-26T00:00:00+09:00","",""},{"pop'n music éclale - ポップンミュージック エクラル","2015-11-26T00:00:00+09:00","",""},{"pop’n music Jam&Fizz","2024-09-25T00:00:00+09:00","",""},{"pop'n music peace - ポップンミュージック ピース","2018-10-17T00:00:00+09:00","",""},{"pop'n music Sunny Park - ポップンミュージック サニーパーク","2012-12-05T00:00:00+09:00","",""},{"pop'n music UniLab","2022-09-13T00:00:00+09:00","",""},{"pop'n music うさぎと猫と少年の夢 - ポップンミュージック うさぎとねことしょうねんのゆめ","2016-12-14T00:00:00+09:00","",""},{"pop'n music ラピストリア - ポップンミュージック ラピストリア","2014-06-25T00:00:00+09:00","",""},{"pop'n music 解明リドルズ - ポップンミュージック かいめいリドルズ","2020-12-09T00:00:00+09:00","",""},{"pop'n stage - ポップンステージ","1999-09-24T00:00:00+09:00","",""},{"pop'n stage ex - ポップンステージex","1999-12-20T00:00:00+09:00","",""},{"RAP FREAKS","--","",""},{"REFLEC BEAT","2010-11-04T00:00:00+09:00","",""},{"REFLEC BEAT colette","2012-11-21T00:00:00+09:00","",""},{"REFLEC BEAT groovin'!!","2014-06-04T00:00:00+09:00","",""},{"REFLEC BEAT groovin'!! Upper","2014-11-20T00:00:00+09:00","",""},{"REFLEC BEAT limelight","2011-11-16T00:00:00+09:00","",""},{"REFLEC BEAT VOLZZA","2015-10-28T00:00:00+09:00","",""},{"REFLEC BEAT VOLZZA 2","2016-03-24T00:00:00+09:00","",""},{"REFLEC BEAT 悠久のリフレシア The Reflesia of Eternity","2016-12-01T00:00:00+09:00","",""},{"Rizminance","--","",""},{"Shuffle Dancerz","--","",""},{"SOUND VOLTEX BOOTH","2012-01-18T00:00:00+09:00","",""},{"SOUND VOLTEX EXCEED GEAR","2021-02-17T00:00:00+09:00","",""},{"SOUND VOLTEX II -infinite infection-","2013-06-05T00:00:00+09:00","",""},{"SOUND VOLTEX III GRAVITY WARS","2014-11-20T00:00:00+09:00","",""},{"SOUND VOLTEX IV HEAVAENLY HAVEN","2016-12-21T00:00:00+09:00","",""},{"SOUND VOLTEX VIVID WAVE","2019-02-28T00:00:00+09:00","",""},{"STEPSTAR","--","",""},{"DANCE GENERATIONS","--","",""},{"Toy'sMarch","2005-02-24T00:00:00+09:00","",""},{"Toy'sMarch2","2005-12-15T00:00:00+09:00","",""},{"おといろは","--","",""},{"オトカ♥ドール","2015-03-13T00:00:00+09:00","",""},{"ノスタルジア","2017-03-01T00:00:00+09:00","",""},{"ノスタルジア FORTE","2017-07-19T00:00:00+09:00","",""},{"ノスタルジア Op.2","2018-09-26T00:00:00+09:00","",""},{"ノスタルジア Op.3","2019-12-02T00:00:00+09:00","",""},{"ポラリスコード","2024-03-27T00:00:00+09:00","",""},{"ミライダガッキ -FutureTomTom-","2013-06-20T00:00:00+09:00","",""},{"ミライダガッキ Ver.2","2013-12-18T00:00:00+09:00","",""},{"Dance Freaks","2000-07-01T00:00:00+09:00","稼働月",""},{"彩響DJアニクラゲ","--","",""},{"三味線ブラザーズ","2003-07-01T00:00:00+09:00","稼働月",""},{"朗舞","2023-01-01T00:00:00+09:00","ダンアラ中国",""},{"CHUNITHM","2015-07-15T15:00:00.000Z","",""},{"CHUNITHM PLUS","2016-02-03T15:00:00.000Z","",""},{"CHUNITHM AIR","2016-08-24T15:00:00.000Z","",""},{"CHUNITHM AIR PLUS","2017-02-08T15:00:00.000Z","",""},{"CHUNITHM STAR","2017-08-23T15:00:00.000Z","",""},{"CHUNITHM STAR PLUS","2018-03-07T15:00:00.000Z","",""},{"CHUNITHM AMAZON","2018-10-24T15:00:00.000Z","",""},{"CHUNITHM AMAZON PLUS","2019-04-10T15:00:00.000Z","",""},{"CHUNITHM CRYSTAL","2019-10-23T15:00:00.000Z","",""},{"CHUNITHM CRYSTAL PLUS","2020-07-15T15:00:00.000Z","",""},{"CHUNITHM SUPER STAR","2020-11-25T15:00:00.000Z","",""},{"CHUNITHM PARADISE","2021-01-20T15:00:00.000Z","",""},{"CHUNITHM PARADISE LOST","2021-05-12T15:00:00.000Z","",""},{"CHUNITHM NEW！","2021-11-03T15:00:00.000Z","",""},{"CHUNITHM NEW PLUS","2022-04-13T15:00:00.000Z","",""},{"CHUNITHM SUN","2022-10-12T15:00:00.000Z","",""},{"CHUNITHM SUN PLUS","2023-05-10T15:00:00.000Z","",""},{"CHUNITHM LUMINOUS","2023-12-13T15:00:00.000Z","",""},{"CHUNITHM LUMINOUS PLUS　","2024-06-19T15:00:00.000Z","",""},{"CHUNITHM VERSE","2024-12-11T15:00:00.000Z","",""},{"Disney マジカルダンス オン ドリームステージ","2007-11-28T15:00:00.000Z","",""},{"maimai 初代","2012-07-10T15:00:00.000Z","",""},{"maimai PLUS","2012-12-12T15:00:00.000Z","",""},{"maimai GreeN","2013-07-10T15:00:00.000Z","",""},{"maimai GreeN PLUS","2014-02-25T15:00:00.000Z","",""},{"maimai ORANGE","2014-09-17T15:00:00.000Z","",""},{"maimai ORANGE PLUS","2015-03-18T15:00:00.000Z","",""},{"maimai PiNK","2015-12-08T15:00:00.000Z","",""},{"maimai PiNK PLUS","2016-06-29T15:00:00.000Z","",""},{"maimai MURASAKi","2016-12-14T15:00:00.000Z","",""},{"maimai MURASAKi PLUS","2017-06-21T15:00:00.000Z","",""},{"maimai MiLK","2017-12-13T15:00:00.000Z","",""},{"maimai MiLK PLUS","2018-06-20T15:00:00.000Z","",""},{"maimai FiNALE","2018-12-12T15:00:00.000Z","",""},{"maimaiでらっくす","2019-07-10T15:00:00.000Z","",""},{"maimaiでらっくす PLUS","2020-01-22T15:00:00.000Z","",""},{"maimaiでらっくす Splash","2020-09-16T15:00:00.000Z","",""},{"maimaiでらっくすSplash PLUS","2021-03-17T15:00:00.000Z","",""},{"maimaiでらっくす UNiVERSE","2021-09-15T15:00:00.000Z","",""},{"maimai でらっくす UNiVERSE PLUS","2022-03-23T15:00:00.000Z","",""},{"maimai でらっくす FESTiVAL PLUS","2023-03-22T15:00:00.000Z","",""},{"maimai でらっくす BUDDiES","2023-09-13T15:00:00.000Z","",""},{"maimai でらっくす BUDDiES PLUS","2024-03-20T15:00:00.000Z","",""},{"maimai でらっくす PRiSM","2024-09-11T15:00:00.000Z","",""},{"maimai でらっくす PRiSM PLUS","2025-03-12T15:00:00.000Z","",""},{"オトシューDX","2020-03-04T15:00:00.000Z","",""},{"オンゲキ","2018-07-25T15:00:00.000Z","",""},{"オンゲキPLUS","2019-02-06T15:00:00.000Z","",""},{"オンゲキSUMMER","2019-08-21T15:00:00.000Z","",""},{"オンゲキSUMMER PLUS","2020-02-19T15:00:00.000Z","",""},{"オンゲキ R.E.D.","2020-09-29T15:00:00.000Z","",""},{"オンゲキ R.E.D. PLUS","2021-03-30T15:00:00.000Z","",""},{"オンゲキbright","2021-10-20T15:00:00.000Z","",""},{"オンゲキbright MEMORY","2022-03-02T15:00:00.000Z","",""},{"オンゲキRe:Fresh","2025-03-26T15:00:00.000Z","",""},{"クラッキンDJ","2000-12-10T15:00:00.000Z","稼働月",""},{"クラッキンDJ Part2","2001-05-31T15:00:00.000Z","稼働月",""},{"サンバDEアミーゴ","1999-11-30T15:00:00.000Z","稼働月",""},{"シャカっとタンバリン!","2000-10-31T15:00:00.000Z","稼働月",""},{"シャカっとタンバリン！ もっとノリノリ 新曲追加！！","2001-03-31T15:00:00.000Z","",""},{"シャカっとタンバリン! 超POWER UP チュッ!","2001-11-20T15:00:00.000Z","稼働月",""},{"フラッシュビーツ","1999-01-31T15:00:00.000Z","稼働月",""},{"モグラッパー","1990-12-31T15:00:00.000Z","",""},{"リズム天国（アーケード版）","2007-09-19T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade","2010-06-22T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Future Tone","2013-11-20T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Future Tone Version A REVISION1","2014-11-04T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Future Tone Version B","2016-02-16T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Future Tone Version B REVISION1","2016-08-23T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Future Tone Version B REVISION2","2016-10-19T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Future Tone Version B REVISION3","2016-12-13T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Version A","2011-01-26T15:00:00.000Z","",""},{"初音ミク Project DIVA Arcade Version B","2012-10-03T15:00:00.000Z","",""},{"Guitar Jam","1998-12-31T15:00:00.000Z","稼働年",""},{"Quest for Fame（英語版）","1998-12-31T15:00:00.000Z","稼働年",""},{"TEKNOWERK テクノヴェルク","2000-07-31T15:00:00.000Z","稼働月",""},{"アイカツ!","2012-10-24T15:00:00.000Z","",""},{"アイカツオンパレード！","2019-10-02T15:00:00.000Z","",""},{"アイカツスターズ!","2016-05-18T15:00:00.000Z","",""},{"アイカツプラネット","2020-12-09T15:00:00.000Z","",""},{"アイカツフレンズ！","2018-04-04T15:00:00.000Z","",""},{"ウンジャマ・ラミー NOW!!","1999-12-14T15:00:00.000Z","",""},{"シンクロニカ","2015-06-17T15:00:00.000Z","",""},{"たまごっちリズム TamaRiz","2012-12-12T15:00:00.000Z","",""},{"ディズニー マジックキャッスル キラキラシャイニー★スター","2016-12-07T15:00:00.000Z","",""},{"パカパカパッション","1998-10-31T15:00:00.000Z","稼働月",""},{"パカパカパッション2","1999-06-30T15:00:00.000Z","稼働月",""},{"パカパカパッションスペシャル","1999-11-30T15:00:00.000Z","稼働月",""},{"ミリオンヒッツ","1998-12-31T15:00:00.000Z","稼働年",""},{"太鼓の達人 初代","2001-02-20T15:00:00.000Z","",""},{"太鼓の達人2","2001-08-05T15:00:00.000Z","",""},{"太鼓の達人3","2002-03-14T15:00:00.000Z","",""},{"太鼓の達人4","2002-12-11T15:00:00.000Z","",""},{"太鼓の達人5","2003-10-05T15:00:00.000Z","",""},{"太鼓の達人6","2004-07-14T15:00:00.000Z","",""},{"太鼓の達人7","2005-07-14T15:00:00.000Z","",""},{"太鼓の達人8","2006-03-22T15:00:00.000Z","",""},{"太鼓の達人9","2006-12-19T15:00:00.000Z","",""},{"太鼓の達人10","2007-07-25T15:00:00.000Z","",""},{"太鼓の達人11","2008-03-17T15:00:00.000Z","",""},{"太鼓の達人11 亞洲版","2008-04-24T15:00:00.000Z","",""},{"太鼓の達人12","2008-12-10T15:00:00.000Z","",""},{"太鼓の達人12 亞洲版","2009-06-22T15:00:00.000Z","",""},{"太鼓の達人12 ド〜ン!と増量版","2009-07-13T15:00:00.000Z","",""},{"太鼓の達人13","2009-12-16T15:00:00.000Z","",""},{"太鼓の達人14","2010-09-07T15:00:00.000Z","",""},{"太鼓の達人RT〜日本の心〜","2003-12-31T15:00:00.000Z","稼働年",""},{"太鼓の達人(新筐体)1期アップデート","2011-11-15T15:00:00.000Z","",""},{"太鼓の達人KATSU-DONVer.アップデート","2012-07-24T15:00:00.000Z","",""},{"太鼓の達人ソライロVer.アップデート","2013-03-12T15:00:00.000Z","",""},{"太鼓の達人キミドリVer.アップデート","2014-07-15T15:00:00.000Z","",""},{"太鼓の達人ムラサキVer.アップデート","2015-03-10T15:00:00.000Z","",""},{"太鼓の達人ホワイトVer.アップデート","2015-12-09T15:00:00.000Z","",""},{"太鼓の達人レッドVer.アップデート","2016-07-13T15:00:00.000Z","",""},{"太鼓の達人イエローVer.アップデート","2017-03-14T15:00:00.000Z","",""},{"太鼓の達人ブルーVer.アップデート","2018-03-14T15:00:00.000Z","",""},{"太鼓の達人グリーンVer.アップデート","2019-03-13T15:00:00.000Z","",""},{"太鼓の達人ニジイロVer.2020アップデート","2020-03-23T15:00:00.000Z","",""},{"太鼓の達人ニジイロVer.2021アップデート","2021-03-24T15:00:00.000Z","",""},{"太鼓の達人ニジイロVer.2022アップデート","2022-03-15T15:00:00.000Z","",""},{"太鼓の達人ニジイロVer.2023アップデート","2023-03-21T15:00:00.000Z","",""},{"太鼓の達人ニジイロVer.2024アップデート","2024-03-12T15:00:00.000Z","",""},{"デンダビーツ","--","",""},{"アイドルマスター TOURS","2025-03-25T15:00:00.000Z","",""},{"AstroRanger","2011-09-28T15:00:00.000Z","--",""},{"BEATCRAFT CYCLON","2014-08-10T15:00:00.000Z","--",""},{"doogi doogi","--","--",""},{"Drum Live Station","--","--",""},{"舞立方 (DANCE³)","--","--",""},{"3-DDX / D-Tech","2000-04-30T15:00:00.000Z","--稼働月",""},{"Guitar Hero Arcade","2009-03-31T15:00:00.000Z","--稼働月",""},{"Magic DJ","2009-07-31T15:00:00.000Z","--稼働月",""},{"Rhythm Horizon beta","2018-03-31T15:00:00.000Z","--稼働月",""},{"舞战纪 (Dance Battle)","2022-07-31T15:00:00.000Z","--稼働月",""},{"The Rhythm and Dance","1998-12-31T15:00:00.000Z","--稼働年",""},{"Crazy Dancing ","1999-12-31T15:00:00.000Z","--稼働年",""},{"Jungle Drummer","2007-12-31T15:00:00.000Z","--稼働年",""},{"鼓王2008","2007-12-31T15:00:00.000Z","--稼働年",""},{"Super Dance Station","2008-12-31T15:00:00.000Z","--稼働年",""},{"Super Dance Station 2","2009-12-31T15:00:00.000Z","--稼働年",""},{"Super Dance Station 3","2010-12-31T15:00:00.000Z","--稼働年",""},{"鼓王3：骑士与公主 (Percussion Master 3)","2010-12-31T15:00:00.000Z","--稼働年",""},{"动感弹珠 (REFLEC BEAT)","2010-12-31T15:00:00.000Z","--稼働年",""},{"Dance Core","2011-12-31T15:00:00.000Z","--稼働年",""},{"Hit Music","2011-12-31T15:00:00.000Z","--稼働年",""},{"ReRave","2011-12-31T15:00:00.000Z","--稼働年",""},{"Super Dance Station 4","2011-12-31T15:00:00.000Z","--稼働年",""},{"Super Dance Station 5","2012-12-31T15:00:00.000Z","--稼働年",""},{"ReRave Plus","2013-12-31T15:00:00.000Z","--稼働年",""},{"E5 Dance Super Station ","2014-12-31T15:00:00.000Z","--稼働年",""},{"Dance Central 3","2015-12-31T15:00:00.000Z","--稼働年",""},{"舞立方2 (DANCE³ 2)","2016-12-31T15:00:00.000Z","--稼働年",""},{"Beat Saber Arcade","2018-12-31T15:00:00.000Z","--稼働年",""},{"音乐学院","2020-12-31T15:00:00.000Z","--稼働年",""},{"舞立方·秀/DANCE³·Show","2022-12-31T15:00:00.000Z","--稼働年",""},{"舞立方·秀 120Hz (DANCE³ Show 120hz)","2023-12-31T15:00:00.000Z","--稼働年",""},{"舞立方・秀","--","--稼働年",""},{"舞立方2","--","--稼働年",""},{"2012疯狂爵士鼓","--","2012疯狂爵士鼓_盛世华娱",""},{"3D旋转的风彩","--","3D旋转的风彩_华泰电子",""},{"3D乐无限","--","3D乐无限_华泰",""},{"Sabin Sound Star","2010-04-06T15:00:00.000Z","3S ENTERTAINMENT",""},{"Ez2Dj Azure ExpressioN","2012-03-07T15:00:00.000Z","3S ENTERTAINMENT",""},{"Sabin Sound Star -renascence burst-","2012-05-18T15:00:00.000Z","3S ENTERTAINMENT",""},{"Ez2Dj Azure ExpressioN -INTEGRAL COMPOSITION-","2012-06-21T15:00:00.000Z","3S ENTERTAINMENT",""},{"Ez2Dj 7th TraX CLASS R -Codename Violet- Version 3.10","2008-12-31T15:00:00.000Z","3S ENTERTAINMENT稼働年",""},{"Ez2Dj BONUS EDITION","2009-12-31T15:00:00.000Z","3S ENTERTAINMENT稼働年",""},{"Ez2Dj BONUS EDITION revision A","2010-12-31T15:00:00.000Z","3S ENTERTAINMENT稼働年",""},{"小鼓王","--","aceamusement",""},{"EZ2DJ The 1st TRACKS","1999-04-19T15:00:00.000Z","Amuse World",""},{"EZ2DJ The 1st TRACKS Special Edition","1999-12-14T15:00:00.000Z","Amuse World",""},{"EZ2DJ 2nd TRAX ~It rules once again~","2000-10-31T15:00:00.000Z","Amuse World",""},{"EZ2DJ 3rd TRAX ~Absolute Pitch~","2001-09-16T15:00:00.000Z","Amuse World",""},{"EZ2DJ 4th TRAX ~Over Mind~","2002-07-27T15:00:00.000Z","Amuse World",""},{"EZ2DJ Platinum","2003-09-05T15:00:00.000Z","Amuse World",""},{"EZ2DJ 6th TRAX ~Self Evolution~","2004-08-16T15:00:00.000Z","Amuse World",""},{"EZ2DJ 7th Trax: Resistance","2007-03-13T15:00:00.000Z","Amuse World",""},{"Ez2Dj 7th TraX -Resistance- Version 1.50","2007-12-22T15:00:00.000Z","Amuse World",""},{"Ez2Dj 7th TraX -Resistance- Version 2.00","2008-03-03T15:00:00.000Z","Amuse World",""},{"Ez2Dj 7th TraX CLASS R -Codename Violet- Version 3.00","2009-03-29T15:00:00.000Z","Amuse World",""},{"EZ2DJ 7th TRAX BONUS EDITION","2010-11-08T15:00:00.000Z","Amuse World",""},{"EZ2DJ 7th TRAX BONUS EDITION revision A","2011-02-16T15:00:00.000Z","Amuse World",""},{"EZ2Dancer","2000-06-30T15:00:00.000Z","Amuse World稼働月",""},{"EZ2Dancer 1st Move","2000-08-31T15:00:00.000Z","Amuse World稼働月",""},{"EZ2Dancer SuperChina","2003-12-31T15:00:00.000Z","Amuse World稼働年",""},{"EZ2Dancer SuperCHINA","2003-12-31T15:00:00.000Z","Amuse World稼働年",""},{"EZ2Dancer The 2nd Move","2000-12-31T15:00:00.000Z","Amuse World稼働月",""},{"EZ2Dancer UK Move","2002-04-30T15:00:00.000Z","Amuse World稼働月",""},{"EZ2Dancer UK Special Edition","2003-03-31T15:00:00.000Z","Amuse World稼働月",""},{"Ez2Dj 6th TraX -Self Evolution-","2003-12-31T15:00:00.000Z","Amuse World稼働年",""},{"EZ2DJ 7th Trax Mini","2006-12-31T15:00:00.000Z","Amuse World稼働年",""},{"Ez2Dj Dance Edition Vol.1 -","--","Amuse World",""},{"EZ2DJ Dual 3rd","2003-12-31T15:00:00.000Z","Amuse World稼働年",""},{"EZ2DJ Dual 4th","2003-12-31T15:00:00.000Z","Amuse World稼働年",""},{"EZ2DJ Dual Platinum","2004-12-31T15:00:00.000Z","Amuse World稼働年",""},{"EZ2DJ Mini","2003-06-30T15:00:00.000Z","Amuse World稼働月",""},{"EZ2DJ Mini 3rd","2003-12-31T15:00:00.000Z","Amuse World稼働年",""},{"Ez2Dj PLATINUM -Limited Edition-","2002-12-31T15:00:00.000Z","Amuse World稼働年",""},{"EZ2DJ Single","2004-02-29T15:00:00.000Z","Amuse World稼働月",""},{"EZ2DJ Single 2nd","2003-12-31T15:00:00.000Z","Amuse World稼働年",""},{"NOISZ ARC⌖CODA","2022-06-15T15:00:00.000Z","Anarch Entertainment",""},{"Pump It Up The 1st Dance Floor","1999-09-19T15:00:00.000Z","Andamiro",""},{"Pump It Up 2nd Dance Floor","1999-12-26T15:00:00.000Z","Andamiro",""},{"Pump It Up 3rd O.B.G.（Oldies But Goodies）- 3rd Dance Floor","2000-05-06T15:00:00.000Z","Andamiro",""},{"Pump It Up Perfect Collection","2000-12-06T15:00:00.000Z","Andamiro",""},{"Pump It Up Extra","2001-01-19T15:00:00.000Z","Andamiro",""},{"Pump It Up NX2 (Next Xenesis) -International 9th Dance Floor-","2007-12-09T15:00:00.000Z","Andamiro",""},{"Pump It Up NX Absolute -International 10th Dance Floor-","2008-11-24T15:00:00.000Z","Andamiro",""},{"Pump It Up Infinity","2013-04-10T15:00:00.000Z","Andamiro",""},{"Pump It Up 2015 Prime Japanese Edition","2015-06-23T15:00:00.000Z","Andamiro",""},{"Pump It Up 2017 Prime 2","2017-01-10T15:00:00.000Z","Andamiro",""},{"Pump It Up 2018 Prime 2","2017-12-31T15:00:00.000Z","Andamiro",""},{"Pump It Up XX -20th Anniversary Edition-","2019-01-06T15:00:00.000Z","Andamiro",""},{"CHRONO CIRCLE","2021-12-14T15:00:00.000Z","Andamiro",""},{"Pump It Up 2023 PHOENIX","2023-07-03T15:00:00.000Z","Andamiro",""},{"Pump It Up 2024 PHOENIX","2024-05-26T15:00:00.000Z","Andamiro",""},{"Pump It Up O.B.G. SE（Seasonal Evolution）","2000-08-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up The Collection","2000-10-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up The Premiere -International Dance Floor-","2001-05-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Feel The Beat THE PREX: The International Dance Floor","2001-10-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up The Rebirth –The 8th Dance Floor-（韓国のみ）","2001-12-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Premiere2 -International 2nd Dance Floor-","2002-02-28T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up PREX2","2002-10-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Premiere3 -International 3rd Dance Floor-","2003-04-30T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up PREX3 -International 4th Dance Floor-","2003-09-30T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Exceed -International 5th Dance Floor-","2004-03-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Exceed2 -International 6th Dance Floor-","2004-10-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Zero -International 7th Dance Floor-","2005-12-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up NX (New Xenesis) -International 8th Dance Floor-","2006-11-30T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Pro","2007-05-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up 2010 Fiesta","2010-02-28T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up Pro 2","2010-06-30T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up 2013 Fies EX","2011-02-28T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up 2013 Fiesta 2","2012-10-31T15:00:00.000Z","Andamiro稼働月",""},{"Hit The Beat DX","2013-10-31T15:00:00.000Z","Andamiro稼働月",""},{"Pump It Up 2015 Prime","2014-10-31T15:00:00.000Z","Andamiro稼働月",""},{"Drum Live Station ","2006-12-31T15:00:00.000Z","Andamiro稼働年",""},{"Pump Jump","2008-12-31T15:00:00.000Z","Andamiro稼働年",""},{"Pump It Up 2010 Fiesta","2010-04-06T15:00:00.000Z","Andamiro韓国",""},{"歌神K Bar（粉色）","--","Bar（粉色）供应歌神K",""},{"歌神K Bar（黑色）","--","Bar（黑色）供应歌神K",""},{"Beat Player 2000","1998-12-31T15:00:00.000Z","Comad稼働年",""},{"Let's Dance","1999-12-31T15:00:00.000Z","Comad稼働年",""},{"DANCE CORE","--","CRENOVA",""},{"I Can Boogie","2003-12-31T15:00:00.000Z","D-Gate稼働年",""},{"Drumscape MTV","1999-12-31T15:00:00.000Z","Devecka稼働年",""},{"beatplayer2000","1998-12-31T15:00:00.000Z","dgPIX Entertainment稼働年",""},{"Let's Dance Plus","1999-12-31T15:00:00.000Z","dgPix Entertainment稼働年",""},{"Mini Let's Dance","1999-12-31T15:00:00.000Z","dgPix Entertainment稼働年",""},{"Karaoke Dance Diet","1999-12-31T15:00:00.000Z","dgPix Entertainment稼働年",""},{"DJ高手","--","DJ高手_光阳浓阳",""},{"DJ旋风","--","DJ旋风_通法",""},{"D舞达人","--","D舞达人_华泰",""},{"Wooga Wooga","2000-04-30T15:00:00.000Z","EM Tech稼働月",""},{"B-Boy","1999-12-31T15:00:00.000Z","Eumjeong Syscom稼働年",""},{"EZ2AC FINAL","2019-05-29T15:00:00.000Z","EZ2AC TEAM, SQUARE PIXELS",""},{"EZ2AC Final EX","2020-08-06T15:00:00.000Z","EZ2AC TEAM, SQUARE PIXELS",""},{"Mr. Jang-Go","2002-10-31T15:00:00.000Z","F2 System稼働月",""},{"TechnoMotion: The 2nd Dance Floor","1999-12-31T15:00:00.000Z","F2 System稼働年",""},{"TechnoMotion","1999-12-31T15:00:00.000Z","F2 System稼働年",""},{"Magic Box 3","2012-12-31T15:00:00.000Z","Game Box Entertainment稼働年",""},{"Break Boy","1999-12-31T15:00:00.000Z","Game Studio稼働年",""},{"Fantasy of Stepping, The","1999-12-31T15:00:00.000Z","GC Tech稼働年",""},{"Live Mix","1999-12-31T15:00:00.000Z","Giseong稼働年",""},{"Dance Dance Diet","1999-12-31T15:00:00.000Z","Hanil Jeonja稼働年",""},{"PERCUSSION MASTER 3","2011-11-18T15:00:00.000Z","IGS",""},{"鼓王","--","IGS",""},{"Danz Base SEA Edition","--","IGS",""},{"唯舞独尊 We Dancing Online ","2007-02-28T15:00:00.000Z","IGS稼働月",""},{"Mozarc","2010-11-30T15:00:00.000Z","IGS稼働月",""},{"Rock Fever","1998-12-31T15:00:00.000Z","IGS稼働年",""},{"Crazy Dancing","1999-12-31T15:00:00.000Z","IGS稼働年",""},{"Rock Fever EX","1999-12-31T15:00:00.000Z","IGS稼働年",""},{"Rock Fever 3","2000-12-31T15:00:00.000Z","IGS稼働年",""},{"Percussion Master","2003-12-31T15:00:00.000Z","IGS稼働年",""},{"Percussion Kids","2004-12-31T15:00:00.000Z","IGS稼働年",""},{"パーカッションマスター","2004-12-31T15:00:00.000Z","IGS稼働年",""},{"パーカッションマスター2","2007-12-31T15:00:00.000Z","IGS稼働年",""},{"铁琴：第一乐章 ","2009-12-31T15:00:00.000Z","IGS稼働年",""},{"鐡琴：第一樂章 ","2009-12-31T15:00:00.000Z","IGS稼働年",""},{"MuziBox","2011-12-31T15:00:00.000Z","IGS稼働年",""},{"パーカッションマスター3","2011-12-31T15:00:00.000Z","IGS稼働年",""},{"DANZ BASE 舞力特区","2012-12-31T15:00:00.000Z","IGS稼働年",""},{"Drummer Kids ","2013-12-31T15:00:00.000Z","IGS稼働年",""},{"唯舞独尊2代               ","--","IGS稼働年",""},{"ACPercuss","1999-12-31T15:00:00.000Z","Interzone 21稼働年",""},{"Kongshiri","1998-12-31T15:00:00.000Z","Jungwon稼働年",""},{"Synth Riders ARCADE","2021-12-31T15:00:00.000Z","Kluge Interactive稼働年",""},{"Musica","1999-12-31T15:00:00.000Z","KOAM稼働年",""},{"Drum Star","1999-12-31T15:00:00.000Z","Koreal Info Net 稼働年",""},{"K歌王","--","K歌王_快乐时光",""},{"K歌王加强版","--","K歌王加强版_快乐时光",""},{"BeatOn","--","Metal Solutions",""},{"Dancing Blaster","1998-12-31T15:00:00.000Z","Para Enterprise稼働年",""},{"Zooty Drum","1998-12-31T15:00:00.000Z","Para Enterprise稼働年",""},{"DJMax Technika 3(NA)","2011-10-11T15:00:00.000Z","Pentavision",""},{"DJMax Technika 3(KR)","2011-10-26T15:00:00.000Z","Pentavision",""},{"DJMax Technika 3(PHL)","2011-12-17T15:00:00.000Z","Pentavision",""},{"DJMax Technika 3(SGP)","2011-12-24T15:00:00.000Z","Pentavision",""},{"DJMax Technika 3(CHN)","2012-01-16T15:00:00.000Z","Pentavision",""},{"DJMax Technika 3(THA)","2012-01-19T15:00:00.000Z","Pentavision",""},{"DJMax Technika 3(AU)","2012-01-22T15:00:00.000Z","Pentavision",""},{"DJMax Technika 3(CHL)","2012-08-08T15:00:00.000Z","Pentavision",""},{"DJ Max Technika","2008-10-30T15:00:00.000Z","Pentavision",""},{"Rhythm and Dance Version 2nd, The","1999-12-31T15:00:00.000Z","Playworks稼働年",""},{"Rhythm and Dance, The","1999-12-31T15:00:00.000Z","Playworks稼働年",""},{"In the Groove","2004-07-29T15:00:00.000Z","Roxor",""},{"In the Groove 2","2005-06-17T15:00:00.000Z","Roxor",""},{"Pump It Up Pro","2007-06-30T15:00:00.000Z","Roxor稼働月",""},{"Pump It Up Pro 2","2010-06-30T15:00:00.000Z","Roxor稼働月",""},{"Pump It Up Infinity","2013-01-31T15:00:00.000Z","Roxor稼働月",""},{"Pump It Up Jump","2008-12-31T15:00:00.000Z","Roxor稼働年",""},{"EZ2AC ENDLESS CIRCULATION","2013-05-06T15:00:00.000Z","Square Pixels",""},{"EZ2AC EVOLVE","2014-12-25T15:00:00.000Z","Square Pixels",""},{"EZ2AC NIGHT TRAVELER","2016-01-27T15:00:00.000Z","Square Pixels",""},{"EZ2AC TIME TRAVELER","2017-08-15T15:00:00.000Z","Square Pixels",""},{"StepManiaX","2017-06-09T15:00:00.000Z","StepRevolution",""},{"P.P.R.","2000-12-31T15:00:00.000Z","Uniana稼働年",""},{"Neon FM","2013-12-31T15:00:00.000Z","Unit-e Technologies稼働年",""},{"Tiny Tunes Arcade Machine","2014-12-31T15:00:00.000Z","Universal Space Amusement稼働年",""},{"Lullu Rarra Dance Dance","1905-06-21T15:00:00.000Z","Yuwon Tech稼働年",""},{"テクニクビート","2002-06-30T15:00:00.000Z","アリカ稼働月",""},{"タイプチューン","2005-08-31T15:00:00.000Z","アルゼ稼働月",""},{"crossbeats REV.","2015-07-22T15:00:00.000Z","カプコン",""},{"crossbeats REV. SUNRISE","2016-04-27T15:00:00.000Z","カプコン",""},{"cytusΩ","--","カプコン",""},{"ドリームオーディション","--","ジャレコ",""},{"Rock'n Tread ロックントレッド","1999-02-28T15:00:00.000Z","ジャレコ稼働月",""},{"Rock'n Tread 2 ロックントレッド2","1999-05-31T15:00:00.000Z","ジャレコ稼働月",""},{"Rock'n 3 ロックン3","1999-11-30T15:00:00.000Z","ジャレコ稼働月",""},{"ロックンメガセッション","1999-11-30T15:00:00.000Z","ジャレコ稼働月",""},{"VJ Visual & Music Slap","1998-12-31T15:00:00.000Z","ジャレコ稼働年",""},{"VJ Dash","1998-12-31T15:00:00.000Z","ジャレコ稼働年",""},{"ステッピングステージ→ステッピング","1998-12-31T15:00:00.000Z","ジャレコ稼働年",""},{"シアトリズム ファイナルファンタジー オールスターカーニバル","2016-09-26T15:00:00.000Z","スクウェア・エニックス",""},{"ラブライブ! スクールアイドルフェスティバル〜after school ACTIVITY〜","2016-12-05T15:00:00.000Z","スクウェア・エニックス",""},{"ラブライブ！スクールアイドルフェスティバル ～after school ACTIVITY～ Next Stage","2018-12-05T15:00:00.000Z","スクウェア・エニックス",""},{"ミュージックガンガン!","2009-07-16T15:00:00.000Z","タイトー",""},{"ミュージックガンガン! 曲がいっぱい☆超増加版!","2010-04-25T15:00:00.000Z","タイトー",""},{"ミュージックガンガン!2","2011-01-26T15:00:00.000Z","タイトー",""},{"GROOVE COASTER","2013-11-04T15:00:00.000Z","タイトー",""},{"GROOVE COASTER EX","2014-05-25T15:00:00.000Z","タイトー",""},{"GROOVE COASTER 2 HEAVENLY FESTIVAL","2015-01-21T15:00:00.000Z","タイトー",""},{"GROOVE COASTER 3 LINK FEVER","2016-03-09T15:00:00.000Z","タイトー",""},{"GROOVE COASTER 3EX DREAM PARTY","2017-03-15T15:00:00.000Z","タイトー",""},{"GROOVE COASTER 4 STARLIGHT ROAD","2018-03-28T15:00:00.000Z","タイトー",""},{"GROOVE COASTER 4EX INFINITY∞HIGHWAY","2019-03-27T15:00:00.000Z","タイトー",""},{"GROOVE COASTER 4MAX DIAMOND GALAXY","2020-04-08T15:00:00.000Z","タイトー",""},{"テトテ×コネクト","2021-11-30T15:00:00.000Z","タイトー",""},{"MUSIC DIVER","2022-11-30T15:00:00.000Z","タイトー",""},{"RHYTHMVADERS 3: Link Fever","--","タイトー海外",""},{"RHYTHMVADERS 3 EX: Dream Party","--","タイトー海外",""},{"ちょいKARA","--","タイトー",""},{"マジカルミュージック","--","タイトー",""},{"RHYTHMVADERS","2013-11-04T15:00:00.000Z","タイトー海外",""},{"RHYTHMVADERS EX","2014-05-25T15:00:00.000Z","タイトー海外",""},{"RHYTHMVADERS 2","2015-01-21T15:00:00.000Z","タイトー海外",""},{"MUSICDIVER","--","タイトー海外",""},{"プリティーリズム","2010-07-14T15:00:00.000Z","タカラトミーアーツ",""},{"プリティーリズム・ミニスカート","2010-07-14T15:00:00.000Z","タカラトミーアーツ",""},{"プリティーリズム・オーロラドリーム","2011-04-27T15:00:00.000Z","タカラトミーアーツ",""},{"プリティーリズム・ディアマイフューチャー","2012-04-25T15:00:00.000Z","タカラトミーアーツ",""},{"プリティーリズム・レインボーライブ","2013-04-17T15:00:00.000Z","タカラトミーアーツ",""},{"プリティーリズム・レインボーライブデュオ","2013-10-02T15:00:00.000Z","タカラトミーアーツ",""},{"プリティーリズム・オールスターレジェンドコーデ編","2014-04-16T15:00:00.000Z","タカラトミーアーツ",""},{"プリパラ","2014-07-09T15:00:00.000Z","タカラトミーアーツ",""},{"アイドルタイムプリパラ","2017-03-31T15:00:00.000Z","タカラトミーアーツ",""},{"キラッとプリ☆チャン","2018-04-18T15:00:00.000Z","タカラトミーアーツ",""},{"プリパラ オールアイドルシリーズ","2019-10-16T15:00:00.000Z","タカラトミーアーツ",""},{"ワッチャプリマジ!","2021-09-30T15:00:00.000Z","タカラトミーアーツ",""},{"ひみつのアイプリ","2024-04-03T15:00:00.000Z","タカラトミーアーツ",""},{"WACCA","2019-07-17T15:00:00.000Z","マーベラス",""},{"WACCA S","2020-01-22T15:00:00.000Z","マーベラス",""},{"WACCA Lily","2020-09-16T15:00:00.000Z","マーベラス",""},{"WACCA Lily R","2021-03-10T15:00:00.000Z","マーベラス",""},{"WACCA Reverse","2021-08-09T15:00:00.000Z","マーベラス",""},{"音律炫动","2018-11-24T15:00:00.000Z","世宇科技",""},{"音律炫动5 SOUND VOLTEX ５","2020-04-30T15:00:00.000Z","世宇科技稼働月",""},{"E舞成名 网络版 (E5 ONLINE)","2010-12-31T15:00:00.000Z","广州史可威动漫科技有限公司稼働年",""},{"太鼓之达人12 亚洲版","2009-06-25T15:00:00.000Z","华立科技(Wahlap)",""},{"DANZ BASE","2011-11-20T15:00:00.000Z","华立科技(Wahlap)",""},{"舞者之星","2012-05-02T15:00:00.000Z","华立科技(Wahlap)",""},{"星光","2012-05-09T15:00:00.000Z","华立科技(Wahlap)",""},{"星光2代","2016-06-16T15:00:00.000Z","华立科技(Wahlap)",""},{"舞萌DX","2019-12-04T15:00:00.000Z","华立科技(Wahlap)",""},{"舞萌DX 2022","2022-06-22T15:00:00.000Z","华立科技(Wahlap)",""},{"中二节奏NEW!!","2022-07-07T15:00:00.000Z","华立科技(Wahlap)",""},{"舞萌DX 2023","2023-06-07T15:00:00.000Z","华立科技(Wahlap)",""},{"中二节奏 2024","2023-09-20T15:00:00.000Z","华立科技(Wahlap)",""},{"舞萌DX 2024","2024-06-05T15:00:00.000Z","华立科技(Wahlap)",""},{"中二节奏 2025","2024-09-24T15:00:00.000Z","华立科技(Wahlap)",""},{"舞萌","2012-08-31T15:00:00.000Z","华立科技(Wahlap)稼働月",""},{"舞萌DX 2021","2021-04-30T15:00:00.000Z","华立科技(Wahlap)稼働月",""},{"Dance Core Rhythm and Music 舞者之星","2012-12-31T15:00:00.000Z","华立科技(Wahlap)稼働年",""},{"音炫轨道","2018-12-31T15:00:00.000Z","华立科技(Wahlap)稼働年",""},{"DANCERUSH STARDOM 舞律炫步","2019-01-20T15:00:00.000Z","",""},{"D Dance Master","--","",""},{"Quantum DANCE (Kinect Dance)","--","",""},{"Small Pianist","--","",""},{"Converted Kinect Dance Cabinet","--","",""},{"魔法-magic-","--","",""},{"天才小鼓手","","安志尔供应天才小鼓手",""},{"海绵宝敲击鼓","","安德米罗的海绵宝敲击鼓",""},{"太鼓达人","","威利的太鼓达人",""},{"音乐棚","","育康供应音乐棚",""},{"音乐盒子","","音乐盒子_神采飞扬",""},{"音炫疯","","音炫疯_宝辉",""},{"音炫疯","","音炫疯-宝辉",""},{"音炫风","","音炫风_通法",""},{"快乐影音","","快乐影音_快乐时光",""},{"3D欢歌乐总汇","","海若的3D欢歌乐总汇",""},{"舞立方","","海若的舞立方",""},{"欢乐唱吧","","海若的欢乐唱吧",""},{"乐动弹球","","冠达的乐动弹球",""},{"音乐弹球","","希力的音乐弹球",""},{"欢唱魔盒","","希力的欢唱魔盒",""},{"炫次方2代","","希力的炫次方2代",""},{"节奏冲击","","希力的节奏冲击",""},{"DJ MAX","","宜佳软件的DJ MAX",""},{"欢乐KTV","","吉星雨（科达）的欢乐KTV",""},{"吉他鼓手","","吉他鼓手,马宇",""},{"吉他高手XG","","吉他高手XG_华立",""},{"童一首歌","","久游供应童一首歌",""},{"超级劲乐园","","久娱的超级劲乐园",""},{"狂热鼓手","","狂热鼓手 谷微动漫",""},{"狂热鼓手XG","","狂热鼓手XG_华立",""},{"狂热电子鼓舞台版","","狂热电子鼓舞台版_华顺",""},{"音乐贝贝","","金妙机台供应音乐贝贝",""},{"弹珠GOGOGO(2)","","金妙电子供应弹珠GOGOGO 2",""},{"钢琴块儿","","源盛供应钢琴块儿",""},{"鼓王3代","","鼓王3代_华立",""},{"鼓舞飞扬","","鼓舞飞扬_快乐时光",""},{"鼓舞飞扬","","鼓舞飞扬_快乐时光娱乐",""},{"欢乐小鼓","","光阳的欢乐小鼓",""},{"终极鼓手","","宏冠的终极鼓手",""},{"终极鼓手超级现场版","","宏冠的终极鼓手超级现场版",""},{"节奏大师","","弘拓供应节奏大师",""},{"钢琴贝贝","","弘拓供应钢琴贝贝",""},{"拍拍学习乐(红)","","皇粤供应拍拍学习乐红",""},{"拍拍学习乐(绿)","","皇粤供应拍拍学习乐绿",""},{"拍拍学习乐(蓝)","","皇粤供应拍拍学习乐蓝",""},{"饿唱","","皇粤供应饿唱",""},{"莫扎特2代","","肯琰优的莫扎特2代",""},{"豪华版终极鼓手","","豪华版终极鼓手_宏冠",""},{"GuitarFreaks XG 狂热鼓手","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"爵士英雄","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"手指音乐家","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"小魔指","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"青春鼓手","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"滚石DJ4.5代","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"电子爵士鼓","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"鑫豪","","在这里,有品种类别最齐全的音乐机系列机台图片资料,以及音乐机台台供应商,生产厂商以及音乐机台报价",""},{"音乐彩球","","三富供应音乐彩球",""},{"电子鼓","","三富供应电子鼓",""},{"手舞足蹈5代","","手舞足蹈5代_艺乐动漫",""},{"音乐旋风","","尚派供应音乐旋风",""},{"鼓王3代","","尚派供应鼓王3代",""},{"手舞足蹈5代","","尚派供应手舞足蹈5代",""},{"青春豉手","","尚派供应青春豉手",""},{"太古达人12代","","尚派供应太古达人12代",""},{"超级爵士鼓2010(舞台版)","","尚派供应超级爵士鼓2010舞台版",""},{"魔方（带动感）","","尚派供应魔方（带动感）",""},{"魔法2代","","尚派供应魔法2代",""},{"梦幻DJ","","尚派供应梦幻DJ",""},{"吉它英雄(原装)","","尚派的吉它英雄原装",""},{"鼓王2008(原装)","","尚派的鼓王2008原装",""},{"鼓王加强版(原装)","","尚派的鼓王加强版原装",""},{"爵士鼓舞台版","","尚派的爵士鼓舞台版",""},{"小鼓王","","尚派的小鼓王",""},{"超级爵士鼓(原装)","","尚派的超级爵士鼓原装",""},{"魔法2代","","尚派的魔法2代",""},{"魔法III代","","尚派的魔法III代",""},{"滚石DJ3.5代(原装)","","尚派的滚石DJ3.5代原装",""},{"滚石DJ5代(原装)","","尚派的滚石DJ5代原装",""},{"动感魔方","","新大地的动感魔方",""},{"滚石DJ3.5代","","新大地的滚石DJ3.5代",""},{"DJMAX旋风3代","","世宇科技的DJMAX旋风3代",""},{"超级劲舞团","","世宇科技的超级劲舞团",""},{"点唱机","","世乐的点唱机",""},{"欢歌乐总汇","","成辉的欢歌乐总汇",""},{"星光","","星光_华立",""},{"鼓琴争霸","","星光供应十二星座",""},{"音我成名","","星光动漫供应音我成名",""},{"童一首歌","","星光动漫供应童一首歌",""},{"青春旋律","","青春旋律_华泰电子",""},{"挂壁式B1","","千禾供应挂壁式B1",""},{"挂壁式B2","","千禾供应挂壁式B2",""},{"歌神(mini)","","千惠机台供应歌神mini",""},{"歌神（mini）","","千惠供应歌神（mini）",""},{"嗨D","","千惠供应嗨D",""},{"红人荟网红直播间","","千惠供应红人荟网红直播间",""},{"双人豪华型魔法","","双人豪华型魔法_快乐时光娱乐",""},{"争分夺秒","","争分夺秒_金刚",""},{"打鼓英雄","","台宝供应打鼓英雄",""},{"打鼓英雄","","台宝的打鼓英雄",""},{"DJ","","大华高科供应DJ",""},{"麦王争霸","","大华高科供应麦王争霸",""},{"魔法","","大华高科供应魔法",""},{"乐动魔方","","大华高科供应乐动魔方",""},{"好歌声盛典","","拓鑫供应好歌声盛典",""},{"好歌声盛典（触屏版）","","拓鑫供应好歌声盛典（触屏版）",""},{"好歌声盛典（非触屏版）","","拓鑫供应好歌声盛典（非触屏版）",""},{"DJ旋风","","谷微动漫的DJ旋风",""},{"终极鼓手","","谷微动漫的终极鼓手",""},{"DJ高手","","中山光阳的DJ高手",""},{"钢琴小天使","","中山星光供应钢琴小天使",""},{"咪咪鼓","","中山星娱的咪咪鼓",""},{"音乐滚筒","","中山泰乐供应音乐滚筒",""},{"鼓王2008","","中文名称 鼓王2008 出厂日期 2008-08-12 销售热线 020-23885118",""},{"太鼓达人","","中文名称 太鼓达人12 出厂日期 2009-08-06 销售热线 020-23885118",""},{"滚石5代","","中文名称 滚石5 出厂日期 2006-09-03 销售热线 020-23885118",""},{"音乐枪枪","","中文名称： 音乐枪枪 推荐指数： 出厂日期： 2010-05-15 销售热线： 020-23885118 游戏类别： > 音乐类 > TAITO",""},{"鼓舞达人","","中艺的鼓舞达人",""},{"超级爵士鼓","","超级爵士鼓_富佳",""},{"超级爵士鼓舞台版二代","","超级爵士鼓舞台版二代_富佳",""},{"超级电子鼓","","超级电子鼓_华晨",""},{"音炫疯","","展晖供应音炫疯",""},{"水果钢琴","","南玮星供应水果钢琴",""},{"狂热电子鼓","","南玮星的狂热电子鼓",""},{"魔法","","南玮星的魔法",""},{"麦王争霸","","麦王争霸_大华高科",""},{"麦王争霸","","麦王争霸_通法",""},{"麦王争霸","","麦王争霸_通法科技",""},{"2015爵士鼓普通版","","富佳供应2015爵士鼓普通版",""},{"2017爵士鼓普通版","","富佳供应2017爵士鼓普通版",""},{"神曲","","富佳供应神曲",""},{"超级爵士鼓X","","富佳供应超级爵士鼓X",""},{"莫扎特2代","","富佳供应莫扎特2代",""},{"超级爵士鼓舞台版","","富佳的超级爵士鼓舞台版",""},{"舞王争霸一代流光幻音","","舞王争霸一代流光幻音_雄翔雄业",""},{"舞台版爵士鼓","","舞台版爵士鼓_雄翔雄业",""},{"舞之魂","","舞之魂 谷微动漫",""},{"舞林大会","","舞林大会_华夏电子",""},{"舞王争霸3","","分类：游艺,编号：656,备案号：656,机台名称：舞王争霸3,产品名称及型号：舞王争霸3,产品功率：1300W,产权拥有人：广州市雄翔动漫科技有限公司,企业名称：广州市雄翔动漫科技有限公司,联系人：黄喜武,电话：13808899121、020-34882190,传真：020-34882699,地址：广州市番禺区石基镇金山村华创动漫产业园B12,邮政编号：511400",""},{"DJ MAX","","宝伦的DJ MAX",""},{"音炫疯","","宝辉的音炫疯",""},{"疯狂鼓手","","宝辉的疯狂鼓手",""},{"超级爵士鼓2010舞台版","","宝达供应超级爵士鼓2010舞台版",""},{"魔幻弹珠","","魔幻弹珠_谷微动漫",""},{"魔幻节拍","","魔幻节拍_皓顺动漫科技",""},{"魔方","","魔方_名冠宝冠）",""},{"魔方（带动感）","","魔方（带动感）_名冠宝冠）",""},{"欢乐 KTV","","名冠宝冠）的欢乐 KTV",""},{"我是直播歌手","","雄翔供应我是直播歌手",""},{"欢乐K吧","","雄翔的欢乐K吧",""},{"烈火飚车","","烈火飚车_金刚",""},{"梦幻麦霸","","梦幻麦霸_华顺",""},{"梦幻麦霸普通版","","梦幻麦霸普通版_华顺",""},{"音乐冲冲冲","","广州嘉万儿童娱乐设备有限公司",""},{"音乐潮人","","广州市凯昌电子有限公司",""},{"鼓王3","","泛亚育乐的鼓王3",""},{"DrumMania XG 吉他高手","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"音乐机","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"手指指","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"手舞足蹈","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"手舞足蹈3.5","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"星光灿烂","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"中华鼓王","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"魔法","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"魔法跳跳球","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"魅力DJ","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"梦幻DJ2010","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"乐动魔方","","游艺风机台图片库,包含最新游艺设备,最新大型游戏机台,游戏机配件,游戏机台供应商,生产商,在这里,你可以找到你想要的机台最新资料与信息",""},{"咪哒 show","","艾美供应咪哒 show",""},{"咪哒唱吧","","艾美供应咪哒唱吧",""},{"滴滴K歌","","迪威尔供应滴滴K歌",""},{"迪迪K歌","","迪威尔供应迪迪K歌",""},{"咪咪鼓","","乐米的咪咪鼓",""},{"DJMAX旋风Ⅱ","","产品名称：DJMAX旋风Ⅱ 上市日期2010年9月 产品介绍： 新一代的DJMAX旋风Ⅱ继承了初代产品时尚的总体外观设计，沿用了双屏显示以及22寸的大型触摸操作界面之余，进而并强化了声音输出环境",""},{"音域对抗","","产品名称：音域对抗 上市日期2010年10月 研发商：希力科技电子有限公司",""},{"音乐小鼓手","","务衡科技",""},{"动感魔方","","动感魔方_新大地",""},{"动感魔方","","动感魔方_新大地科技",""},{"动感魔方","","动感魔方_华顺",""},{"动感魔方","","动感魔方_阳光动漫",""},{"动感魔方4代","","动感魔方4代_聪杰",""},{"动感魔方4代-双人","","动感魔方4代-双人_金刚",""},{"动感节奏","","动感节奏_华泰",""},{"动感节拍","","动感节拍_尚莹",""},{"动感节拍","","动感节拍_尚莹电子",""},{"太古三国","","华秦供应太古三国",""},{"秦乐疯","","华秦的秦乐疯",""},{"舞立方","","华秦的舞立方",""},{"明星大节奏双人","","华泰供应明星大节奏双人",""},{"节奏大明星单人","","华泰供应节奏大明星单人",""},{"旋转的风采","","华泰的旋转的风采",""},{"节奏大明星","","华泰的节奏大明星",""},{"节奏大明星双人版","","华泰的节奏大明星双人版",""},{"乐动弹球","","华峰（圣宇）的乐动弹球",""},{"鼓王3代","","华立的鼓王3代",""},{"点唱机","","华乐供应点唱机",""},{"狂热电子鼓","","华顺的狂热电子鼓",""},{"迷你自助k吧","","唛秀供应迷你自助k吧",""},{"嘟嘟music","","嘟嘟糖供应嘟嘟music",""},{"钢琴达人","","嘟嘟糖供应钢琴达人",""},{"动感曲棍球","","德宝供应动感曲棍球",""},{"钢琴块儿","","德宝供应钢琴块儿",""},{"滚石DJ3.5代","","滚石DJ3.5代_新大地科技",""},{"炫舞PAPAPA","","炫舞PAPAPA_台湾智象",""},{"炫舞机","","炫舞机_宇宙动漫",""},{"热舞宝贝","","热舞宝贝_宏腾科技",""},{"热舞宝贝","","热舞宝贝_雄翔雄业",""},{"热舞宝贝","","热舞宝贝_华顺",""},{"热舞宝贝","","热舞宝贝_华顺科技",""},{"热舞宝贝","","热舞宝贝_迈腾动漫科技",""},{"K歌之王","","环游的K歌之王",""},{"爵士鼓2011","","环游的爵士鼓2011",""},{"魔法3代","","环游的魔法3代",""},{"电子鼓","","电子鼓_三富科技",""},{"终极鼓手现场版","","终极鼓手现场版_宏冠",""},{"终极鼓舞","","终极鼓舞_谷微动漫",""},{"音乐快手","","胜骅科技",""},{"音乐快手","","胜骅供应音乐快手",""},{"梦幻钢琴（不含地台）","","胜骅供应梦幻钢琴",""},{"钢琴小神童","","胜骅供应钢琴小神童",""},{"钢琴块儿","","胜骅供应钢琴块儿",""},{"节奏大明星","","节奏大明星_华泰",""},{"赛龙舟","","赛龙舟_光阳浓阳",""},{"钢琴块儿","","鑫海达供应钢琴块儿",""},{"动感魔方","","阳光动漫供应动感魔方",""},{"欢乐K歌","","阳光动漫供应欢乐K歌",""},{"欢乐K歌","","阳光动漫的欢乐K歌",""},{"韩国DJ-6","","韩国DJ-6",""},{"滚滚乐","","顺宏供应滚滚乐",""},{"舞立方","","顺宏的舞立方",""},{"欢乐小鼓","","顺宏的欢乐小鼓",""},{"练歌房","","顺宏的练歌房",""},{"歌神","","颖品供应歌神",""},{"自助录音棚","","风云再起供应自助录音棚",""},{"钢琴贝贝","","鸿拓供应钢琴贝贝",""},{"DANCEBATTLE","","",""},{"DANCELIVE","","",""},{"DJ BEAT","","",""},{"音乐机","","",""},{"音乐小鼓手","","",""},{"楽動魔方","","",""},{"魔乐","","",""},{"爵士英雄","","",""},{"爵士英雄2","","",""},{"魔法X","","",""},{"迷乐世界","","",""},{"动感魔方","","",""},{"华卡音舞2","","",""},{"咪哒唱吧","","",""},{"哆蕾咪","","",""},{"钢琴小天使2","","",""}}
imasb='{"cg":[["1997-12-10T00:00:00+09:00","beatmania","beatmania"],["1998-03-18T00:00:00+09:00","beatmania 2ndMIX","beatmania 2ndMIX"],["1998-09-28T00:00:00+09:00","beatmania 3rdMIX","beatmania 3rdMIX"],["1999-04-26T00:00:00+09:00","beatmania 4thMIX  the beat goes on ","beatmania 4thMIX  the beat goes on "],["1999-09-22T00:00:00+09:00","beatmania 5thMIX  Time to get down ","beatmania 5thMIX  Time to get down "],["2001-07-11T00:00:00+09:00","beatmania 6thMIX  THE UK UNDERGROUND MUSIC ","beatmania 6thMIX  THE UK UNDERGROUND MUSIC "],["2002-01-31T00:00:00+09:00","beatmania 7thMIX  keepin’ evolution ","beatmania 7thMIX  keepin’ evolution "],["2000-03-28T00:00:00+09:00","beatmania ClubMIX","beatmania ClubMIX"],["1999-01-19T00:00:00+09:00","beatmania complete MIX","beatmania complete MIX"],["2000-01-27T00:00:00+09:00","beatmania complete MIX 2","beatmania complete MIX 2"],["2000-11-28T00:00:00+09:00","beatmania CORE REMIX","beatmania CORE REMIX"],["2000-05-31T00:00:00+09:00","beatmania featuring DREAMS COME TRUE","beatmania featuring DREAMS COME TRUE"],["1999-02-26T00:00:00+09:00","beatmania IIDX","beatmania IIDX"],["2004-02-18T00:00:00+09:00","beatmania IIDX 10th style","beatmania IIDX 10th style"],["2004-10-28T00:00:00+09:00","beatmania IIDX 11 IIDX RED","beatmania IIDX 11 IIDX RED"],["2005-07-13T00:00:00+09:00","beatmania IIDX 12 HAPPY SKY","beatmania IIDX 12 HAPPY SKY"],["2006-03-15T00:00:00+09:00","beatmania IIDX 13 DistorteD","beatmania IIDX 13 DistorteD"],["2007-02-21T00:00:00+09:00","beatmania IIDX 14 GOLD","beatmania IIDX 14 GOLD"],["2007-12-19T00:00:00+09:00","beatmania IIDX 15 DJ TROOPERS","beatmania IIDX 15 DJ TROOPERS"],["2008-11-19T00:00:00+09:00","beatmania IIDX 16 EMPRESS","beatmania IIDX 16 EMPRESS"],["2009-10-21T00:00:00+09:00","beatmania IIDX 17 SIRIUS","beatmania IIDX 17 SIRIUS"],["2010-09-15T00:00:00+09:00","beatmania IIDX 18 Resort Anthem","beatmania IIDX 18 Resort Anthem"],["2011-09-15T00:00:00+09:00","beatmania IIDX 19 Lincle","beatmania IIDX 19 Lincle"],["2012-09-19T00:00:00+09:00","beatmania IIDX 20 tricoro","beatmania IIDX 20 tricoro"],["2013-11-13T00:00:00+09:00","beatmania IIDX 21 SPADA","beatmania IIDX 21 SPADA"],["2014-09-17T00:00:00+09:00","beatmania IIDX 22 PENDUAL","beatmania IIDX 22 PENDUAL"],["2015-11-11T00:00:00+09:00","beatmania IIDX 23 copula ","beatmania IIDX 23 copula "],["2016-10-26T00:00:00+09:00","beatmania IIDX 24 SINOBUZ","beatmania IIDX 24 SINOBUZ"],["2017-12-21T00:00:00+09:00","beatmania IIDX 25 CANNON BALLERS","beatmania IIDX 25 CANNON BALLERS"],["2018-11-07T00:00:00+09:00","beatmania IIDX 26 Rootage","beatmania IIDX 26 Rootage"],["2019-10-16T00:00:00+09:00","beatmania IIDX 27 HEROIC VERSE","beatmania IIDX 27 HEROIC VERSE"],["2020-10-28T00:00:00+09:00","beatmania IIDX 28 BISTROVER","beatmania IIDX 28 BISTROVER"],["2021-10-13T00:00:00+09:00","beatmania IIDX 29 CastHour","beatmania IIDX 29 CastHour"],["1999-09-30T00:00:00+09:00","beatmania IIDX 2nd style","beatmania IIDX 2nd style"],["2022-10-19T00:00:00+09:00","beatmania IIDX 30 RESIDENT","beatmania IIDX 30 RESIDENT"],["2023-10-18T00:00:00+09:00","beatmania IIDX 31 EPOLIS","beatmania IIDX 31 EPOLIS"],["2024-10-09T00:00:00+09:00","beatmania IIDX 32 Pinky Crush","beatmania IIDX 32 Pinky Crush"],["2000-02-25T00:00:00+09:00","beatmania IIDX 3rd style","beatmania IIDX 3rd style"],["2000-09-28T00:00:00+09:00","beatmania IIDX 4th style","beatmania IIDX 4th style"],["2001-03-27T00:00:00+09:00","beatmania IIDX 5th style","beatmania IIDX 5th style"],["2001-09-28T00:00:00+09:00","beatmania IIDX 6th style","beatmania IIDX 6th style"],["2002-03-27T00:00:00+09:00","beatmania IIDX 7th style","beatmania IIDX 7th style"],["2002-09-27T00:00:00+09:00","beatmania IIDX 8th style","beatmania IIDX 8th style"],["2003-06-25T00:00:00+09:00","beatmania IIDX 9th style","beatmania IIDX 9th style"],["1999-07-27T00:00:00+09:00","beatmania IIDX substream","beatmania IIDX substream"],["2000-03-08T00:00:00+09:00","beatmania III","beatmania III"],["2001-07-11T00:00:00+09:00","beatmania III APPEND 6thMIX","beatmania III APPEND 6thMIX"],["2002-01-26T00:00:00+09:00","beatmania III APPEND 7thMIX","beatmania III APPEND 7thMIX"],["2000-12-21T00:00:00+09:00","beatmania III APPEND CORE REMIX","beatmania III APPEND CORE REMIX"],["2002-08-26T00:00:00+09:00","beatmania III THE FINAL","beatmania III THE FINAL"],["--","beatstage II","beatstage II"],["2014-07-17T00:00:00+09:00","BeatStream","BeatStream"],["2015-12-21T00:00:00+09:00","BeatStream アニムトライヴ","BeatStream アニムトライヴ"],["2005-06-23T00:00:00+09:00","DANCE 86.4 FUNKY RADIO STATION","DANCE 86.4 FUNKY RADIO STATION"],["2022-03-03T00:00:00+09:00","DANCE aROUND","DANCE aROUND"],["2013-03-14T00:00:00+09:00","Dance Dance Revolution","Dance Dance Revolution"],["1998-09-26T00:00:00+09:00","Dance Dance Revolution （初代）","Dance Dance Revolution （初代）"],["1999-01-29T00:00:00+09:00","Dance Dance Revolution 2ndMIX","Dance Dance Revolution 2ndMIX"],["1999-05-06T00:00:00+09:00","Dance Dance Revolution 2ndMIX CLUB VERSION","Dance Dance Revolution 2ndMIX CLUB VERSION"],["1999-07-27T00:00:00+09:00","Dance Dance Revolution 2ndMIX CLUB VERSION 2","Dance Dance Revolution 2ndMIX CLUB VERSION 2"],["1999-04-28T00:00:00+09:00","Dance Dance Revolution 2ndMIX LINK VERSION","Dance Dance Revolution 2ndMIX LINK VERSION"],["1999-10-30T00:00:00+09:00","Dance Dance Revolution 3rdMIX","Dance Dance Revolution 3rdMIX"],["2000-06-21T00:00:00+09:00","Dance Dance Revolution 3rdMIX PLUS","Dance Dance Revolution 3rdMIX PLUS"],["--","Dance Dance Revolution 3rdMIX ver Korea","Dance Dance Revolution 3rdMIX ver Korea"],["--","Dance Dance Revolution 3rdMIX ver Korea 2","Dance Dance Revolution 3rdMIX ver Korea 2"],["2000-08-24T00:00:00+09:00","Dance Dance Revolution 4thMIX","Dance Dance Revolution 4thMIX"],["2000-12-28T00:00:00+09:00","Dance Dance Revolution 4thMIX PLUS","Dance Dance Revolution 4thMIX PLUS"],["2001-05-02T00:00:00+09:00","Dance Dance Revolution 5thMIX","Dance Dance Revolution 5thMIX"],["2016-03-30T00:00:00+09:00","Dance Dance Revolution A","Dance Dance Revolution A"],["2016-04-04T00:00:00+09:00","Dance Dance Revolution A,KR","Dance Dance Revolution A,KR"],["2016-07-06T00:00:00+09:00","Dance Dance Revolution A,US","Dance Dance Revolution A,US"],["2019-07-24T00:00:00+09:00","Dance Dance Revolution A20","Dance Dance Revolution A20"],["2019-03-20T00:00:00+09:00","Dance Dance Revolution A20","Dance Dance Revolution A20"],["2020-07-01T00:00:00+09:00","Dance Dance Revolution A20 PLUS","Dance Dance Revolution A20 PLUS"],["2020-07-06T00:00:00+09:00","Dance Dance Revolution A20 PLUS,旧台","Dance Dance Revolution A20 PLUS,旧台"],["2019-08-01T00:00:00+09:00","Dance Dance Revolution A20,KR","Dance Dance Revolution A20,KR"],["2019-09-24T00:00:00+09:00","Dance Dance Revolution A20,US","Dance Dance Revolution A20,US"],["2003-01-29T00:00:00+09:00","Dance Dance Revolution EXTREME","Dance Dance Revolution EXTREME"],["1998-11-18T00:00:00+09:00","Dance Dance Revolution Internet Ranking Version","Dance Dance Revolution Internet Ranking Version"],["2000-12-01T00:00:00+09:00","Dance Dance Revolution Kids","Dance Dance Revolution Kids"],["1999-12-16T00:00:00+09:00","Dance Dance Revolution Solo 2000","Dance Dance Revolution Solo 2000"],["2000-12-28T00:00:00+09:00","Dance Dance Revolution Solo 4thMix","Dance Dance Revolution Solo 4thMix"],["1999-08-19T00:00:00+09:00","Dance Dance Revolution Solo BASS MIX","Dance Dance Revolution Solo BASS MIX"],["2006-07-12T00:00:00+09:00","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA"],["2006-04-01T00:00:00+09:00","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,EU","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,EU"],["2006-05-01T00:00:00+09:00","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,US","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,US"],["2007-08-22T00:00:00+09:00","Dance Dance Revolution SuperNOVA2","Dance Dance Revolution SuperNOVA2"],["2008-01-18T00:00:00+09:00","Dance Dance Revolution SuperNOVA2,US","Dance Dance Revolution SuperNOVA2,US"],["2008-12-24T00:00:00+09:00","Dance Dance Revolution X","Dance Dance Revolution X"],["2009-06-09T00:00:00+09:00","Dance Dance Revolution X,EU","Dance Dance Revolution X,EU"],["2009-06-03T00:00:00+09:00","Dance Dance Revolution X,US","Dance Dance Revolution X,US"],["2010-07-07T00:00:00+09:00","Dance Dance Revolution X2","Dance Dance Revolution X2"],["2011-05-13T00:00:00+09:00","Dance Dance Revolution X2,EU","Dance Dance Revolution X2,EU"],["2010-12-31T00:00:00+09:00","Dance Dance Revolution X2,US","Dance Dance Revolution X2,US"],["2011-11-16T00:00:00+09:00","Dance Dance Revolution X3 VS 2ndMIX","Dance Dance Revolution X3 VS 2ndMIX"],["2001-01-01T00:00:00+09:00","Dance Dance RevolutionUSA","Dance Dance RevolutionUSA"],["2000-06-21T00:00:00+09:00","Dance Maniax","Dance Maniax"],["2000-12-05T00:00:00+09:00","Dance Maniax 2ndMIX","Dance Maniax 2ndMIX"],["2001-04-19T00:00:00+09:00","Dance Maniax 2ndMIX APPEND J☆PARADISE","Dance Maniax 2ndMIX APPEND J☆PARADISE"],["2022-03-17T00:00:00+09:00","DanceDanceRevolution A3","DanceDanceRevolution A3"],["2022-06-22T00:00:00+09:00","DanceDanceRevolution A3,旧X白","DanceDanceRevolution A3,旧X白"],["2024-06-12T00:00:00+09:00","DanceDanceRevolution WORLD","DanceDanceRevolution WORLD"],["2012-03-27T00:00:00+09:00","DanceEvolution ARCADE","DanceEvolution ARCADE"],["--","DanceEvolutionArcade舞蹈进化","DanceEvolutionArcade舞蹈进化"],["2018-03-23T00:00:00+09:00","DANCERUSH STARDOM","DANCERUSH STARDOM"],["--","Dancing Stage","Dancing Stage"],["2002-08-01T00:00:00+09:00","Dancing Stage EUroMIX2","Dancing Stage EUroMIX2"],["2000-11-30T00:00:00+09:00","Dancing Stage featuring Disney’s RAVE","Dancing Stage featuring Disney’s RAVE"],["1999-12-25T00:00:00+09:00","Dancing Stage featuring DREAMS COME TRUE","Dancing Stage featuring DREAMS COME TRUE"],["1999-07-27T00:00:00+09:00","Dancing Stage featuring TRUE KiSS DESTiNATiON","Dancing Stage featuring TRUE KiSS DESTiNATiON"],["2005-01-01T00:00:00+09:00","Dancing Stage Fusion","Dancing Stage Fusion"],["--","Dancing StageEUroMIX","Dancing StageEUroMIX"],["2001-11-24T00:00:00+09:00","DDRMAX  Dance Dance Revolution 6thMIX ","DDRMAX  Dance Dance Revolution 6thMIX "],["2002-05-01T00:00:00+09:00","DDRMAX2  Dance Dance Revolution 7thMIX ","DDRMAX2  Dance Dance Revolution 7thMIX "],["2010-12-21T00:00:00+09:00","DJMAXTECHNICA(JP)","DJMAXTECHNICA(JP)"],["2012-09-27T00:00:00+09:00","DJMAXTECHNICA2(JP)","DJMAXTECHNICA2(JP)"],["1999-07-21T00:00:00+09:00","drummania","drummania"],["2004-04-22T00:00:00+09:00","drummania 10thMIX","drummania 10thMIX"],["2000-03-27T00:00:00+09:00","drummania 2ndMIX","drummania 2ndMIX"],["2000-09-13T00:00:00+09:00","drummania 3rdMIX","drummania 3rdMIX"],["2001-03-17T00:00:00+09:00","drummania 4thMIX","drummania 4thMIX"],["2001-09-13T00:00:00+09:00","drummania 5thMIX","drummania 5thMIX"],["2002-02-28T00:00:00+09:00","drummania 6thMIX","drummania 6thMIX"],["2002-08-30T00:00:00+09:00","drummania 7thMIX","drummania 7thMIX"],["2002-11-29T00:00:00+09:00","drummania 7thMIX power up ver.","drummania 7thMIX power up ver."],["2003-04-02T00:00:00+09:00","drummania 8thMIX","drummania 8thMIX"],["2003-10-08T00:00:00+09:00","drummania 9thMIX","drummania 9thMIX"],["2005-02-23T00:00:00+09:00","DrumManiaV","DrumManiaV"],["2005-11-24T00:00:00+09:00","DrumManiaV2","DrumManiaV2"],["2006-09-13T00:00:00+09:00","DrumManiaV3","DrumManiaV3"],["2007-08-08T00:00:00+09:00","DrumManiaV4 Яock×Rock","DrumManiaV4 Яock×Rock"],["2008-06-18T00:00:00+09:00","DrumManiaV5 Rock to Infinity","DrumManiaV5 Rock to Infinity"],["2009-04-09T00:00:00+09:00","DrumManiaV6 BLAZING!!!!","DrumManiaV6 BLAZING!!!!"],["2010-03-25T00:00:00+09:00","DrumManiaV7","DrumManiaV7"],["2011-03-28T00:00:00+09:00","DrumManiaV8","DrumManiaV8"],["2013-02-14T00:00:00+09:00","GITADORA","GITADORA"],["2018-09-12T00:00:00+09:00","GITADORA EXCHAIN","GITADORA EXCHAIN"],["2022-12-14T00:00:00+09:00","GITADORA FUZZ UP","GITADORA FUZZ UP"],["2024-03-13T00:00:00+09:00","GITADORA GALAXY WAVE","GITADORA GALAXY WAVE"],["2017-09-06T00:00:00+09:00","GITADORA Matixx","GITADORA Matixx"],["2019-10-02T00:00:00+09:00","GITADORA NEX＋AGE","GITADORA NEX＋AGE"],["2014-03-05T00:00:00+09:00","GITADORA OverDrive","GITADORA OverDrive"],["2015-04-21T00:00:00+09:00","GITADORA Tri Boost","GITADORA Tri Boost"],["2016-12-14T00:00:00+09:00","GITADORA Tri Boost Re:EVOLVE","GITADORA Tri Boost Re:EVOLVE"],["1999-03-15T00:00:00+09:00","GUITARFREAKS ","GUITARFREAKS "],["2003-10-08T00:00:00+09:00","GUITARFREAKS 10thMIX","GUITARFREAKS 10thMIX"],["2004-04-22T00:00:00+09:00","GUITARFREAKS 11thMIX","GUITARFREAKS 11thMIX"],["1999-07-10T00:00:00+09:00","GUITARFREAKS 2ndMIX ","GUITARFREAKS 2ndMIX "],["1999-09-01T00:00:00+09:00","GUITARFREAKS 2ndMIX Link version ","GUITARFREAKS 2ndMIX Link version "],["2000-04-21T00:00:00+09:00","GUITARFREAKS 3rdMIX","GUITARFREAKS 3rdMIX"],["2000-09-13T00:00:00+09:00","GUITARFREAKS 4thMIX","GUITARFREAKS 4thMIX"],["2001-03-17T00:00:00+09:00","GUITARFREAKS 5thMIX","GUITARFREAKS 5thMIX"],["2001-09-13T00:00:00+09:00","GUITARFREAKS 6thMIX","GUITARFREAKS 6thMIX"],["2002-02-28T00:00:00+09:00","GUITARFREAKS 7thMIX","GUITARFREAKS 7thMIX"],["2002-08-30T00:00:00+09:00","GUITARFREAKS 8thMIX","GUITARFREAKS 8thMIX"],["2002-11-29T00:00:00+09:00","GUITARFREAKS 8thMIX power up ver.","GUITARFREAKS 8thMIX power up ver."],["2003-04-02T00:00:00+09:00","GUITARFREAKS 9thMIX","GUITARFREAKS 9thMIX"],["2005-02-23T00:00:00+09:00","GuitarFreaksV","GuitarFreaksV"],["2005-11-24T00:00:00+09:00","GuitarFreaksV2","GuitarFreaksV2"],["2006-09-13T00:00:00+09:00","GuitarFreaksV3","GuitarFreaksV3"],["2007-08-08T00:00:00+09:00","GuitarFreaksV4 Яock×Rock","GuitarFreaksV4 Яock×Rock"],["2008-06-18T00:00:00+09:00","GuitarFreaksV5 Rock to Infinity","GuitarFreaksV5 Rock to Infinity"],["2009-04-09T00:00:00+09:00","GuitarFreaksV6 BLAZING!!!!","GuitarFreaksV6 BLAZING!!!!"],["2010-03-25T00:00:00+09:00","GuitarFreaksV7","GuitarFreaksV7"],["2011-03-28T00:00:00+09:00","GuitarFreaksV8","GuitarFreaksV8"],["2010-03-10T00:00:00+09:00","GuitarFreaksXG＆DrumManiaXG","GuitarFreaksXG＆DrumManiaXG"],["2011-03-09T00:00:00+09:00","GuitarFreaksXG2＆DrumManiaXG2","GuitarFreaksXG2＆DrumManiaXG2"],["2011-03-16T00:00:00+09:00","GuitarFreaksXG2＆DrumManiaXG2,SD","GuitarFreaksXG2＆DrumManiaXG2,SD"],["2012-02-23T00:00:00+09:00","GuitarFreaksXG3＆DrumManiaXG3","GuitarFreaksXG3＆DrumManiaXG3"],["2011-03-23T00:00:00+09:00","HELLO! POP’N MUSIC   ハロー! ポップンミュージック","HELLO! POP’N MUSIC   ハロー! ポップンミュージック"],["2008-07-24T00:00:00+09:00","jubeat","jubeat"],["2022-08-03T00:00:00+09:00","jubeat Ave.","jubeat Ave."],["2023-09-20T00:00:00+09:00","jubeat beyond the Ave. ","jubeat beyond the Ave. "],["2017-07-26T00:00:00+09:00","jubeat clan","jubeat clan"],["2011-09-15T00:00:00+09:00","jubeat copious","jubeat copious"],["2018-09-05T00:00:00+09:00","jubeat festo","jubeat festo"],["2010-07-29T00:00:00+09:00","jubeat knit","jubeat knit"],["2015-02-20T00:00:00+09:00","jubeat prop","jubeat prop"],["2016-03-30T00:00:00+09:00","jubeat Qubell","jubeat Qubell"],["2009-08-05T00:00:00+09:00","jubeat ripples","jubeat ripples"],["2012-09-25T00:00:00+09:00","jubeat saucer","jubeat saucer"],["2014-03-03T00:00:00+09:00","jubeat saucer fulfill","jubeat saucer fulfill"],["--","jubeat(リブート)","jubeat(リブート)"],["--","jubeat乐动魔方","jubeat乐动魔方"],["--","jubeat乐动魔方2代","jubeat乐动魔方2代"],["--","jubeat乐动魔方3代","jubeat乐动魔方3代"],["2000-02-06T00:00:00+09:00","KEYBOARDMANIA","KEYBOARDMANIA"],["2000-10-06T00:00:00+09:00","KEYBOARDMANIA 2ndMIX","KEYBOARDMANIA 2ndMIX"],["2001-03-15T00:00:00+09:00","KEYBOARDMANIA 3rdMIX","KEYBOARDMANIA 3rdMIX"],["2001-06-04T00:00:00+09:00","MAMBO A GO GO","MAMBO A GO GO"],["2002-03-01T00:00:00+09:00","MARTIALBEATアーケード","MARTIALBEATアーケード"],["2016-07-27T00:00:00+09:00","MÚSECA 1+1/2","MÚSECA 1+1/2"],["2015-12-10T00:00:00+09:00","MÚSECA(ミュゼカ）","MÚSECA(ミュゼカ）"],["--","NEW pop’n music Welcome to Wonderland!","NEW pop’n music Welcome to Wonderland!"],["2000-09-12T00:00:00+09:00","ParaParaParadise","ParaParaParadise"],["2000-12-26T00:00:00+09:00","ParaParaParadise 1st MIX Plus","ParaParaParadise 1st MIX Plus"],["2001-03-15T00:00:00+09:00","ParaParaParadise 2nd MIX","ParaParaParadise 2nd MIX"],["2000-10-24T00:00:00+09:00","ParaParaParadise V1.1","ParaParaParadise V1.1"],["1998-09-28T00:00:00+09:00","pop’n music   ポップンミュージック","pop’n music   ポップンミュージック"],["2003-08-06T00:00:00+09:00","pop’n music 10   ポップンミュージック10","pop’n music 10   ポップンミュージック10"],["2004-03-24T00:00:00+09:00","pop’n music 11   ポップンミュージック11","pop’n music 11   ポップンミュージック11"],["2004-12-08T00:00:00+09:00","pop’n music 12 いろは   ポップンミュージック12 いろは","pop’n music 12 いろは   ポップンミュージック12 いろは"],["2005-09-07T00:00:00+09:00","pop’n music 13 カーニバル   ポップンミュージック13 カーニバル","pop’n music 13 カーニバル   ポップンミュージック13 カーニバル"],["2006-05-17T00:00:00+09:00","pop’n music 14 FEVER!   ポップンミュージック14 フィーバー!","pop’n music 14 FEVER!   ポップンミュージック14 フィーバー!"],["2007-04-25T00:00:00+09:00","pop’n music 15 ADVENTURE   ポップンミュージック15 アドベンチャー","pop’n music 15 ADVENTURE   ポップンミュージック15 アドベンチャー"],["2008-03-24T00:00:00+09:00","pop’n music 16 PARTY♪   ポップンミュージック16 パーティー♪","pop’n music 16 PARTY♪   ポップンミュージック16 パーティー♪"],["2009-03-04T00:00:00+09:00","pop’n music 17 THE MOVIE   ポップンミュージック17 ザ・ムービー","pop’n music 17 THE MOVIE   ポップンミュージック17 ザ・ムービー"],["2010-01-20T00:00:00+09:00","pop’n music 18 せんごく列伝   ポップンミュージック18 せんごくれつでん","pop’n music 18 せんごく列伝   ポップンミュージック18 せんごくれつでん"],["2010-12-09T00:00:00+09:00","pop’n music 19 TUNE STREET   ポップンミュージック19 チューンストリート","pop’n music 19 TUNE STREET   ポップンミュージック19 チューンストリート"],["1999-03-26T00:00:00+09:00","pop’n music 2   ポップンミュージック2","pop’n music 2   ポップンミュージック2"],["2011-12-07T00:00:00+09:00","pop’n music 20 fantasia   ポップンミュージック20 ファンタジア","pop’n music 20 fantasia   ポップンミュージック20 ファンタジア"],["1999-09-16T00:00:00+09:00","pop’n music 3   ポップンミュージック3","pop’n music 3   ポップンミュージック3"],["2000-03-16T00:00:00+09:00","pop’n music 4   ポップンミュージック4","pop’n music 4   ポップンミュージック4"],["2000-11-17T00:00:00+09:00","pop’n music 5   ポップンミュージック5","pop’n music 5   ポップンミュージック5"],["2001-05-11T00:00:00+09:00","pop’n music 6   ポップンミュージック6","pop’n music 6   ポップンミュージック6"],["2001-11-22T00:00:00+09:00","pop’n music 7   ポップンミュージック7","pop’n music 7   ポップンミュージック7"],["2002-05-30T00:00:00+09:00","pop’n music 8   ポップンミュージック8","pop’n music 8   ポップンミュージック8"],["2002-12-26T00:00:00+09:00","pop’n music 9   ポップンミュージック9","pop’n music 9   ポップンミュージック9"],["2015-11-26T00:00:00+09:00","pop’n music éclale   ポップンミュージック エクラル","pop’n music éclale   ポップンミュージック エクラル"],["2024-09-25T00:00:00+09:00","pop’n music Jam&Fizz","pop’n music Jam&Fizz"],["2018-10-17T00:00:00+09:00","pop’n music peace   ポップンミュージック ピース","pop’n music peace   ポップンミュージック ピース"],["2012-12-05T00:00:00+09:00","pop’n music Sunny Park   ポップンミュージック サニーパーク","pop’n music Sunny Park   ポップンミュージック サニーパーク"],["2022-09-13T00:00:00+09:00","pop’n music UniLab","pop’n music UniLab"],["2016-12-14T00:00:00+09:00","pop’n music うさぎと猫と少年の夢   ポップンミュージック うさぎとねことしょうねんのゆめ","pop’n music うさぎと猫と少年の夢   ポップンミュージック うさぎとねことしょうねんのゆめ"],["2014-06-25T00:00:00+09:00","pop’n music ラピストリア   ポップンミュージック ラピストリア","pop’n music ラピストリア   ポップンミュージック ラピストリア"],["2020-12-09T00:00:00+09:00","pop’n music 解明リドルズ   ポップンミュージック かいめいリドルズ","pop’n music 解明リドルズ   ポップンミュージック かいめいリドルズ"],["1999-09-24T00:00:00+09:00","pop’n stage   ポップンステージ","pop’n stage   ポップンステージ"],["1999-12-20T00:00:00+09:00","pop’n stage ex   ポップンステージex","pop’n stage ex   ポップンステージex"],["--","RAP FREAKS","RAP FREAKS"],["2010-11-04T00:00:00+09:00","REFLEC BEAT","REFLEC BEAT"],["2012-11-21T00:00:00+09:00","REFLEC BEAT colette","REFLEC BEAT colette"],["2014-06-04T00:00:00+09:00","REFLEC BEAT groovin’!!","REFLEC BEAT groovin’!!"],["2014-11-20T00:00:00+09:00","REFLEC BEAT groovin’!! Upper","REFLEC BEAT groovin’!! Upper"],["2011-11-16T00:00:00+09:00","REFLEC BEAT limelight","REFLEC BEAT limelight"],["2015-10-28T00:00:00+09:00","REFLEC BEAT VOLZZA","REFLEC BEAT VOLZZA"],["2016-03-24T00:00:00+09:00","REFLEC BEAT VOLZZA 2","REFLEC BEAT VOLZZA 2"],["2016-12-01T00:00:00+09:00","REFLEC BEAT 悠久のリフレシア The Reflesia of Eternity","REFLEC BEAT 悠久のリフレシア The Reflesia of Eternity"],["--","Rizminance","Rizminance"],["--","Shuffle Dancerz","Shuffle Dancerz"],["2012-01-18T00:00:00+09:00","SOUND VOLTEX BOOTH","SOUND VOLTEX BOOTH"],["2021-02-17T00:00:00+09:00","SOUND VOLTEX EXCEED GEAR","SOUND VOLTEX EXCEED GEAR"],["2013-06-05T00:00:00+09:00","SOUND VOLTEX II  infinite infection ","SOUND VOLTEX II  infinite infection "],["2014-11-20T00:00:00+09:00","SOUND VOLTEX III GRAVITY WARS","SOUND VOLTEX III GRAVITY WARS"],["2016-12-21T00:00:00+09:00","SOUND VOLTEX IV HEAVAENLY HAVEN","SOUND VOLTEX IV HEAVAENLY HAVEN"],["2019-02-28T00:00:00+09:00","SOUND VOLTEX VIVID WAVE","SOUND VOLTEX VIVID WAVE"],["--","STEPSTAR","STEPSTAR"],["--","DANCE GENERATIONS","DANCE GENERATIONS"],["2005-02-24T00:00:00+09:00","Toy’sMarch","Toy’sMarch"],["2005-12-15T00:00:00+09:00","Toy’sMarch2","Toy’sMarch2"],["--","おといろは","おといろは"],["2015-03-13T00:00:00+09:00","オトカ♥ドール","オトカ♥ドール"],["2017-03-01T00:00:00+09:00","ノスタルジア","ノスタルジア"],["2017-07-19T00:00:00+09:00","ノスタルジア FORTE","ノスタルジア FORTE"],["2018-09-26T00:00:00+09:00","ノスタルジア Op.2","ノスタルジア Op.2"],["2019-12-02T00:00:00+09:00","ノスタルジア Op.3","ノスタルジア Op.3"],["2024-03-27T00:00:00+09:00","ポラリスコード","ポラリスコード"],["2013-06-20T00:00:00+09:00","ミライダガッキ  FutureTomTom ","ミライダガッキ  FutureTomTom "],["2013-12-18T00:00:00+09:00","ミライダガッキ Ver.2","ミライダガッキ Ver.2"],["2000-07-01T00:00:00+09:00","Dance Freaks","Dance Freaks"],["--","彩響DJアニクラゲ","彩響DJアニクラゲ"],["2003-07-01T00:00:00+09:00","三味線ブラザーズ","三味線ブラザーズ"],["2023-01-01T00:00:00+09:00","朗舞","朗舞"]],"ml":[["2015-07-15T15:00:00Z","CHUNITHM","CHUNITHM"],["2016-02-03T15:00:00Z","CHUNITHM PLUS","CHUNITHM PLUS"],["2016-08-24T15:00:00Z","CHUNITHM AIR","CHUNITHM AIR"],["2017-02-08T15:00:00Z","CHUNITHM AIR PLUS","CHUNITHM AIR PLUS"],["2017-08-23T15:00:00Z","CHUNITHM STAR","CHUNITHM STAR"],["2018-03-07T15:00:00Z","CHUNITHM STAR PLUS","CHUNITHM STAR PLUS"],["2018-10-24T15:00:00Z","CHUNITHM AMAZON","CHUNITHM AMAZON"],["2019-04-10T15:00:00Z","CHUNITHM AMAZON PLUS","CHUNITHM AMAZON PLUS"],["2019-10-23T15:00:00Z","CHUNITHM CRYSTAL","CHUNITHM CRYSTAL"],["2020-07-15T15:00:00Z","CHUNITHM CRYSTAL PLUS","CHUNITHM CRYSTAL PLUS"],["2020-11-25T15:00:00Z","CHUNITHM SUPER STAR","CHUNITHM SUPER STAR"],["2021-01-20T15:00:00Z","CHUNITHM PARADISE","CHUNITHM PARADISE"],["2021-05-12T15:00:00Z","CHUNITHM PARADISE LOST","CHUNITHM PARADISE LOST"],["2021-11-03T15:00:00Z","CHUNITHM NEW！","CHUNITHM NEW！"],["2022-04-13T15:00:00Z","CHUNITHM NEW PLUS","CHUNITHM NEW PLUS"],["2022-10-12T15:00:00Z","CHUNITHM SUN","CHUNITHM SUN"],["2023-05-10T15:00:00Z","CHUNITHM SUN PLUS","CHUNITHM SUN PLUS"],["2023-12-13T15:00:00Z","CHUNITHM LUMINOUS","CHUNITHM LUMINOUS"],["2024-06-19T15:00:00Z","CHUNITHM LUMINOUS PLUS　","CHUNITHM LUMINOUS PLUS　"],["2024-12-11T15:00:00Z","CHUNITHM VERSE","CHUNITHM VERSE"],["2007-11-28T15:00:00Z","Disney マジカルダンス オン ドリームステージ","Disney マジカルダンス オン ドリームステージ"],["2012-07-10T15:00:00Z","maimai 初代","maimai 初代"],["2012-12-12T15:00:00Z","maimai PLUS","maimai PLUS"],["2013-07-10T15:00:00Z","maimai GreeN","maimai GreeN"],["2014-02-25T15:00:00Z","maimai GreeN PLUS","maimai GreeN PLUS"],["2014-09-17T15:00:00Z","maimai ORANGE","maimai ORANGE"],["2015-03-18T15:00:00Z","maimai ORANGE PLUS","maimai ORANGE PLUS"],["2015-12-08T15:00:00Z","maimai PiNK","maimai PiNK"],["2016-06-29T15:00:00Z","maimai PiNK PLUS","maimai PiNK PLUS"],["2016-12-14T15:00:00Z","maimai MURASAKi","maimai MURASAKi"],["2017-06-21T15:00:00Z","maimai MURASAKi PLUS","maimai MURASAKi PLUS"],["2017-12-13T15:00:00Z","maimai MiLK","maimai MiLK"],["2018-06-20T15:00:00Z","maimai MiLK PLUS","maimai MiLK PLUS"],["2018-12-12T15:00:00Z","maimai FiNALE","maimai FiNALE"],["2019-07-10T15:00:00Z","maimaiでらっくす","maimaiでらっくす"],["2020-01-22T15:00:00Z","maimaiでらっくす PLUS","maimaiでらっくす PLUS"],["2020-09-16T15:00:00Z","maimaiでらっくす Splash","maimaiでらっくす Splash"],["2021-03-17T15:00:00Z","maimaiでらっくすSplash PLUS","maimaiでらっくすSplash PLUS"],["2021-09-15T15:00:00Z","maimaiでらっくす UNiVERSE","maimaiでらっくす UNiVERSE"],["2022-03-23T15:00:00Z","maimai でらっくす UNiVERSE PLUS","maimai でらっくす UNiVERSE PLUS"],["2023-03-22T15:00:00Z","maimai でらっくす FESTiVAL PLUS","maimai でらっくす FESTiVAL PLUS"],["2023-09-13T15:00:00Z","maimai でらっくす BUDDiES","maimai でらっくす BUDDiES"],["2024-03-20T15:00:00Z","maimai でらっくす BUDDiES PLUS","maimai でらっくす BUDDiES PLUS"],["2024-09-11T15:00:00Z","maimai でらっくす PRiSM","maimai でらっくす PRiSM"],["2025-03-12T15:00:00Z","maimai でらっくす PRiSM PLUS","maimai でらっくす PRiSM PLUS"],["2020-03-04T15:00:00Z","オトシューDX","オトシューDX"],["2018-07-25T15:00:00Z","オンゲキ","オンゲキ"],["2019-02-06T15:00:00Z","オンゲキPLUS","オンゲキPLUS"],["2019-08-21T15:00:00Z","オンゲキSUMMER","オンゲキSUMMER"],["2020-02-19T15:00:00Z","オンゲキSUMMER PLUS","オンゲキSUMMER PLUS"],["2020-09-29T15:00:00Z","オンゲキ R.E.D.","オンゲキ R.E.D."],["2021-03-30T15:00:00Z","オンゲキ R.E.D. PLUS","オンゲキ R.E.D. PLUS"],["2021-10-20T15:00:00Z","オンゲキbright","オンゲキbright"],["2022-03-02T15:00:00Z","オンゲキbright MEMORY","オンゲキbright MEMORY"],["2025-03-26T15:00:00Z","オンゲキRe:Fresh","オンゲキRe:Fresh"],["2000-12-10T15:00:00Z","クラッキンDJ","クラッキンDJ"],["2001-05-31T15:00:00Z","クラッキンDJ Part2","クラッキンDJ Part2"],["1999-11-30T15:00:00Z","サンバDEアミーゴ","サンバDEアミーゴ"],["2000-10-31T15:00:00Z","シャカっとタンバリン!","シャカっとタンバリン!"],["2001-03-31T15:00:00Z","シャカっとタンバリン！ もっとノリノリ 新曲追加！！","シャカっとタンバリン！ もっとノリノリ 新曲追加！！"],["2001-11-20T15:00:00Z","シャカっとタンバリン! 超POWER UP チュッ!","シャカっとタンバリン! 超POWER UP チュッ!"],["1999-01-31T15:00:00Z","フラッシュビーツ","フラッシュビーツ"],["1990-12-31T15:00:00Z","モグラッパー","モグラッパー"],["2007-09-19T15:00:00Z","リズム天国（アーケード版）","リズム天国（アーケード版）"],["2010-06-22T15:00:00Z","初音ミク Project DIVA Arcade","初音ミク Project DIVA Arcade"],["2013-11-20T15:00:00Z","初音ミク Project DIVA Arcade Future Tone","初音ミク Project DIVA Arcade Future Tone"],["2014-11-04T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version A REVISION1","初音ミク Project DIVA Arcade Future Tone Version A REVISION1"],["2016-02-16T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B","初音ミク Project DIVA Arcade Future Tone Version B"],["2016-08-23T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B REVISION1","初音ミク Project DIVA Arcade Future Tone Version B REVISION1"],["2016-10-19T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B REVISION2","初音ミク Project DIVA Arcade Future Tone Version B REVISION2"],["2016-12-13T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B REVISION3","初音ミク Project DIVA Arcade Future Tone Version B REVISION3"],["2011-01-26T15:00:00Z","初音ミク Project DIVA Arcade Version A","初音ミク Project DIVA Arcade Version A"],["2012-10-03T15:00:00Z","初音ミク Project DIVA Arcade Version B","初音ミク Project DIVA Arcade Version B"]],"sm":[["1998-12-31T15:00:00Z","Guitar Jam","Guitar Jam"],["1998-12-31T15:00:00Z","Quest for Fame（英語版）","Quest for Fame（英語版）"],["2000-07-31T15:00:00Z","TEKNOWERK テクノヴェルク","TEKNOWERK テクノヴェルク"],["2012-10-24T15:00:00Z","アイカツ!","アイカツ!"],["2019-10-02T15:00:00Z","アイカツオンパレード！","アイカツオンパレード！"],["2016-05-18T15:00:00Z","アイカツスターズ!","アイカツスターズ!"],["2020-12-09T15:00:00Z","アイカツプラネット","アイカツプラネット"],["2018-04-04T15:00:00Z","アイカツフレンズ！","アイカツフレンズ！"],["1999-12-14T15:00:00Z","ウンジャマ・ラミー NOW!!","ウンジャマ・ラミー NOW!!"],["2015-06-17T15:00:00Z","シンクロニカ","シンクロニカ"],["2012-12-12T15:00:00Z","たまごっちリズム TamaRiz","たまごっちリズム TamaRiz"],["2016-12-07T15:00:00Z","ディズニー マジックキャッスル キラキラシャイニー★スター","ディズニー マジックキャッスル キラキラシャイニー★スター"],["1998-10-31T15:00:00Z","パカパカパッション","パカパカパッション"],["1999-06-30T15:00:00Z","パカパカパッション2","パカパカパッション2"],["1999-11-30T15:00:00Z","パカパカパッションスペシャル","パカパカパッションスペシャル"],["1998-12-31T15:00:00Z","ミリオンヒッツ","ミリオンヒッツ"],["2001-02-20T15:00:00Z","太鼓の達人 初代","太鼓の達人 初代"],["2001-08-05T15:00:00Z","太鼓の達人2","太鼓の達人2"],["2002-03-14T15:00:00Z","太鼓の達人3","太鼓の達人3"],["2002-12-11T15:00:00Z","太鼓の達人4","太鼓の達人4"],["2003-10-05T15:00:00Z","太鼓の達人5","太鼓の達人5"],["2004-07-14T15:00:00Z","太鼓の達人6","太鼓の達人6"],["2005-07-14T15:00:00Z","太鼓の達人7","太鼓の達人7"],["2006-03-22T15:00:00Z","太鼓の達人8","太鼓の達人8"],["2006-12-19T15:00:00Z","太鼓の達人9","太鼓の達人9"],["2007-07-25T15:00:00Z","太鼓の達人10","太鼓の達人10"],["2008-03-17T15:00:00Z","太鼓の達人11","太鼓の達人11"],["2008-04-24T15:00:00Z","太鼓の達人11 亞洲版","太鼓の達人11 亞洲版"],["2008-12-10T15:00:00Z","太鼓の達人12","太鼓の達人12"],["2009-06-22T15:00:00Z","太鼓の達人12 亞洲版","太鼓の達人12 亞洲版"],["2009-07-13T15:00:00Z","太鼓の達人12 ド〜ン!と増量版","太鼓の達人12 ド〜ン!と増量版"],["2009-12-16T15:00:00Z","太鼓の達人13","太鼓の達人13"],["2010-09-07T15:00:00Z","太鼓の達人14","太鼓の達人14"],["2003-12-31T15:00:00Z","太鼓の達人RT〜日本の心〜","太鼓の達人RT〜日本の心〜"],["2011-11-15T15:00:00Z","太鼓の達人(新筐体)1期アップデート","太鼓の達人(新筐体)1期アップデート"],["2012-07-24T15:00:00Z","太鼓の達人KATSU DONVer.アップデート","太鼓の達人KATSU DONVer.アップデート"],["2013-03-12T15:00:00Z","太鼓の達人ソライロVer.アップデート","太鼓の達人ソライロVer.アップデート"],["2014-07-15T15:00:00Z","太鼓の達人キミドリVer.アップデート","太鼓の達人キミドリVer.アップデート"],["2015-03-10T15:00:00Z","太鼓の達人ムラサキVer.アップデート","太鼓の達人ムラサキVer.アップデート"],["2015-12-09T15:00:00Z","太鼓の達人ホワイトVer.アップデート","太鼓の達人ホワイトVer.アップデート"],["2016-07-13T15:00:00Z","太鼓の達人レッドVer.アップデート","太鼓の達人レッドVer.アップデート"],["2017-03-14T15:00:00Z","太鼓の達人イエローVer.アップデート","太鼓の達人イエローVer.アップデート"],["2018-03-14T15:00:00Z","太鼓の達人ブルーVer.アップデート","太鼓の達人ブルーVer.アップデート"],["2019-03-13T15:00:00Z","太鼓の達人グリーンVer.アップデート","太鼓の達人グリーンVer.アップデート"],["2020-03-23T15:00:00Z","太鼓の達人ニジイロVer.2020アップデート","太鼓の達人ニジイロVer.2020アップデート"],["2021-03-24T15:00:00Z","太鼓の達人ニジイロVer.2021アップデート","太鼓の達人ニジイロVer.2021アップデート"],["2022-03-15T15:00:00Z","太鼓の達人ニジイロVer.2022アップデート","太鼓の達人ニジイロVer.2022アップデート"],["2023-03-21T15:00:00Z","太鼓の達人ニジイロVer.2023アップデート","太鼓の達人ニジイロVer.2023アップデート"],["2024-03-12T15:00:00Z","太鼓の達人ニジイロVer.2024アップデート","太鼓の達人ニジイロVer.2024アップデート"],["--","デンダビーツ","デンダビーツ"],["2025-03-25T15:00:00Z","アイドルマスター TOURS","アイドルマスター TOURS"]],"sc":[["2011-09-28T15:00:00Z","AstroRanger","AstroRanger"],["2014-08-10T15:00:00Z","BEATCRAFT CYCLON","BEATCRAFT CYCLON"],["--","doogi doogi","doogi doogi"],["--","Drum Live Station","Drum Live Station"],["--","舞立方 (DANCE³)","舞立方 (DANCE³)"],["2000-04-30T15:00:00Z","3 DDX / D Tech","3 DDX / D Tech"],["2009-03-31T15:00:00Z","Guitar Hero Arcade","Guitar Hero Arcade"],["2009-07-31T15:00:00Z","Magic DJ","Magic DJ"],["2018-03-31T15:00:00Z","Rhythm Horizon beta","Rhythm Horizon beta"],["2022-07-31T15:00:00Z","舞战纪 (Dance Battle)","舞战纪 (Dance Battle)"],["1998-12-31T15:00:00Z","The Rhythm and Dance","The Rhythm and Dance"],["1999-12-31T15:00:00Z","Crazy Dancing ","Crazy Dancing "],["2007-12-31T15:00:00Z","Jungle Drummer","Jungle Drummer"],["2007-12-31T15:00:00Z","鼓王2008","鼓王2008"],["2008-12-31T15:00:00Z","Super Dance Station","Super Dance Station"],["2009-12-31T15:00:00Z","Super Dance Station 2","Super Dance Station 2"],["2010-12-31T15:00:00Z","Super Dance Station 3","Super Dance Station 3"],["2010-12-31T15:00:00Z","鼓王3：骑士与公主 (Percussion Master 3)","鼓王3：骑士与公主 (Percussion Master 3)"],["2010-12-31T15:00:00Z","动感弹珠 (REFLEC BEAT)","动感弹珠 (REFLEC BEAT)"],["2011-12-31T15:00:00Z","Dance Core","Dance Core"],["2011-12-31T15:00:00Z","Hit Music","Hit Music"],["2011-12-31T15:00:00Z","ReRave","ReRave"],["2011-12-31T15:00:00Z","Super Dance Station 4","Super Dance Station 4"],["2012-12-31T15:00:00Z","Super Dance Station 5","Super Dance Station 5"],["2013-12-31T15:00:00Z","ReRave Plus","ReRave Plus"],["2014-12-31T15:00:00Z","E5 Dance Super Station ","E5 Dance Super Station "],["2015-12-31T15:00:00Z","Dance Central 3","Dance Central 3"],["2016-12-31T15:00:00Z","舞立方2 (DANCE³ 2)","舞立方2 (DANCE³ 2)"],["2018-12-31T15:00:00Z","Beat Saber Arcade","Beat Saber Arcade"],["2020-12-31T15:00:00Z","音乐学院","音乐学院"],["2022-12-31T15:00:00Z","舞立方·秀/DANCE³·Show","舞立方·秀/DANCE³·Show"],["2023-12-31T15:00:00Z","舞立方·秀 120Hz (DANCE³ Show 120hz)","舞立方·秀 120Hz (DANCE³ Show 120hz)"],["--","舞立方・秀","舞立方・秀"],["--","舞立方2","舞立方2"],["--","2012疯狂爵士鼓","2012疯狂爵士鼓"],["--","3D旋转的风彩","3D旋转的风彩"],["--","3D乐无限","3D乐无限"],["2010-04-06T15:00:00Z","Sabin Sound Star","Sabin Sound Star"],["2012-03-07T15:00:00Z","Ez2Dj Azure ExpressioN","Ez2Dj Azure ExpressioN"],["2012-05-18T15:00:00Z","Sabin Sound Star  renascence burst ","Sabin Sound Star  renascence burst "],["2012-06-21T15:00:00Z","Ez2Dj Azure ExpressioN  INTEGRAL COMPOSITION ","Ez2Dj Azure ExpressioN  INTEGRAL COMPOSITION "],["2008-12-31T15:00:00Z","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.10","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.10"],["2009-12-31T15:00:00Z","Ez2Dj BONUS EDITION","Ez2Dj BONUS EDITION"],["2010-12-31T15:00:00Z","Ez2Dj BONUS EDITION revision A","Ez2Dj BONUS EDITION revision A"],["--","小鼓王","小鼓王"],["1999-04-19T15:00:00Z","EZ2DJ The 1st TRACKS","EZ2DJ The 1st TRACKS"],["1999-12-14T15:00:00Z","EZ2DJ The 1st TRACKS Special Edition","EZ2DJ The 1st TRACKS Special Edition"],["2000-10-31T15:00:00Z","EZ2DJ 2nd TRAX ~It rules once again~","EZ2DJ 2nd TRAX ~It rules once again~"],["2001-09-16T15:00:00Z","EZ2DJ 3rd TRAX ~Absolute Pitch~","EZ2DJ 3rd TRAX ~Absolute Pitch~"],["2002-07-27T15:00:00Z","EZ2DJ 4th TRAX ~Over Mind~","EZ2DJ 4th TRAX ~Over Mind~"],["2003-09-05T15:00:00Z","EZ2DJ Platinum","EZ2DJ Platinum"],["2004-08-16T15:00:00Z","EZ2DJ 6th TRAX ~Self Evolution~","EZ2DJ 6th TRAX ~Self Evolution~"],["2007-03-13T15:00:00Z","EZ2DJ 7th Trax: Resistance","EZ2DJ 7th Trax: Resistance"],["2007-12-22T15:00:00Z","Ez2Dj 7th TraX  Resistance  Version 1.50","Ez2Dj 7th TraX  Resistance  Version 1.50"],["2008-03-03T15:00:00Z","Ez2Dj 7th TraX  Resistance  Version 2.00","Ez2Dj 7th TraX  Resistance  Version 2.00"],["2009-03-29T15:00:00Z","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.00","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.00"],["2010-11-08T15:00:00Z","EZ2DJ 7th TRAX BONUS EDITION","EZ2DJ 7th TRAX BONUS EDITION"],["2011-02-16T15:00:00Z","EZ2DJ 7th TRAX BONUS EDITION revision A","EZ2DJ 7th TRAX BONUS EDITION revision A"],["2000-06-30T15:00:00Z","EZ2Dancer","EZ2Dancer"],["2000-08-31T15:00:00Z","EZ2Dancer 1st Move","EZ2Dancer 1st Move"],["2003-12-31T15:00:00Z","EZ2Dancer SuperChina","EZ2Dancer SuperChina"],["2003-12-31T15:00:00Z","EZ2Dancer SuperCHINA","EZ2Dancer SuperCHINA"],["2000-12-31T15:00:00Z","EZ2Dancer The 2nd Move","EZ2Dancer The 2nd Move"],["2002-04-30T15:00:00Z","EZ2Dancer UK Move","EZ2Dancer UK Move"],["2003-03-31T15:00:00Z","EZ2Dancer UK Special Edition","EZ2Dancer UK Special Edition"],["2003-12-31T15:00:00Z","Ez2Dj 6th TraX  Self Evolution ","Ez2Dj 6th TraX  Self Evolution "],["2006-12-31T15:00:00Z","EZ2DJ 7th Trax Mini","EZ2DJ 7th Trax Mini"],["--","Ez2Dj Dance Edition Vol.1  ","Ez2Dj Dance Edition Vol.1  "],["2003-12-31T15:00:00Z","EZ2DJ Dual 3rd","EZ2DJ Dual 3rd"],["2003-12-31T15:00:00Z","EZ2DJ Dual 4th","EZ2DJ Dual 4th"],["2004-12-31T15:00:00Z","EZ2DJ Dual Platinum","EZ2DJ Dual Platinum"],["2003-06-30T15:00:00Z","EZ2DJ Mini","EZ2DJ Mini"],["2003-12-31T15:00:00Z","EZ2DJ Mini 3rd","EZ2DJ Mini 3rd"],["2002-12-31T15:00:00Z","Ez2Dj PLATINUM  Limited Edition ","Ez2Dj PLATINUM  Limited Edition "],["2004-02-29T15:00:00Z","EZ2DJ Single","EZ2DJ Single"],["2003-12-31T15:00:00Z","EZ2DJ Single 2nd","EZ2DJ Single 2nd"],["2022-06-15T15:00:00Z","NOISZ ARC⌖CODA","NOISZ ARC⌖CODA"],["1999-09-19T15:00:00Z","Pump It Up The 1st Dance Floor","Pump It Up The 1st Dance Floor"],["1999-12-26T15:00:00Z","Pump It Up 2nd Dance Floor","Pump It Up 2nd Dance Floor"],["2000-05-06T15:00:00Z","Pump It Up 3rd O.B.G.（Oldies But Goodies）  3rd Dance Floor","Pump It Up 3rd O.B.G.（Oldies But Goodies）  3rd Dance Floor"],["2000-12-06T15:00:00Z","Pump It Up Perfect Collection","Pump It Up Perfect Collection"],["2001-01-19T15:00:00Z","Pump It Up Extra","Pump It Up Extra"],["2007-12-09T15:00:00Z","Pump It Up NX2 (Next Xenesis)  International 9th Dance Floor ","Pump It Up NX2 (Next Xenesis)  International 9th Dance Floor "],["2008-11-24T15:00:00Z","Pump It Up NX Absolute  International 10th Dance Floor ","Pump It Up NX Absolute  International 10th Dance Floor "],["2013-04-10T15:00:00Z","Pump It Up Infinity","Pump It Up Infinity"],["2015-06-23T15:00:00Z","Pump It Up 2015 Prime Japanese Edition","Pump It Up 2015 Prime Japanese Edition"],["2017-01-10T15:00:00Z","Pump It Up 2017 Prime 2","Pump It Up 2017 Prime 2"],["2017-12-31T15:00:00Z","Pump It Up 2018 Prime 2","Pump It Up 2018 Prime 2"],["2019-01-06T15:00:00Z","Pump It Up XX  20th Anniversary Edition ","Pump It Up XX  20th Anniversary Edition "],["2021-12-14T15:00:00Z","CHRONO CIRCLE","CHRONO CIRCLE"],["2023-07-03T15:00:00Z","Pump It Up 2023 PHOENIX","Pump It Up 2023 PHOENIX"],["2024-05-26T15:00:00Z","Pump It Up 2024 PHOENIX","Pump It Up 2024 PHOENIX"],["2000-08-31T15:00:00Z","Pump It Up O.B.G. SE（Seasonal Evolution）","Pump It Up O.B.G. SE（Seasonal Evolution）"],["2000-10-31T15:00:00Z","Pump It Up The Collection","Pump It Up The Collection"],["2001-05-31T15:00:00Z","Pump It Up The Premiere  International Dance Floor ","Pump It Up The Premiere  International Dance Floor "],["2001-10-31T15:00:00Z","Pump It Up Feel The Beat THE PREX: The International Dance Floor","Pump It Up Feel The Beat THE PREX: The International Dance Floor"],["2001-12-31T15:00:00Z","Pump It Up The Rebirth –The 8th Dance Floor （韓国のみ）","Pump It Up The Rebirth –The 8th Dance Floor （韓国のみ）"],["2002-02-28T15:00:00Z","Pump It Up Premiere2  International 2nd Dance Floor ","Pump It Up Premiere2  International 2nd Dance Floor "],["2002-10-31T15:00:00Z","Pump It Up PREX2","Pump It Up PREX2"],["2003-04-30T15:00:00Z","Pump It Up Premiere3  International 3rd Dance Floor ","Pump It Up Premiere3  International 3rd Dance Floor "],["2003-09-30T15:00:00Z","Pump It Up PREX3  International 4th Dance Floor ","Pump It Up PREX3  International 4th Dance Floor "],["2004-03-31T15:00:00Z","Pump It Up Exceed  International 5th Dance Floor ","Pump It Up Exceed  International 5th Dance Floor "],["2004-10-31T15:00:00Z","Pump It Up Exceed2  International 6th Dance Floor ","Pump It Up Exceed2  International 6th Dance Floor "],["2005-12-31T15:00:00Z","Pump It Up Zero  International 7th Dance Floor ","Pump It Up Zero  International 7th Dance Floor "],["2006-11-30T15:00:00Z","Pump It Up NX (New Xenesis)  International 8th Dance Floor ","Pump It Up NX (New Xenesis)  International 8th Dance Floor "],["2007-05-31T15:00:00Z","Pump It Up Pro","Pump It Up Pro"],["2010-02-28T15:00:00Z","Pump It Up 2010 Fiesta","Pump It Up 2010 Fiesta"],["2010-06-30T15:00:00Z","Pump It Up Pro 2","Pump It Up Pro 2"],["2011-02-28T15:00:00Z","Pump It Up 2013 Fies EX","Pump It Up 2013 Fies EX"],["2012-10-31T15:00:00Z","Pump It Up 2013 Fiesta 2","Pump It Up 2013 Fiesta 2"],["2013-10-31T15:00:00Z","Hit The Beat DX","Hit The Beat DX"],["2014-10-31T15:00:00Z","Pump It Up 2015 Prime","Pump It Up 2015 Prime"],["2006-12-31T15:00:00Z","Drum Live Station ","Drum Live Station "],["2008-12-31T15:00:00Z","Pump Jump","Pump Jump"],["2010-04-06T15:00:00Z","Pump It Up 2010 Fiesta","Pump It Up 2010 Fiesta"],["--","歌神K Bar（粉色）","歌神K Bar（粉色）"],["--","歌神K Bar（黑色）","歌神K Bar（黑色）"],["1998-12-31T15:00:00Z","Beat Player 2000","Beat Player 2000"],["1999-12-31T15:00:00Z","Let’s Dance","Let’s Dance"],["--","DANCE CORE","DANCE CORE"],["2003-12-31T15:00:00Z","I Can Boogie","I Can Boogie"],["1999-12-31T15:00:00Z","Drumscape MTV","Drumscape MTV"],["1998-12-31T15:00:00Z","beatplayer2000","beatplayer2000"],["1999-12-31T15:00:00Z","Let’s Dance Plus","Let’s Dance Plus"],["1999-12-31T15:00:00Z","Mini Let’s Dance","Mini Let’s Dance"],["1999-12-31T15:00:00Z","Karaoke Dance Diet","Karaoke Dance Diet"],["--","DJ高手","DJ高手"],["--","DJ旋风","DJ旋风"],["--","D舞达人","D舞达人"],["2000-04-30T15:00:00Z","Wooga Wooga","Wooga Wooga"],["1999-12-31T15:00:00Z","B Boy","B Boy"],["2019-05-29T15:00:00Z","EZ2AC FINAL","EZ2AC FINAL"],["2020-08-06T15:00:00Z","EZ2AC Final EX","EZ2AC Final EX"],["2002-10-31T15:00:00Z","Mr. Jang Go","Mr. Jang Go"],["1999-12-31T15:00:00Z","TechnoMotion: The 2nd Dance Floor","TechnoMotion: The 2nd Dance Floor"],["1999-12-31T15:00:00Z","TechnoMotion","TechnoMotion"],["2012-12-31T15:00:00Z","Magic Box 3","Magic Box 3"],["1999-12-31T15:00:00Z","Break Boy","Break Boy"],["1999-12-31T15:00:00Z","Fantasy of Stepping, The","Fantasy of Stepping, The"],["1999-12-31T15:00:00Z","Live Mix","Live Mix"],["1999-12-31T15:00:00Z","Dance Dance Diet","Dance Dance Diet"],["2011-11-18T15:00:00Z","PERCUSSION MASTER 3","PERCUSSION MASTER 3"],["--","鼓王","鼓王"],["--","Danz Base SEA Edition","Danz Base SEA Edition"],["2007-02-28T15:00:00Z","唯舞独尊 We Dancing Online ","唯舞独尊 We Dancing Online "],["2010-11-30T15:00:00Z","Mozarc","Mozarc"],["1998-12-31T15:00:00Z","Rock Fever","Rock Fever"],["1999-12-31T15:00:00Z","Crazy Dancing","Crazy Dancing"],["1999-12-31T15:00:00Z","Rock Fever EX","Rock Fever EX"],["2000-12-31T15:00:00Z","Rock Fever 3","Rock Fever 3"],["2003-12-31T15:00:00Z","Percussion Master","Percussion Master"],["2004-12-31T15:00:00Z","Percussion Kids","Percussion Kids"],["2004-12-31T15:00:00Z","パーカッションマスター","パーカッションマスター"],["2007-12-31T15:00:00Z","パーカッションマスター2","パーカッションマスター2"],["2009-12-31T15:00:00Z","铁琴：第一乐章 ","铁琴：第一乐章 "],["2009-12-31T15:00:00Z","鐡琴：第一樂章 ","鐡琴：第一樂章 "],["2011-12-31T15:00:00Z","MuziBox","MuziBox"],["2011-12-31T15:00:00Z","パーカッションマスター3","パーカッションマスター3"],["2012-12-31T15:00:00Z","DANZ BASE 舞力特区","DANZ BASE 舞力特区"],["2013-12-31T15:00:00Z","Drummer Kids ","Drummer Kids "],["--","唯舞独尊2代               ","唯舞独尊2代               "],["1999-12-31T15:00:00Z","ACPercuss","ACPercuss"],["1998-12-31T15:00:00Z","Kongshiri","Kongshiri"],["2021-12-31T15:00:00Z","Synth Riders ARCADE","Synth Riders ARCADE"],["1999-12-31T15:00:00Z","Musica","Musica"],["1999-12-31T15:00:00Z","Drum Star","Drum Star"],["--","K歌王","K歌王"],["--","K歌王加强版","K歌王加强版"],["--","BeatOn","BeatOn"],["1998-12-31T15:00:00Z","Dancing Blaster","Dancing Blaster"],["1998-12-31T15:00:00Z","Zooty Drum","Zooty Drum"],["2011-10-11T15:00:00Z","DJMax Technika 3(NA)","DJMax Technika 3(NA)"],["2011-10-26T15:00:00Z","DJMax Technika 3(KR)","DJMax Technika 3(KR)"],["2011-12-17T15:00:00Z","DJMax Technika 3(PHL)","DJMax Technika 3(PHL)"],["2011-12-24T15:00:00Z","DJMax Technika 3(SGP)","DJMax Technika 3(SGP)"],["2012-01-16T15:00:00Z","DJMax Technika 3(CHN)","DJMax Technika 3(CHN)"],["2012-01-19T15:00:00Z","DJMax Technika 3(THA)","DJMax Technika 3(THA)"],["2012-01-22T15:00:00Z","DJMax Technika 3(AU)","DJMax Technika 3(AU)"],["2012-08-08T15:00:00Z","DJMax Technika 3(CHL)","DJMax Technika 3(CHL)"],["2008-10-30T15:00:00Z","DJ Max Technika","DJ Max Technika"],["1999-12-31T15:00:00Z","Rhythm and Dance Version 2nd, The","Rhythm and Dance Version 2nd, The"],["1999-12-31T15:00:00Z","Rhythm and Dance, The","Rhythm and Dance, The"],["2004-07-29T15:00:00Z","In the Groove","In the Groove"],["2005-06-17T15:00:00Z","In the Groove 2","In the Groove 2"],["2007-06-30T15:00:00Z","Pump It Up Pro","Pump It Up Pro"],["2010-06-30T15:00:00Z","Pump It Up Pro 2","Pump It Up Pro 2"],["2013-01-31T15:00:00Z","Pump It Up Infinity","Pump It Up Infinity"],["2008-12-31T15:00:00Z","Pump It Up Jump","Pump It Up Jump"],["2013-05-06T15:00:00Z","EZ2AC ENDLESS CIRCULATION","EZ2AC ENDLESS CIRCULATION"],["2014-12-25T15:00:00Z","EZ2AC EVOLVE","EZ2AC EVOLVE"],["2016-01-27T15:00:00Z","EZ2AC NIGHT TRAVELER","EZ2AC NIGHT TRAVELER"],["2017-08-15T15:00:00Z","EZ2AC TIME TRAVELER","EZ2AC TIME TRAVELER"],["2017-06-09T15:00:00Z","StepManiaX","StepManiaX"],["2000-12-31T15:00:00Z","P.P.R.","P.P.R."],["2013-12-31T15:00:00Z","Neon FM","Neon FM"],["2014-12-31T15:00:00Z","Tiny Tunes Arcade Machine","Tiny Tunes Arcade Machine"],["1905-06-21T15:00:00Z","Lullu Rarra Dance Dance","Lullu Rarra Dance Dance"],["2002-06-30T15:00:00Z","テクニクビート","テクニクビート"],["2005-08-31T15:00:00Z","タイプチューン","タイプチューン"],["2015-07-22T15:00:00Z","crossbeats REV.","crossbeats REV."],["2016-04-27T15:00:00Z","crossbeats REV. SUNRISE","crossbeats REV. SUNRISE"],["--","cytusΩ","cytusΩ"],["--","ドリームオーディション","ドリームオーディション"],["1999-02-28T15:00:00Z","Rock’n Tread ロックントレッド","Rock’n Tread ロックントレッド"],["1999-05-31T15:00:00Z","Rock’n Tread 2 ロックントレッド2","Rock’n Tread 2 ロックントレッド2"],["1999-11-30T15:00:00Z","Rock’n 3 ロックン3","Rock’n 3 ロックン3"],["1999-11-30T15:00:00Z","ロックンメガセッション","ロックンメガセッション"],["1998-12-31T15:00:00Z","VJ Visual & Music Slap","VJ Visual & Music Slap"],["1998-12-31T15:00:00Z","VJ Dash","VJ Dash"],["1998-12-31T15:00:00Z","ステッピングステージ→ステッピング","ステッピングステージ→ステッピング"],["2016-09-26T15:00:00Z","シアトリズム ファイナルファンタジー オールスターカーニバル","シアトリズム ファイナルファンタジー オールスターカーニバル"],["2016-12-05T15:00:00Z","ラブライブ! スクールアイドルフェスティバル〜after school ACTIVITY〜","ラブライブ! スクールアイドルフェスティバル〜after school ACTIVITY〜"],["2018-12-05T15:00:00Z","ラブライブ！スクールアイドルフェスティバル ～after school ACTIVITY～ Next Stage","ラブライブ！スクールアイドルフェスティバル ～after school ACTIVITY～ Next Stage"],["2009-07-16T15:00:00Z","ミュージックガンガン!","ミュージックガンガン!"],["2010-04-25T15:00:00Z","ミュージックガンガン! 曲がいっぱい☆超増加版!","ミュージックガンガン! 曲がいっぱい☆超増加版!"],["2011-01-26T15:00:00Z","ミュージックガンガン!2","ミュージックガンガン!2"],["2013-11-04T15:00:00Z","GROOVE COASTER","GROOVE COASTER"],["2014-05-25T15:00:00Z","GROOVE COASTER EX","GROOVE COASTER EX"],["2015-01-21T15:00:00Z","GROOVE COASTER 2 HEAVENLY FESTIVAL","GROOVE COASTER 2 HEAVENLY FESTIVAL"],["2016-03-09T15:00:00Z","GROOVE COASTER 3 LINK FEVER","GROOVE COASTER 3 LINK FEVER"],["2017-03-15T15:00:00Z","GROOVE COASTER 3EX DREAM PARTY","GROOVE COASTER 3EX DREAM PARTY"],["2018-03-28T15:00:00Z","GROOVE COASTER 4 STARLIGHT ROAD","GROOVE COASTER 4 STARLIGHT ROAD"],["2019-03-27T15:00:00Z","GROOVE COASTER 4EX INFINITY∞HIGHWAY","GROOVE COASTER 4EX INFINITY∞HIGHWAY"],["2020-04-08T15:00:00Z","GROOVE COASTER 4MAX DIAMOND GALAXY","GROOVE COASTER 4MAX DIAMOND GALAXY"],["2021-11-30T15:00:00Z","テトテ×コネクト","テトテ×コネクト"],["2022-11-30T15:00:00Z","MUSIC DIVER","MUSIC DIVER"],["--","RHYTHMVADERS 3: Link Fever","RHYTHMVADERS 3: Link Fever"],["--","RHYTHMVADERS 3 EX: Dream Party","RHYTHMVADERS 3 EX: Dream Party"],["--","ちょいKARA","ちょいKARA"],["--","マジカルミュージック","マジカルミュージック"],["2013-11-04T15:00:00Z","RHYTHMVADERS","RHYTHMVADERS"],["2014-05-25T15:00:00Z","RHYTHMVADERS EX","RHYTHMVADERS EX"],["2015-01-21T15:00:00Z","RHYTHMVADERS 2","RHYTHMVADERS 2"],["--","MUSICDIVER","MUSICDIVER"],["2010-07-14T15:00:00Z","プリティーリズム","プリティーリズム"],["2010-07-14T15:00:00Z","プリティーリズム・ミニスカート","プリティーリズム・ミニスカート"],["2011-04-27T15:00:00Z","プリティーリズム・オーロラドリーム","プリティーリズム・オーロラドリーム"],["2012-04-25T15:00:00Z","プリティーリズム・ディアマイフューチャー","プリティーリズム・ディアマイフューチャー"],["2013-04-17T15:00:00Z","プリティーリズム・レインボーライブ","プリティーリズム・レインボーライブ"],["2013-10-02T15:00:00Z","プリティーリズム・レインボーライブデュオ","プリティーリズム・レインボーライブデュオ"],["2014-04-16T15:00:00Z","プリティーリズム・オールスターレジェンドコーデ編","プリティーリズム・オールスターレジェンドコーデ編"],["2014-07-09T15:00:00Z","プリパラ","プリパラ"],["2017-03-31T15:00:00Z","アイドルタイムプリパラ","アイドルタイムプリパラ"],["2018-04-18T15:00:00Z","キラッとプリ☆チャン","キラッとプリ☆チャン"],["2019-10-16T15:00:00Z","プリパラ オールアイドルシリーズ","プリパラ オールアイドルシリーズ"],["2021-09-30T15:00:00Z","ワッチャプリマジ!","ワッチャプリマジ!"],["2024-04-03T15:00:00Z","ひみつのアイプリ","ひみつのアイプリ"],["2019-07-17T15:00:00Z","WACCA","WACCA"],["2020-01-22T15:00:00Z","WACCA S","WACCA S"],["2020-09-16T15:00:00Z","WACCA Lily","WACCA Lily"],["2021-03-10T15:00:00Z","WACCA Lily R","WACCA Lily R"],["2021-08-09T15:00:00Z","WACCA Reverse","WACCA Reverse"],["2018-11-24T15:00:00Z","音律炫动","音律炫动"],["2020-04-30T15:00:00Z","音律炫动5 SOUND VOLTEX ５","音律炫动5 SOUND VOLTEX ５"],["2010-12-31T15:00:00Z","E舞成名 网络版 (E5 ONLINE)","E舞成名 网络版 (E5 ONLINE)"],["2009-06-25T15:00:00Z","太鼓之达人12 亚洲版","太鼓之达人12 亚洲版"],["2011-11-20T15:00:00Z","DANZ BASE","DANZ BASE"],["2012-05-02T15:00:00Z","舞者之星","舞者之星"],["2012-05-09T15:00:00Z","星光","星光"],["2016-06-16T15:00:00Z","星光2代","星光2代"],["2019-12-04T15:00:00Z","舞萌DX","舞萌DX"],["2022-06-22T15:00:00Z","舞萌DX 2022","舞萌DX 2022"],["2022-07-07T15:00:00Z","中二节奏NEW!!","中二节奏NEW!!"],["2023-06-07T15:00:00Z","舞萌DX 2023","舞萌DX 2023"],["2023-09-20T15:00:00Z","中二节奏 2024","中二节奏 2024"],["2024-06-05T15:00:00Z","舞萌DX 2024","舞萌DX 2024"],["2024-09-24T15:00:00Z","中二节奏 2025","中二节奏 2025"],["2012-08-31T15:00:00Z","舞萌","舞萌"],["2021-04-30T15:00:00Z","舞萌DX 2021","舞萌DX 2021"],["2012-12-31T15:00:00Z","Dance Core Rhythm and Music 舞者之星","Dance Core Rhythm and Music 舞者之星"],["2018-12-31T15:00:00Z","音炫轨道","音炫轨道"],["2019-01-20T15:00:00Z","DANCERUSH STARDOM 舞律炫步","DANCERUSH STARDOM 舞律炫步"],["--","D Dance Master","D Dance Master"],["--","Quantum DANCE (Kinect Dance)","Quantum DANCE (Kinect Dance)"],["--","Small Pianist","Small Pianist"],["--","Converted Kinect Dance Cabinet","Converted Kinect Dance Cabinet"],["--","魔法 magic ","魔法 magic "],["--","天才小鼓手","天才小鼓手"],["--","海绵宝敲击鼓","海绵宝敲击鼓"],["--","太鼓达人","太鼓达人"],["--","音乐棚","音乐棚"],["--","音乐盒子","音乐盒子"],["--","音炫疯","音炫疯"],["--","音炫疯","音炫疯"],["--","音炫风","音炫风"],["--","快乐影音","快乐影音"],["--","3D欢歌乐总汇","3D欢歌乐总汇"],["--","舞立方","舞立方"],["--","欢乐唱吧","欢乐唱吧"],["--","乐动弹球","乐动弹球"],["--","音乐弹球","音乐弹球"],["--","欢唱魔盒","欢唱魔盒"],["--","炫次方2代","炫次方2代"],["--","节奏冲击","节奏冲击"],["--","DJ MAX","DJ MAX"],["--","欢乐KTV","欢乐KTV"],["--","吉他鼓手","吉他鼓手"],["--","吉他高手XG","吉他高手XG"],["--","童一首歌","童一首歌"],["--","超级劲乐园","超级劲乐园"],["--","狂热鼓手","狂热鼓手"],["--","狂热鼓手XG","狂热鼓手XG"],["--","狂热电子鼓舞台版","狂热电子鼓舞台版"],["--","音乐贝贝","音乐贝贝"],["--","弹珠GOGOGO(2)","弹珠GOGOGO(2)"],["--","钢琴块儿","钢琴块儿"],["--","鼓王3代","鼓王3代"],["--","鼓舞飞扬","鼓舞飞扬"],["--","鼓舞飞扬","鼓舞飞扬"],["--","欢乐小鼓","欢乐小鼓"],["--","终极鼓手","终极鼓手"],["--","终极鼓手超级现场版","终极鼓手超级现场版"],["--","节奏大师","节奏大师"],["--","钢琴贝贝","钢琴贝贝"],["--","拍拍学习乐(红)","拍拍学习乐(红)"],["--","拍拍学习乐(绿)","拍拍学习乐(绿)"],["--","拍拍学习乐(蓝)","拍拍学习乐(蓝)"],["--","饿唱","饿唱"],["--","莫扎特2代","莫扎特2代"],["--","豪华版终极鼓手","豪华版终极鼓手"],["--","GuitarFreaks XG 狂热鼓手","GuitarFreaks XG 狂热鼓手"],["--","爵士英雄","爵士英雄"],["--","手指音乐家","手指音乐家"],["--","小魔指","小魔指"],["--","青春鼓手","青春鼓手"],["--","滚石DJ4.5代","滚石DJ4.5代"],["--","电子爵士鼓","电子爵士鼓"],["--","鑫豪","鑫豪"],["--","音乐彩球","音乐彩球"],["--","电子鼓","电子鼓"],["--","手舞足蹈5代","手舞足蹈5代"],["--","音乐旋风","音乐旋风"],["--","鼓王3代","鼓王3代"],["--","手舞足蹈5代","手舞足蹈5代"],["--","青春豉手","青春豉手"],["--","太古达人12代","太古达人12代"],["--","超级爵士鼓2010(舞台版)","超级爵士鼓2010(舞台版)"],["--","魔方（带动感）","魔方（带动感）"],["--","魔法2代","魔法2代"],["--","梦幻DJ","梦幻DJ"],["--","吉它英雄(原装)","吉它英雄(原装)"],["--","鼓王2008(原装)","鼓王2008(原装)"],["--","鼓王加强版(原装)","鼓王加强版(原装)"],["--","爵士鼓舞台版","爵士鼓舞台版"],["--","小鼓王","小鼓王"],["--","超级爵士鼓(原装)","超级爵士鼓(原装)"],["--","魔法2代","魔法2代"],["--","魔法III代","魔法III代"],["--","滚石DJ3.5代(原装)","滚石DJ3.5代(原装)"],["--","滚石DJ5代(原装)","滚石DJ5代(原装)"],["--","动感魔方","动感魔方"],["--","滚石DJ3.5代","滚石DJ3.5代"],["--","DJMAX旋风3代","DJMAX旋风3代"],["--","超级劲舞团","超级劲舞团"],["--","点唱机","点唱机"],["--","欢歌乐总汇","欢歌乐总汇"],["--","星光","星光"],["--","鼓琴争霸","鼓琴争霸"],["--","音我成名","音我成名"],["--","童一首歌","童一首歌"],["--","青春旋律","青春旋律"],["--","挂壁式B1","挂壁式B1"],["--","挂壁式B2","挂壁式B2"],["--","歌神(mini)","歌神(mini)"],["--","歌神（mini）","歌神（mini）"],["--","嗨D","嗨D"],["--","红人荟网红直播间","红人荟网红直播间"],["--","双人豪华型魔法","双人豪华型魔法"],["--","争分夺秒","争分夺秒"],["--","打鼓英雄","打鼓英雄"],["--","打鼓英雄","打鼓英雄"],["--","DJ","DJ"],["--","麦王争霸","麦王争霸"],["--","魔法","魔法"],["--","乐动魔方","乐动魔方"],["--","好歌声盛典","好歌声盛典"],["--","好歌声盛典（触屏版）","好歌声盛典（触屏版）"],["--","好歌声盛典（非触屏版）","好歌声盛典（非触屏版）"],["--","DJ旋风","DJ旋风"],["--","终极鼓手","终极鼓手"],["--","DJ高手","DJ高手"],["--","钢琴小天使","钢琴小天使"],["--","咪咪鼓","咪咪鼓"],["--","音乐滚筒","音乐滚筒"],["--","鼓王2008","鼓王2008"],["--","太鼓达人","太鼓达人"],["--","滚石5代","滚石5代"],["--","音乐枪枪","音乐枪枪"],["--","鼓舞达人","鼓舞达人"],["--","超级爵士鼓","超级爵士鼓"],["--","超级爵士鼓舞台版二代","超级爵士鼓舞台版二代"],["--","超级电子鼓","超级电子鼓"],["--","音炫疯","音炫疯"],["--","水果钢琴","水果钢琴"],["--","狂热电子鼓","狂热电子鼓"],["--","魔法","魔法"],["--","麦王争霸","麦王争霸"],["--","麦王争霸","麦王争霸"],["--","麦王争霸","麦王争霸"],["--","2015爵士鼓普通版","2015爵士鼓普通版"],["--","2017爵士鼓普通版","2017爵士鼓普通版"],["--","神曲","神曲"],["--","超级爵士鼓X","超级爵士鼓X"],["--","莫扎特2代","莫扎特2代"],["--","超级爵士鼓舞台版","超级爵士鼓舞台版"],["--","舞王争霸一代流光幻音","舞王争霸一代流光幻音"],["--","舞台版爵士鼓","舞台版爵士鼓"],["--","舞之魂","舞之魂"],["--","舞林大会","舞林大会"],["--","舞王争霸3","舞王争霸3"],["--","DJ MAX","DJ MAX"],["--","音炫疯","音炫疯"],["--","疯狂鼓手","疯狂鼓手"],["--","超级爵士鼓2010舞台版","超级爵士鼓2010舞台版"],["--","魔幻弹珠","魔幻弹珠"],["--","魔幻节拍","魔幻节拍"],["--","魔方","魔方"],["--","魔方（带动感）","魔方（带动感）"],["--","欢乐 KTV","欢乐 KTV"],["--","我是直播歌手","我是直播歌手"],["--","欢乐K吧","欢乐K吧"],["--","烈火飚车","烈火飚车"],["--","梦幻麦霸","梦幻麦霸"],["--","梦幻麦霸普通版","梦幻麦霸普通版"],["--","音乐冲冲冲","音乐冲冲冲"],["--","音乐潮人","音乐潮人"],["--","鼓王3","鼓王3"],["--","DrumMania XG 吉他高手","DrumMania XG 吉他高手"],["--","音乐机","音乐机"],["--","手指指","手指指"],["--","手舞足蹈","手舞足蹈"],["--","手舞足蹈3.5","手舞足蹈3.5"],["--","星光灿烂","星光灿烂"],["--","中华鼓王","中华鼓王"],["--","魔法","魔法"],["--","魔法跳跳球","魔法跳跳球"],["--","魅力DJ","魅力DJ"],["--","梦幻DJ2010","梦幻DJ2010"],["--","乐动魔方","乐动魔方"],["--","咪哒 show","咪哒 show"],["--","咪哒唱吧","咪哒唱吧"],["--","滴滴K歌","滴滴K歌"],["--","迪迪K歌","迪迪K歌"],["--","咪咪鼓","咪咪鼓"],["--","DJMAX旋风Ⅱ","DJMAX旋风Ⅱ"],["--","音域对抗","音域对抗"],["--","音乐小鼓手","音乐小鼓手"],["--","动感魔方","动感魔方"],["--","动感魔方","动感魔方"],["--","动感魔方","动感魔方"],["--","动感魔方","动感魔方"],["--","动感魔方4代","动感魔方4代"],["--","动感魔方4代 双人","动感魔方4代 双人"],["--","动感节奏","动感节奏"],["--","动感节拍","动感节拍"],["--","动感节拍","动感节拍"],["--","太古三国","太古三国"],["--","秦乐疯","秦乐疯"],["--","舞立方","舞立方"],["--","明星大节奏双人","明星大节奏双人"],["--","节奏大明星单人","节奏大明星单人"],["--","旋转的风采","旋转的风采"],["--","节奏大明星","节奏大明星"],["--","节奏大明星双人版","节奏大明星双人版"],["--","乐动弹球","乐动弹球"],["--","鼓王3代","鼓王3代"],["--","点唱机","点唱机"],["--","狂热电子鼓","狂热电子鼓"],["--","迷你自助k吧","迷你自助k吧"],["--","嘟嘟music","嘟嘟music"],["--","钢琴达人","钢琴达人"],["--","动感曲棍球","动感曲棍球"],["--","钢琴块儿","钢琴块儿"],["--","滚石DJ3.5代","滚石DJ3.5代"],["--","炫舞PAPAPA","炫舞PAPAPA"],["--","炫舞机","炫舞机"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","K歌之王","K歌之王"],["--","爵士鼓2011","爵士鼓2011"],["--","魔法3代","魔法3代"],["--","电子鼓","电子鼓"],["--","终极鼓手现场版","终极鼓手现场版"],["--","终极鼓舞","终极鼓舞"],["--","音乐快手","音乐快手"],["--","音乐快手","音乐快手"],["--","梦幻钢琴（不含地台）","梦幻钢琴（不含地台）"],["--","钢琴小神童","钢琴小神童"],["--","钢琴块儿","钢琴块儿"],["--","节奏大明星","节奏大明星"],["--","赛龙舟","赛龙舟"],["--","钢琴块儿","钢琴块儿"],["--","动感魔方","动感魔方"],["--","欢乐K歌","欢乐K歌"],["--","欢乐K歌","欢乐K歌"],["--","韩国DJ 6","韩国DJ 6"],["--","滚滚乐","滚滚乐"],["--","舞立方","舞立方"],["--","欢乐小鼓","欢乐小鼓"],["--","练歌房","练歌房"],["--","歌神","歌神"],["--","自助录音棚","自助录音棚"],["--","钢琴贝贝","钢琴贝贝"],["--","DANCEBATTLE","DANCEBATTLE"],["--","DANCELIVE","DANCELIVE"],["--","DJ BEAT","DJ BEAT"],["--","音乐机","音乐机"],["--","音乐小鼓手","音乐小鼓手"],["--","楽動魔方","楽動魔方"],["--","魔乐","魔乐"],["--","爵士英雄","爵士英雄"],["--","爵士英雄2","爵士英雄2"],["--","魔法X","魔法X"],["--","迷乐世界","迷乐世界"],["--","动感魔方","动感魔方"],["--","华卡音舞2","华卡音舞2"],["--","咪哒唱吧","咪哒唱吧"],["--","哆蕾咪","哆蕾咪"],["--","钢琴小天使2","钢琴小天使2"]],"ds":[["1997-12-10T00:00:00+09:00","beatmania","beatmania"],["1998-03-18T00:00:00+09:00","beatmania 2ndMIX","beatmania 2ndMIX"],["1998-09-28T00:00:00+09:00","beatmania 3rdMIX","beatmania 3rdMIX"],["1999-04-26T00:00:00+09:00","beatmania 4thMIX  the beat goes on ","beatmania 4thMIX  the beat goes on "],["1999-09-22T00:00:00+09:00","beatmania 5thMIX  Time to get down ","beatmania 5thMIX  Time to get down "],["2001-07-11T00:00:00+09:00","beatmania 6thMIX  THE UK UNDERGROUND MUSIC ","beatmania 6thMIX  THE UK UNDERGROUND MUSIC "],["2002-01-31T00:00:00+09:00","beatmania 7thMIX  keepin’ evolution ","beatmania 7thMIX  keepin’ evolution "],["2000-03-28T00:00:00+09:00","beatmania ClubMIX","beatmania ClubMIX"],["1999-01-19T00:00:00+09:00","beatmania complete MIX","beatmania complete MIX"],["2000-01-27T00:00:00+09:00","beatmania complete MIX 2","beatmania complete MIX 2"],["2000-11-28T00:00:00+09:00","beatmania CORE REMIX","beatmania CORE REMIX"],["2000-05-31T00:00:00+09:00","beatmania featuring DREAMS COME TRUE","beatmania featuring DREAMS COME TRUE"],["1999-02-26T00:00:00+09:00","beatmania IIDX","beatmania IIDX"],["2004-02-18T00:00:00+09:00","beatmania IIDX 10th style","beatmania IIDX 10th style"],["2004-10-28T00:00:00+09:00","beatmania IIDX 11 IIDX RED","beatmania IIDX 11 IIDX RED"],["2005-07-13T00:00:00+09:00","beatmania IIDX 12 HAPPY SKY","beatmania IIDX 12 HAPPY SKY"],["2006-03-15T00:00:00+09:00","beatmania IIDX 13 DistorteD","beatmania IIDX 13 DistorteD"],["2007-02-21T00:00:00+09:00","beatmania IIDX 14 GOLD","beatmania IIDX 14 GOLD"],["2007-12-19T00:00:00+09:00","beatmania IIDX 15 DJ TROOPERS","beatmania IIDX 15 DJ TROOPERS"],["2008-11-19T00:00:00+09:00","beatmania IIDX 16 EMPRESS","beatmania IIDX 16 EMPRESS"],["2009-10-21T00:00:00+09:00","beatmania IIDX 17 SIRIUS","beatmania IIDX 17 SIRIUS"],["2010-09-15T00:00:00+09:00","beatmania IIDX 18 Resort Anthem","beatmania IIDX 18 Resort Anthem"],["2011-09-15T00:00:00+09:00","beatmania IIDX 19 Lincle","beatmania IIDX 19 Lincle"],["2012-09-19T00:00:00+09:00","beatmania IIDX 20 tricoro","beatmania IIDX 20 tricoro"],["2013-11-13T00:00:00+09:00","beatmania IIDX 21 SPADA","beatmania IIDX 21 SPADA"],["2014-09-17T00:00:00+09:00","beatmania IIDX 22 PENDUAL","beatmania IIDX 22 PENDUAL"],["2015-11-11T00:00:00+09:00","beatmania IIDX 23 copula ","beatmania IIDX 23 copula "],["2016-10-26T00:00:00+09:00","beatmania IIDX 24 SINOBUZ","beatmania IIDX 24 SINOBUZ"],["2017-12-21T00:00:00+09:00","beatmania IIDX 25 CANNON BALLERS","beatmania IIDX 25 CANNON BALLERS"],["2018-11-07T00:00:00+09:00","beatmania IIDX 26 Rootage","beatmania IIDX 26 Rootage"],["2019-10-16T00:00:00+09:00","beatmania IIDX 27 HEROIC VERSE","beatmania IIDX 27 HEROIC VERSE"],["2020-10-28T00:00:00+09:00","beatmania IIDX 28 BISTROVER","beatmania IIDX 28 BISTROVER"],["2021-10-13T00:00:00+09:00","beatmania IIDX 29 CastHour","beatmania IIDX 29 CastHour"],["1999-09-30T00:00:00+09:00","beatmania IIDX 2nd style","beatmania IIDX 2nd style"],["2022-10-19T00:00:00+09:00","beatmania IIDX 30 RESIDENT","beatmania IIDX 30 RESIDENT"],["2023-10-18T00:00:00+09:00","beatmania IIDX 31 EPOLIS","beatmania IIDX 31 EPOLIS"],["2024-10-09T00:00:00+09:00","beatmania IIDX 32 Pinky Crush","beatmania IIDX 32 Pinky Crush"],["2000-02-25T00:00:00+09:00","beatmania IIDX 3rd style","beatmania IIDX 3rd style"],["2000-09-28T00:00:00+09:00","beatmania IIDX 4th style","beatmania IIDX 4th style"],["2001-03-27T00:00:00+09:00","beatmania IIDX 5th style","beatmania IIDX 5th style"],["2001-09-28T00:00:00+09:00","beatmania IIDX 6th style","beatmania IIDX 6th style"],["2002-03-27T00:00:00+09:00","beatmania IIDX 7th style","beatmania IIDX 7th style"],["2002-09-27T00:00:00+09:00","beatmania IIDX 8th style","beatmania IIDX 8th style"],["2003-06-25T00:00:00+09:00","beatmania IIDX 9th style","beatmania IIDX 9th style"],["1999-07-27T00:00:00+09:00","beatmania IIDX substream","beatmania IIDX substream"],["2000-03-08T00:00:00+09:00","beatmania III","beatmania III"],["2001-07-11T00:00:00+09:00","beatmania III APPEND 6thMIX","beatmania III APPEND 6thMIX"],["2002-01-26T00:00:00+09:00","beatmania III APPEND 7thMIX","beatmania III APPEND 7thMIX"],["2000-12-21T00:00:00+09:00","beatmania III APPEND CORE REMIX","beatmania III APPEND CORE REMIX"],["2002-08-26T00:00:00+09:00","beatmania III THE FINAL","beatmania III THE FINAL"],["--","beatstage II","beatstage II"],["2014-07-17T00:00:00+09:00","BeatStream","BeatStream"],["2015-12-21T00:00:00+09:00","BeatStream アニムトライヴ","BeatStream アニムトライヴ"],["2005-06-23T00:00:00+09:00","DANCE 86.4 FUNKY RADIO STATION","DANCE 86.4 FUNKY RADIO STATION"],["2022-03-03T00:00:00+09:00","DANCE aROUND","DANCE aROUND"],["2013-03-14T00:00:00+09:00","Dance Dance Revolution","Dance Dance Revolution"],["1998-09-26T00:00:00+09:00","Dance Dance Revolution （初代）","Dance Dance Revolution （初代）"],["1999-01-29T00:00:00+09:00","Dance Dance Revolution 2ndMIX","Dance Dance Revolution 2ndMIX"],["1999-05-06T00:00:00+09:00","Dance Dance Revolution 2ndMIX CLUB VERSION","Dance Dance Revolution 2ndMIX CLUB VERSION"],["1999-07-27T00:00:00+09:00","Dance Dance Revolution 2ndMIX CLUB VERSION 2","Dance Dance Revolution 2ndMIX CLUB VERSION 2"],["1999-04-28T00:00:00+09:00","Dance Dance Revolution 2ndMIX LINK VERSION","Dance Dance Revolution 2ndMIX LINK VERSION"],["1999-10-30T00:00:00+09:00","Dance Dance Revolution 3rdMIX","Dance Dance Revolution 3rdMIX"],["2000-06-21T00:00:00+09:00","Dance Dance Revolution 3rdMIX PLUS","Dance Dance Revolution 3rdMIX PLUS"],["--","Dance Dance Revolution 3rdMIX ver Korea","Dance Dance Revolution 3rdMIX ver Korea"],["--","Dance Dance Revolution 3rdMIX ver Korea 2","Dance Dance Revolution 3rdMIX ver Korea 2"],["2000-08-24T00:00:00+09:00","Dance Dance Revolution 4thMIX","Dance Dance Revolution 4thMIX"],["2000-12-28T00:00:00+09:00","Dance Dance Revolution 4thMIX PLUS","Dance Dance Revolution 4thMIX PLUS"],["2001-05-02T00:00:00+09:00","Dance Dance Revolution 5thMIX","Dance Dance Revolution 5thMIX"],["2016-03-30T00:00:00+09:00","Dance Dance Revolution A","Dance Dance Revolution A"],["2016-04-04T00:00:00+09:00","Dance Dance Revolution A,KR","Dance Dance Revolution A,KR"],["2016-07-06T00:00:00+09:00","Dance Dance Revolution A,US","Dance Dance Revolution A,US"],["2019-07-24T00:00:00+09:00","Dance Dance Revolution A20","Dance Dance Revolution A20"],["2019-03-20T00:00:00+09:00","Dance Dance Revolution A20","Dance Dance Revolution A20"],["2020-07-01T00:00:00+09:00","Dance Dance Revolution A20 PLUS","Dance Dance Revolution A20 PLUS"],["2020-07-06T00:00:00+09:00","Dance Dance Revolution A20 PLUS,旧台","Dance Dance Revolution A20 PLUS,旧台"],["2019-08-01T00:00:00+09:00","Dance Dance Revolution A20,KR","Dance Dance Revolution A20,KR"],["2019-09-24T00:00:00+09:00","Dance Dance Revolution A20,US","Dance Dance Revolution A20,US"],["2003-01-29T00:00:00+09:00","Dance Dance Revolution EXTREME","Dance Dance Revolution EXTREME"],["1998-11-18T00:00:00+09:00","Dance Dance Revolution Internet Ranking Version","Dance Dance Revolution Internet Ranking Version"],["2000-12-01T00:00:00+09:00","Dance Dance Revolution Kids","Dance Dance Revolution Kids"],["1999-12-16T00:00:00+09:00","Dance Dance Revolution Solo 2000","Dance Dance Revolution Solo 2000"],["2000-12-28T00:00:00+09:00","Dance Dance Revolution Solo 4thMix","Dance Dance Revolution Solo 4thMix"],["1999-08-19T00:00:00+09:00","Dance Dance Revolution Solo BASS MIX","Dance Dance Revolution Solo BASS MIX"],["2006-07-12T00:00:00+09:00","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA"],["2006-04-01T00:00:00+09:00","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,EU","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,EU"],["2006-05-01T00:00:00+09:00","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,US","Dance Dance Revolution SuperNOVA / Dancing Stage SuperNOVA,US"],["2007-08-22T00:00:00+09:00","Dance Dance Revolution SuperNOVA2","Dance Dance Revolution SuperNOVA2"],["2008-01-18T00:00:00+09:00","Dance Dance Revolution SuperNOVA2,US","Dance Dance Revolution SuperNOVA2,US"],["2008-12-24T00:00:00+09:00","Dance Dance Revolution X","Dance Dance Revolution X"],["2009-06-09T00:00:00+09:00","Dance Dance Revolution X,EU","Dance Dance Revolution X,EU"],["2009-06-03T00:00:00+09:00","Dance Dance Revolution X,US","Dance Dance Revolution X,US"],["2010-07-07T00:00:00+09:00","Dance Dance Revolution X2","Dance Dance Revolution X2"],["2011-05-13T00:00:00+09:00","Dance Dance Revolution X2,EU","Dance Dance Revolution X2,EU"],["2010-12-31T00:00:00+09:00","Dance Dance Revolution X2,US","Dance Dance Revolution X2,US"],["2011-11-16T00:00:00+09:00","Dance Dance Revolution X3 VS 2ndMIX","Dance Dance Revolution X3 VS 2ndMIX"],["2001-01-01T00:00:00+09:00","Dance Dance RevolutionUSA","Dance Dance RevolutionUSA"],["2000-06-21T00:00:00+09:00","Dance Maniax","Dance Maniax"],["2000-12-05T00:00:00+09:00","Dance Maniax 2ndMIX","Dance Maniax 2ndMIX"],["2001-04-19T00:00:00+09:00","Dance Maniax 2ndMIX APPEND J☆PARADISE","Dance Maniax 2ndMIX APPEND J☆PARADISE"],["2022-03-17T00:00:00+09:00","DanceDanceRevolution A3","DanceDanceRevolution A3"],["2022-06-22T00:00:00+09:00","DanceDanceRevolution A3,旧X白","DanceDanceRevolution A3,旧X白"],["2024-06-12T00:00:00+09:00","DanceDanceRevolution WORLD","DanceDanceRevolution WORLD"],["2012-03-27T00:00:00+09:00","DanceEvolution ARCADE","DanceEvolution ARCADE"],["--","DanceEvolutionArcade舞蹈进化","DanceEvolutionArcade舞蹈进化"],["2018-03-23T00:00:00+09:00","DANCERUSH STARDOM","DANCERUSH STARDOM"],["--","Dancing Stage","Dancing Stage"],["2002-08-01T00:00:00+09:00","Dancing Stage EUroMIX2","Dancing Stage EUroMIX2"],["2000-11-30T00:00:00+09:00","Dancing Stage featuring Disney’s RAVE","Dancing Stage featuring Disney’s RAVE"],["1999-12-25T00:00:00+09:00","Dancing Stage featuring DREAMS COME TRUE","Dancing Stage featuring DREAMS COME TRUE"],["1999-07-27T00:00:00+09:00","Dancing Stage featuring TRUE KiSS DESTiNATiON","Dancing Stage featuring TRUE KiSS DESTiNATiON"],["2005-01-01T00:00:00+09:00","Dancing Stage Fusion","Dancing Stage Fusion"],["--","Dancing StageEUroMIX","Dancing StageEUroMIX"],["2001-11-24T00:00:00+09:00","DDRMAX  Dance Dance Revolution 6thMIX ","DDRMAX  Dance Dance Revolution 6thMIX "],["2002-05-01T00:00:00+09:00","DDRMAX2  Dance Dance Revolution 7thMIX ","DDRMAX2  Dance Dance Revolution 7thMIX "],["2010-12-21T00:00:00+09:00","DJMAXTECHNICA(JP)","DJMAXTECHNICA(JP)"],["2012-09-27T00:00:00+09:00","DJMAXTECHNICA2(JP)","DJMAXTECHNICA2(JP)"],["1999-07-21T00:00:00+09:00","drummania","drummania"],["2004-04-22T00:00:00+09:00","drummania 10thMIX","drummania 10thMIX"],["2000-03-27T00:00:00+09:00","drummania 2ndMIX","drummania 2ndMIX"],["2000-09-13T00:00:00+09:00","drummania 3rdMIX","drummania 3rdMIX"],["2001-03-17T00:00:00+09:00","drummania 4thMIX","drummania 4thMIX"],["2001-09-13T00:00:00+09:00","drummania 5thMIX","drummania 5thMIX"],["2002-02-28T00:00:00+09:00","drummania 6thMIX","drummania 6thMIX"],["2002-08-30T00:00:00+09:00","drummania 7thMIX","drummania 7thMIX"],["2002-11-29T00:00:00+09:00","drummania 7thMIX power up ver.","drummania 7thMIX power up ver."],["2003-04-02T00:00:00+09:00","drummania 8thMIX","drummania 8thMIX"],["2003-10-08T00:00:00+09:00","drummania 9thMIX","drummania 9thMIX"],["2005-02-23T00:00:00+09:00","DrumManiaV","DrumManiaV"],["2005-11-24T00:00:00+09:00","DrumManiaV2","DrumManiaV2"],["2006-09-13T00:00:00+09:00","DrumManiaV3","DrumManiaV3"],["2007-08-08T00:00:00+09:00","DrumManiaV4 Яock×Rock","DrumManiaV4 Яock×Rock"],["2008-06-18T00:00:00+09:00","DrumManiaV5 Rock to Infinity","DrumManiaV5 Rock to Infinity"],["2009-04-09T00:00:00+09:00","DrumManiaV6 BLAZING!!!!","DrumManiaV6 BLAZING!!!!"],["2010-03-25T00:00:00+09:00","DrumManiaV7","DrumManiaV7"],["2011-03-28T00:00:00+09:00","DrumManiaV8","DrumManiaV8"],["2013-02-14T00:00:00+09:00","GITADORA","GITADORA"],["2018-09-12T00:00:00+09:00","GITADORA EXCHAIN","GITADORA EXCHAIN"],["2022-12-14T00:00:00+09:00","GITADORA FUZZ UP","GITADORA FUZZ UP"],["2024-03-13T00:00:00+09:00","GITADORA GALAXY WAVE","GITADORA GALAXY WAVE"],["2017-09-06T00:00:00+09:00","GITADORA Matixx","GITADORA Matixx"],["2019-10-02T00:00:00+09:00","GITADORA NEX＋AGE","GITADORA NEX＋AGE"],["2014-03-05T00:00:00+09:00","GITADORA OverDrive","GITADORA OverDrive"],["2015-04-21T00:00:00+09:00","GITADORA Tri Boost","GITADORA Tri Boost"],["2016-12-14T00:00:00+09:00","GITADORA Tri Boost Re:EVOLVE","GITADORA Tri Boost Re:EVOLVE"],["1999-03-15T00:00:00+09:00","GUITARFREAKS ","GUITARFREAKS "],["2003-10-08T00:00:00+09:00","GUITARFREAKS 10thMIX","GUITARFREAKS 10thMIX"],["2004-04-22T00:00:00+09:00","GUITARFREAKS 11thMIX","GUITARFREAKS 11thMIX"],["1999-07-10T00:00:00+09:00","GUITARFREAKS 2ndMIX ","GUITARFREAKS 2ndMIX "],["1999-09-01T00:00:00+09:00","GUITARFREAKS 2ndMIX Link version ","GUITARFREAKS 2ndMIX Link version "],["2000-04-21T00:00:00+09:00","GUITARFREAKS 3rdMIX","GUITARFREAKS 3rdMIX"],["2000-09-13T00:00:00+09:00","GUITARFREAKS 4thMIX","GUITARFREAKS 4thMIX"],["2001-03-17T00:00:00+09:00","GUITARFREAKS 5thMIX","GUITARFREAKS 5thMIX"],["2001-09-13T00:00:00+09:00","GUITARFREAKS 6thMIX","GUITARFREAKS 6thMIX"],["2002-02-28T00:00:00+09:00","GUITARFREAKS 7thMIX","GUITARFREAKS 7thMIX"],["2002-08-30T00:00:00+09:00","GUITARFREAKS 8thMIX","GUITARFREAKS 8thMIX"],["2002-11-29T00:00:00+09:00","GUITARFREAKS 8thMIX power up ver.","GUITARFREAKS 8thMIX power up ver."],["2003-04-02T00:00:00+09:00","GUITARFREAKS 9thMIX","GUITARFREAKS 9thMIX"],["2005-02-23T00:00:00+09:00","GuitarFreaksV","GuitarFreaksV"],["2005-11-24T00:00:00+09:00","GuitarFreaksV2","GuitarFreaksV2"],["2006-09-13T00:00:00+09:00","GuitarFreaksV3","GuitarFreaksV3"],["2007-08-08T00:00:00+09:00","GuitarFreaksV4 Яock×Rock","GuitarFreaksV4 Яock×Rock"],["2008-06-18T00:00:00+09:00","GuitarFreaksV5 Rock to Infinity","GuitarFreaksV5 Rock to Infinity"],["2009-04-09T00:00:00+09:00","GuitarFreaksV6 BLAZING!!!!","GuitarFreaksV6 BLAZING!!!!"],["2010-03-25T00:00:00+09:00","GuitarFreaksV7","GuitarFreaksV7"],["2011-03-28T00:00:00+09:00","GuitarFreaksV8","GuitarFreaksV8"],["2010-03-10T00:00:00+09:00","GuitarFreaksXG＆DrumManiaXG","GuitarFreaksXG＆DrumManiaXG"],["2011-03-09T00:00:00+09:00","GuitarFreaksXG2＆DrumManiaXG2","GuitarFreaksXG2＆DrumManiaXG2"],["2011-03-16T00:00:00+09:00","GuitarFreaksXG2＆DrumManiaXG2,SD","GuitarFreaksXG2＆DrumManiaXG2,SD"],["2012-02-23T00:00:00+09:00","GuitarFreaksXG3＆DrumManiaXG3","GuitarFreaksXG3＆DrumManiaXG3"],["2011-03-23T00:00:00+09:00","HELLO! POP’N MUSIC   ハロー! ポップンミュージック","HELLO! POP’N MUSIC   ハロー! ポップンミュージック"],["2008-07-24T00:00:00+09:00","jubeat","jubeat"],["2022-08-03T00:00:00+09:00","jubeat Ave.","jubeat Ave."],["2023-09-20T00:00:00+09:00","jubeat beyond the Ave. ","jubeat beyond the Ave. "],["2017-07-26T00:00:00+09:00","jubeat clan","jubeat clan"],["2011-09-15T00:00:00+09:00","jubeat copious","jubeat copious"],["2018-09-05T00:00:00+09:00","jubeat festo","jubeat festo"],["2010-07-29T00:00:00+09:00","jubeat knit","jubeat knit"],["2015-02-20T00:00:00+09:00","jubeat prop","jubeat prop"],["2016-03-30T00:00:00+09:00","jubeat Qubell","jubeat Qubell"],["2009-08-05T00:00:00+09:00","jubeat ripples","jubeat ripples"],["2012-09-25T00:00:00+09:00","jubeat saucer","jubeat saucer"],["2014-03-03T00:00:00+09:00","jubeat saucer fulfill","jubeat saucer fulfill"],["--","jubeat(リブート)","jubeat(リブート)"],["--","jubeat乐动魔方","jubeat乐动魔方"],["--","jubeat乐动魔方2代","jubeat乐动魔方2代"],["--","jubeat乐动魔方3代","jubeat乐动魔方3代"],["2000-02-06T00:00:00+09:00","KEYBOARDMANIA","KEYBOARDMANIA"],["2000-10-06T00:00:00+09:00","KEYBOARDMANIA 2ndMIX","KEYBOARDMANIA 2ndMIX"],["2001-03-15T00:00:00+09:00","KEYBOARDMANIA 3rdMIX","KEYBOARDMANIA 3rdMIX"],["2001-06-04T00:00:00+09:00","MAMBO A GO GO","MAMBO A GO GO"],["2002-03-01T00:00:00+09:00","MARTIALBEATアーケード","MARTIALBEATアーケード"],["2016-07-27T00:00:00+09:00","MÚSECA 1+1/2","MÚSECA 1+1/2"],["2015-12-10T00:00:00+09:00","MÚSECA(ミュゼカ）","MÚSECA(ミュゼカ）"],["--","NEW pop’n music Welcome to Wonderland!","NEW pop’n music Welcome to Wonderland!"],["2000-09-12T00:00:00+09:00","ParaParaParadise","ParaParaParadise"],["2000-12-26T00:00:00+09:00","ParaParaParadise 1st MIX Plus","ParaParaParadise 1st MIX Plus"],["2001-03-15T00:00:00+09:00","ParaParaParadise 2nd MIX","ParaParaParadise 2nd MIX"],["2000-10-24T00:00:00+09:00","ParaParaParadise V1.1","ParaParaParadise V1.1"],["1998-09-28T00:00:00+09:00","pop’n music   ポップンミュージック","pop’n music   ポップンミュージック"],["2003-08-06T00:00:00+09:00","pop’n music 10   ポップンミュージック10","pop’n music 10   ポップンミュージック10"],["2004-03-24T00:00:00+09:00","pop’n music 11   ポップンミュージック11","pop’n music 11   ポップンミュージック11"],["2004-12-08T00:00:00+09:00","pop’n music 12 いろは   ポップンミュージック12 いろは","pop’n music 12 いろは   ポップンミュージック12 いろは"],["2005-09-07T00:00:00+09:00","pop’n music 13 カーニバル   ポップンミュージック13 カーニバル","pop’n music 13 カーニバル   ポップンミュージック13 カーニバル"],["2006-05-17T00:00:00+09:00","pop’n music 14 FEVER!   ポップンミュージック14 フィーバー!","pop’n music 14 FEVER!   ポップンミュージック14 フィーバー!"],["2007-04-25T00:00:00+09:00","pop’n music 15 ADVENTURE   ポップンミュージック15 アドベンチャー","pop’n music 15 ADVENTURE   ポップンミュージック15 アドベンチャー"],["2008-03-24T00:00:00+09:00","pop’n music 16 PARTY♪   ポップンミュージック16 パーティー♪","pop’n music 16 PARTY♪   ポップンミュージック16 パーティー♪"],["2009-03-04T00:00:00+09:00","pop’n music 17 THE MOVIE   ポップンミュージック17 ザ・ムービー","pop’n music 17 THE MOVIE   ポップンミュージック17 ザ・ムービー"],["2010-01-20T00:00:00+09:00","pop’n music 18 せんごく列伝   ポップンミュージック18 せんごくれつでん","pop’n music 18 せんごく列伝   ポップンミュージック18 せんごくれつでん"],["2010-12-09T00:00:00+09:00","pop’n music 19 TUNE STREET   ポップンミュージック19 チューンストリート","pop’n music 19 TUNE STREET   ポップンミュージック19 チューンストリート"],["1999-03-26T00:00:00+09:00","pop’n music 2   ポップンミュージック2","pop’n music 2   ポップンミュージック2"],["2011-12-07T00:00:00+09:00","pop’n music 20 fantasia   ポップンミュージック20 ファンタジア","pop’n music 20 fantasia   ポップンミュージック20 ファンタジア"],["1999-09-16T00:00:00+09:00","pop’n music 3   ポップンミュージック3","pop’n music 3   ポップンミュージック3"],["2000-03-16T00:00:00+09:00","pop’n music 4   ポップンミュージック4","pop’n music 4   ポップンミュージック4"],["2000-11-17T00:00:00+09:00","pop’n music 5   ポップンミュージック5","pop’n music 5   ポップンミュージック5"],["2001-05-11T00:00:00+09:00","pop’n music 6   ポップンミュージック6","pop’n music 6   ポップンミュージック6"],["2001-11-22T00:00:00+09:00","pop’n music 7   ポップンミュージック7","pop’n music 7   ポップンミュージック7"],["2002-05-30T00:00:00+09:00","pop’n music 8   ポップンミュージック8","pop’n music 8   ポップンミュージック8"],["2002-12-26T00:00:00+09:00","pop’n music 9   ポップンミュージック9","pop’n music 9   ポップンミュージック9"],["2015-11-26T00:00:00+09:00","pop’n music éclale   ポップンミュージック エクラル","pop’n music éclale   ポップンミュージック エクラル"],["2024-09-25T00:00:00+09:00","pop’n music Jam&Fizz","pop’n music Jam&Fizz"],["2018-10-17T00:00:00+09:00","pop’n music peace   ポップンミュージック ピース","pop’n music peace   ポップンミュージック ピース"],["2012-12-05T00:00:00+09:00","pop’n music Sunny Park   ポップンミュージック サニーパーク","pop’n music Sunny Park   ポップンミュージック サニーパーク"],["2022-09-13T00:00:00+09:00","pop’n music UniLab","pop’n music UniLab"],["2016-12-14T00:00:00+09:00","pop’n music うさぎと猫と少年の夢   ポップンミュージック うさぎとねことしょうねんのゆめ","pop’n music うさぎと猫と少年の夢   ポップンミュージック うさぎとねことしょうねんのゆめ"],["2014-06-25T00:00:00+09:00","pop’n music ラピストリア   ポップンミュージック ラピストリア","pop’n music ラピストリア   ポップンミュージック ラピストリア"],["2020-12-09T00:00:00+09:00","pop’n music 解明リドルズ   ポップンミュージック かいめいリドルズ","pop’n music 解明リドルズ   ポップンミュージック かいめいリドルズ"],["1999-09-24T00:00:00+09:00","pop’n stage   ポップンステージ","pop’n stage   ポップンステージ"],["1999-12-20T00:00:00+09:00","pop’n stage ex   ポップンステージex","pop’n stage ex   ポップンステージex"],["--","RAP FREAKS","RAP FREAKS"],["2010-11-04T00:00:00+09:00","REFLEC BEAT","REFLEC BEAT"],["2012-11-21T00:00:00+09:00","REFLEC BEAT colette","REFLEC BEAT colette"],["2014-06-04T00:00:00+09:00","REFLEC BEAT groovin’!!","REFLEC BEAT groovin’!!"],["2014-11-20T00:00:00+09:00","REFLEC BEAT groovin’!! Upper","REFLEC BEAT groovin’!! Upper"],["2011-11-16T00:00:00+09:00","REFLEC BEAT limelight","REFLEC BEAT limelight"],["2015-10-28T00:00:00+09:00","REFLEC BEAT VOLZZA","REFLEC BEAT VOLZZA"],["2016-03-24T00:00:00+09:00","REFLEC BEAT VOLZZA 2","REFLEC BEAT VOLZZA 2"],["2016-12-01T00:00:00+09:00","REFLEC BEAT 悠久のリフレシア The Reflesia of Eternity","REFLEC BEAT 悠久のリフレシア The Reflesia of Eternity"],["--","Rizminance","Rizminance"],["--","Shuffle Dancerz","Shuffle Dancerz"],["2012-01-18T00:00:00+09:00","SOUND VOLTEX BOOTH","SOUND VOLTEX BOOTH"],["2021-02-17T00:00:00+09:00","SOUND VOLTEX EXCEED GEAR","SOUND VOLTEX EXCEED GEAR"],["2013-06-05T00:00:00+09:00","SOUND VOLTEX II  infinite infection ","SOUND VOLTEX II  infinite infection "],["2014-11-20T00:00:00+09:00","SOUND VOLTEX III GRAVITY WARS","SOUND VOLTEX III GRAVITY WARS"],["2016-12-21T00:00:00+09:00","SOUND VOLTEX IV HEAVAENLY HAVEN","SOUND VOLTEX IV HEAVAENLY HAVEN"],["2019-02-28T00:00:00+09:00","SOUND VOLTEX VIVID WAVE","SOUND VOLTEX VIVID WAVE"],["--","STEPSTAR","STEPSTAR"],["--","DANCE GENERATIONS","DANCE GENERATIONS"],["2005-02-24T00:00:00+09:00","Toy’sMarch","Toy’sMarch"],["2005-12-15T00:00:00+09:00","Toy’sMarch2","Toy’sMarch2"],["--","おといろは","おといろは"],["2015-03-13T00:00:00+09:00","オトカ♥ドール","オトカ♥ドール"],["2017-03-01T00:00:00+09:00","ノスタルジア","ノスタルジア"],["2017-07-19T00:00:00+09:00","ノスタルジア FORTE","ノスタルジア FORTE"],["2018-09-26T00:00:00+09:00","ノスタルジア Op.2","ノスタルジア Op.2"],["2019-12-02T00:00:00+09:00","ノスタルジア Op.3","ノスタルジア Op.3"],["2024-03-27T00:00:00+09:00","ポラリスコード","ポラリスコード"],["2013-06-20T00:00:00+09:00","ミライダガッキ  FutureTomTom ","ミライダガッキ  FutureTomTom "],["2013-12-18T00:00:00+09:00","ミライダガッキ Ver.2","ミライダガッキ Ver.2"],["2000-07-01T00:00:00+09:00","Dance Freaks","Dance Freaks"],["--","彩響DJアニクラゲ","彩響DJアニクラゲ"],["2003-07-01T00:00:00+09:00","三味線ブラザーズ","三味線ブラザーズ"],["2023-01-01T00:00:00+09:00","朗舞","朗舞"],["2015-07-15T15:00:00Z","CHUNITHM","CHUNITHM"],["2016-02-03T15:00:00Z","CHUNITHM PLUS","CHUNITHM PLUS"],["2016-08-24T15:00:00Z","CHUNITHM AIR","CHUNITHM AIR"],["2017-02-08T15:00:00Z","CHUNITHM AIR PLUS","CHUNITHM AIR PLUS"],["2017-08-23T15:00:00Z","CHUNITHM STAR","CHUNITHM STAR"],["2018-03-07T15:00:00Z","CHUNITHM STAR PLUS","CHUNITHM STAR PLUS"],["2018-10-24T15:00:00Z","CHUNITHM AMAZON","CHUNITHM AMAZON"],["2019-04-10T15:00:00Z","CHUNITHM AMAZON PLUS","CHUNITHM AMAZON PLUS"],["2019-10-23T15:00:00Z","CHUNITHM CRYSTAL","CHUNITHM CRYSTAL"],["2020-07-15T15:00:00Z","CHUNITHM CRYSTAL PLUS","CHUNITHM CRYSTAL PLUS"],["2020-11-25T15:00:00Z","CHUNITHM SUPER STAR","CHUNITHM SUPER STAR"],["2021-01-20T15:00:00Z","CHUNITHM PARADISE","CHUNITHM PARADISE"],["2021-05-12T15:00:00Z","CHUNITHM PARADISE LOST","CHUNITHM PARADISE LOST"],["2021-11-03T15:00:00Z","CHUNITHM NEW！","CHUNITHM NEW！"],["2022-04-13T15:00:00Z","CHUNITHM NEW PLUS","CHUNITHM NEW PLUS"],["2022-10-12T15:00:00Z","CHUNITHM SUN","CHUNITHM SUN"],["2023-05-10T15:00:00Z","CHUNITHM SUN PLUS","CHUNITHM SUN PLUS"],["2023-12-13T15:00:00Z","CHUNITHM LUMINOUS","CHUNITHM LUMINOUS"],["2024-06-19T15:00:00Z","CHUNITHM LUMINOUS PLUS　","CHUNITHM LUMINOUS PLUS　"],["2024-12-11T15:00:00Z","CHUNITHM VERSE","CHUNITHM VERSE"],["2007-11-28T15:00:00Z","Disney マジカルダンス オン ドリームステージ","Disney マジカルダンス オン ドリームステージ"],["2012-07-10T15:00:00Z","maimai 初代","maimai 初代"],["2012-12-12T15:00:00Z","maimai PLUS","maimai PLUS"],["2013-07-10T15:00:00Z","maimai GreeN","maimai GreeN"],["2014-02-25T15:00:00Z","maimai GreeN PLUS","maimai GreeN PLUS"],["2014-09-17T15:00:00Z","maimai ORANGE","maimai ORANGE"],["2015-03-18T15:00:00Z","maimai ORANGE PLUS","maimai ORANGE PLUS"],["2015-12-08T15:00:00Z","maimai PiNK","maimai PiNK"],["2016-06-29T15:00:00Z","maimai PiNK PLUS","maimai PiNK PLUS"],["2016-12-14T15:00:00Z","maimai MURASAKi","maimai MURASAKi"],["2017-06-21T15:00:00Z","maimai MURASAKi PLUS","maimai MURASAKi PLUS"],["2017-12-13T15:00:00Z","maimai MiLK","maimai MiLK"],["2018-06-20T15:00:00Z","maimai MiLK PLUS","maimai MiLK PLUS"],["2018-12-12T15:00:00Z","maimai FiNALE","maimai FiNALE"],["2019-07-10T15:00:00Z","maimaiでらっくす","maimaiでらっくす"],["2020-01-22T15:00:00Z","maimaiでらっくす PLUS","maimaiでらっくす PLUS"],["2020-09-16T15:00:00Z","maimaiでらっくす Splash","maimaiでらっくす Splash"],["2021-03-17T15:00:00Z","maimaiでらっくすSplash PLUS","maimaiでらっくすSplash PLUS"],["2021-09-15T15:00:00Z","maimaiでらっくす UNiVERSE","maimaiでらっくす UNiVERSE"],["2022-03-23T15:00:00Z","maimai でらっくす UNiVERSE PLUS","maimai でらっくす UNiVERSE PLUS"],["2023-03-22T15:00:00Z","maimai でらっくす FESTiVAL PLUS","maimai でらっくす FESTiVAL PLUS"],["2023-09-13T15:00:00Z","maimai でらっくす BUDDiES","maimai でらっくす BUDDiES"],["2024-03-20T15:00:00Z","maimai でらっくす BUDDiES PLUS","maimai でらっくす BUDDiES PLUS"],["2024-09-11T15:00:00Z","maimai でらっくす PRiSM","maimai でらっくす PRiSM"],["2025-03-12T15:00:00Z","maimai でらっくす PRiSM PLUS","maimai でらっくす PRiSM PLUS"],["2020-03-04T15:00:00Z","オトシューDX","オトシューDX"],["2018-07-25T15:00:00Z","オンゲキ","オンゲキ"],["2019-02-06T15:00:00Z","オンゲキPLUS","オンゲキPLUS"],["2019-08-21T15:00:00Z","オンゲキSUMMER","オンゲキSUMMER"],["2020-02-19T15:00:00Z","オンゲキSUMMER PLUS","オンゲキSUMMER PLUS"],["2020-09-29T15:00:00Z","オンゲキ R.E.D.","オンゲキ R.E.D."],["2021-03-30T15:00:00Z","オンゲキ R.E.D. PLUS","オンゲキ R.E.D. PLUS"],["2021-10-20T15:00:00Z","オンゲキbright","オンゲキbright"],["2022-03-02T15:00:00Z","オンゲキbright MEMORY","オンゲキbright MEMORY"],["2025-03-26T15:00:00Z","オンゲキRe:Fresh","オンゲキRe:Fresh"],["2000-12-10T15:00:00Z","クラッキンDJ","クラッキンDJ"],["2001-05-31T15:00:00Z","クラッキンDJ Part2","クラッキンDJ Part2"],["1999-11-30T15:00:00Z","サンバDEアミーゴ","サンバDEアミーゴ"],["2000-10-31T15:00:00Z","シャカっとタンバリン!","シャカっとタンバリン!"],["2001-03-31T15:00:00Z","シャカっとタンバリン！ もっとノリノリ 新曲追加！！","シャカっとタンバリン！ もっとノリノリ 新曲追加！！"],["2001-11-20T15:00:00Z","シャカっとタンバリン! 超POWER UP チュッ!","シャカっとタンバリン! 超POWER UP チュッ!"],["1999-01-31T15:00:00Z","フラッシュビーツ","フラッシュビーツ"],["1990-12-31T15:00:00Z","モグラッパー","モグラッパー"],["2007-09-19T15:00:00Z","リズム天国（アーケード版）","リズム天国（アーケード版）"],["2010-06-22T15:00:00Z","初音ミク Project DIVA Arcade","初音ミク Project DIVA Arcade"],["2013-11-20T15:00:00Z","初音ミク Project DIVA Arcade Future Tone","初音ミク Project DIVA Arcade Future Tone"],["2014-11-04T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version A REVISION1","初音ミク Project DIVA Arcade Future Tone Version A REVISION1"],["2016-02-16T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B","初音ミク Project DIVA Arcade Future Tone Version B"],["2016-08-23T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B REVISION1","初音ミク Project DIVA Arcade Future Tone Version B REVISION1"],["2016-10-19T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B REVISION2","初音ミク Project DIVA Arcade Future Tone Version B REVISION2"],["2016-12-13T15:00:00Z","初音ミク Project DIVA Arcade Future Tone Version B REVISION3","初音ミク Project DIVA Arcade Future Tone Version B REVISION3"],["2011-01-26T15:00:00Z","初音ミク Project DIVA Arcade Version A","初音ミク Project DIVA Arcade Version A"],["2012-10-03T15:00:00Z","初音ミク Project DIVA Arcade Version B","初音ミク Project DIVA Arcade Version B"],["1998-12-31T15:00:00Z","Guitar Jam","Guitar Jam"],["1998-12-31T15:00:00Z","Quest for Fame（英語版）","Quest for Fame（英語版）"],["2000-07-31T15:00:00Z","TEKNOWERK テクノヴェルク","TEKNOWERK テクノヴェルク"],["2012-10-24T15:00:00Z","アイカツ!","アイカツ!"],["2019-10-02T15:00:00Z","アイカツオンパレード！","アイカツオンパレード！"],["2016-05-18T15:00:00Z","アイカツスターズ!","アイカツスターズ!"],["2020-12-09T15:00:00Z","アイカツプラネット","アイカツプラネット"],["2018-04-04T15:00:00Z","アイカツフレンズ！","アイカツフレンズ！"],["1999-12-14T15:00:00Z","ウンジャマ・ラミー NOW!!","ウンジャマ・ラミー NOW!!"],["2015-06-17T15:00:00Z","シンクロニカ","シンクロニカ"],["2012-12-12T15:00:00Z","たまごっちリズム TamaRiz","たまごっちリズム TamaRiz"],["2016-12-07T15:00:00Z","ディズニー マジックキャッスル キラキラシャイニー★スター","ディズニー マジックキャッスル キラキラシャイニー★スター"],["1998-10-31T15:00:00Z","パカパカパッション","パカパカパッション"],["1999-06-30T15:00:00Z","パカパカパッション2","パカパカパッション2"],["1999-11-30T15:00:00Z","パカパカパッションスペシャル","パカパカパッションスペシャル"],["1998-12-31T15:00:00Z","ミリオンヒッツ","ミリオンヒッツ"],["2001-02-20T15:00:00Z","太鼓の達人 初代","太鼓の達人 初代"],["2001-08-05T15:00:00Z","太鼓の達人2","太鼓の達人2"],["2002-03-14T15:00:00Z","太鼓の達人3","太鼓の達人3"],["2002-12-11T15:00:00Z","太鼓の達人4","太鼓の達人4"],["2003-10-05T15:00:00Z","太鼓の達人5","太鼓の達人5"],["2004-07-14T15:00:00Z","太鼓の達人6","太鼓の達人6"],["2005-07-14T15:00:00Z","太鼓の達人7","太鼓の達人7"],["2006-03-22T15:00:00Z","太鼓の達人8","太鼓の達人8"],["2006-12-19T15:00:00Z","太鼓の達人9","太鼓の達人9"],["2007-07-25T15:00:00Z","太鼓の達人10","太鼓の達人10"],["2008-03-17T15:00:00Z","太鼓の達人11","太鼓の達人11"],["2008-04-24T15:00:00Z","太鼓の達人11 亞洲版","太鼓の達人11 亞洲版"],["2008-12-10T15:00:00Z","太鼓の達人12","太鼓の達人12"],["2009-06-22T15:00:00Z","太鼓の達人12 亞洲版","太鼓の達人12 亞洲版"],["2009-07-13T15:00:00Z","太鼓の達人12 ド〜ン!と増量版","太鼓の達人12 ド〜ン!と増量版"],["2009-12-16T15:00:00Z","太鼓の達人13","太鼓の達人13"],["2010-09-07T15:00:00Z","太鼓の達人14","太鼓の達人14"],["2003-12-31T15:00:00Z","太鼓の達人RT〜日本の心〜","太鼓の達人RT〜日本の心〜"],["2011-11-15T15:00:00Z","太鼓の達人(新筐体)1期アップデート","太鼓の達人(新筐体)1期アップデート"],["2012-07-24T15:00:00Z","太鼓の達人KATSU DONVer.アップデート","太鼓の達人KATSU DONVer.アップデート"],["2013-03-12T15:00:00Z","太鼓の達人ソライロVer.アップデート","太鼓の達人ソライロVer.アップデート"],["2014-07-15T15:00:00Z","太鼓の達人キミドリVer.アップデート","太鼓の達人キミドリVer.アップデート"],["2015-03-10T15:00:00Z","太鼓の達人ムラサキVer.アップデート","太鼓の達人ムラサキVer.アップデート"],["2015-12-09T15:00:00Z","太鼓の達人ホワイトVer.アップデート","太鼓の達人ホワイトVer.アップデート"],["2016-07-13T15:00:00Z","太鼓の達人レッドVer.アップデート","太鼓の達人レッドVer.アップデート"],["2017-03-14T15:00:00Z","太鼓の達人イエローVer.アップデート","太鼓の達人イエローVer.アップデート"],["2018-03-14T15:00:00Z","太鼓の達人ブルーVer.アップデート","太鼓の達人ブルーVer.アップデート"],["2019-03-13T15:00:00Z","太鼓の達人グリーンVer.アップデート","太鼓の達人グリーンVer.アップデート"],["2020-03-23T15:00:00Z","太鼓の達人ニジイロVer.2020アップデート","太鼓の達人ニジイロVer.2020アップデート"],["2021-03-24T15:00:00Z","太鼓の達人ニジイロVer.2021アップデート","太鼓の達人ニジイロVer.2021アップデート"],["2022-03-15T15:00:00Z","太鼓の達人ニジイロVer.2022アップデート","太鼓の達人ニジイロVer.2022アップデート"],["2023-03-21T15:00:00Z","太鼓の達人ニジイロVer.2023アップデート","太鼓の達人ニジイロVer.2023アップデート"],["2024-03-12T15:00:00Z","太鼓の達人ニジイロVer.2024アップデート","太鼓の達人ニジイロVer.2024アップデート"],["--","デンダビーツ","デンダビーツ"],["2025-03-25T15:00:00Z","アイドルマスター TOURS","アイドルマスター TOURS"],["2011-09-28T15:00:00Z","AstroRanger","AstroRanger"],["2014-08-10T15:00:00Z","BEATCRAFT CYCLON","BEATCRAFT CYCLON"],["--","doogi doogi","doogi doogi"],["--","Drum Live Station","Drum Live Station"],["--","舞立方 (DANCE³)","舞立方 (DANCE³)"],["2000-04-30T15:00:00Z","3 DDX / D Tech","3 DDX / D Tech"],["2009-03-31T15:00:00Z","Guitar Hero Arcade","Guitar Hero Arcade"],["2009-07-31T15:00:00Z","Magic DJ","Magic DJ"],["2018-03-31T15:00:00Z","Rhythm Horizon beta","Rhythm Horizon beta"],["2022-07-31T15:00:00Z","舞战纪 (Dance Battle)","舞战纪 (Dance Battle)"],["1998-12-31T15:00:00Z","The Rhythm and Dance","The Rhythm and Dance"],["1999-12-31T15:00:00Z","Crazy Dancing ","Crazy Dancing "],["2007-12-31T15:00:00Z","Jungle Drummer","Jungle Drummer"],["2007-12-31T15:00:00Z","鼓王2008","鼓王2008"],["2008-12-31T15:00:00Z","Super Dance Station","Super Dance Station"],["2009-12-31T15:00:00Z","Super Dance Station 2","Super Dance Station 2"],["2010-12-31T15:00:00Z","Super Dance Station 3","Super Dance Station 3"],["2010-12-31T15:00:00Z","鼓王3：骑士与公主 (Percussion Master 3)","鼓王3：骑士与公主 (Percussion Master 3)"],["2010-12-31T15:00:00Z","动感弹珠 (REFLEC BEAT)","动感弹珠 (REFLEC BEAT)"],["2011-12-31T15:00:00Z","Dance Core","Dance Core"],["2011-12-31T15:00:00Z","Hit Music","Hit Music"],["2011-12-31T15:00:00Z","ReRave","ReRave"],["2011-12-31T15:00:00Z","Super Dance Station 4","Super Dance Station 4"],["2012-12-31T15:00:00Z","Super Dance Station 5","Super Dance Station 5"],["2013-12-31T15:00:00Z","ReRave Plus","ReRave Plus"],["2014-12-31T15:00:00Z","E5 Dance Super Station ","E5 Dance Super Station "],["2015-12-31T15:00:00Z","Dance Central 3","Dance Central 3"],["2016-12-31T15:00:00Z","舞立方2 (DANCE³ 2)","舞立方2 (DANCE³ 2)"],["2018-12-31T15:00:00Z","Beat Saber Arcade","Beat Saber Arcade"],["2020-12-31T15:00:00Z","音乐学院","音乐学院"],["2022-12-31T15:00:00Z","舞立方·秀/DANCE³·Show","舞立方·秀/DANCE³·Show"],["2023-12-31T15:00:00Z","舞立方·秀 120Hz (DANCE³ Show 120hz)","舞立方·秀 120Hz (DANCE³ Show 120hz)"],["--","舞立方・秀","舞立方・秀"],["--","舞立方2","舞立方2"],["--","2012疯狂爵士鼓","2012疯狂爵士鼓"],["--","3D旋转的风彩","3D旋转的风彩"],["--","3D乐无限","3D乐无限"],["2010-04-06T15:00:00Z","Sabin Sound Star","Sabin Sound Star"],["2012-03-07T15:00:00Z","Ez2Dj Azure ExpressioN","Ez2Dj Azure ExpressioN"],["2012-05-18T15:00:00Z","Sabin Sound Star  renascence burst ","Sabin Sound Star  renascence burst "],["2012-06-21T15:00:00Z","Ez2Dj Azure ExpressioN  INTEGRAL COMPOSITION ","Ez2Dj Azure ExpressioN  INTEGRAL COMPOSITION "],["2008-12-31T15:00:00Z","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.10","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.10"],["2009-12-31T15:00:00Z","Ez2Dj BONUS EDITION","Ez2Dj BONUS EDITION"],["2010-12-31T15:00:00Z","Ez2Dj BONUS EDITION revision A","Ez2Dj BONUS EDITION revision A"],["--","小鼓王","小鼓王"],["1999-04-19T15:00:00Z","EZ2DJ The 1st TRACKS","EZ2DJ The 1st TRACKS"],["1999-12-14T15:00:00Z","EZ2DJ The 1st TRACKS Special Edition","EZ2DJ The 1st TRACKS Special Edition"],["2000-10-31T15:00:00Z","EZ2DJ 2nd TRAX ~It rules once again~","EZ2DJ 2nd TRAX ~It rules once again~"],["2001-09-16T15:00:00Z","EZ2DJ 3rd TRAX ~Absolute Pitch~","EZ2DJ 3rd TRAX ~Absolute Pitch~"],["2002-07-27T15:00:00Z","EZ2DJ 4th TRAX ~Over Mind~","EZ2DJ 4th TRAX ~Over Mind~"],["2003-09-05T15:00:00Z","EZ2DJ Platinum","EZ2DJ Platinum"],["2004-08-16T15:00:00Z","EZ2DJ 6th TRAX ~Self Evolution~","EZ2DJ 6th TRAX ~Self Evolution~"],["2007-03-13T15:00:00Z","EZ2DJ 7th Trax: Resistance","EZ2DJ 7th Trax: Resistance"],["2007-12-22T15:00:00Z","Ez2Dj 7th TraX  Resistance  Version 1.50","Ez2Dj 7th TraX  Resistance  Version 1.50"],["2008-03-03T15:00:00Z","Ez2Dj 7th TraX  Resistance  Version 2.00","Ez2Dj 7th TraX  Resistance  Version 2.00"],["2009-03-29T15:00:00Z","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.00","Ez2Dj 7th TraX CLASS R  Codename Violet  Version 3.00"],["2010-11-08T15:00:00Z","EZ2DJ 7th TRAX BONUS EDITION","EZ2DJ 7th TRAX BONUS EDITION"],["2011-02-16T15:00:00Z","EZ2DJ 7th TRAX BONUS EDITION revision A","EZ2DJ 7th TRAX BONUS EDITION revision A"],["2000-06-30T15:00:00Z","EZ2Dancer","EZ2Dancer"],["2000-08-31T15:00:00Z","EZ2Dancer 1st Move","EZ2Dancer 1st Move"],["2003-12-31T15:00:00Z","EZ2Dancer SuperChina","EZ2Dancer SuperChina"],["2003-12-31T15:00:00Z","EZ2Dancer SuperCHINA","EZ2Dancer SuperCHINA"],["2000-12-31T15:00:00Z","EZ2Dancer The 2nd Move","EZ2Dancer The 2nd Move"],["2002-04-30T15:00:00Z","EZ2Dancer UK Move","EZ2Dancer UK Move"],["2003-03-31T15:00:00Z","EZ2Dancer UK Special Edition","EZ2Dancer UK Special Edition"],["2003-12-31T15:00:00Z","Ez2Dj 6th TraX  Self Evolution ","Ez2Dj 6th TraX  Self Evolution "],["2006-12-31T15:00:00Z","EZ2DJ 7th Trax Mini","EZ2DJ 7th Trax Mini"],["--","Ez2Dj Dance Edition Vol.1  ","Ez2Dj Dance Edition Vol.1  "],["2003-12-31T15:00:00Z","EZ2DJ Dual 3rd","EZ2DJ Dual 3rd"],["2003-12-31T15:00:00Z","EZ2DJ Dual 4th","EZ2DJ Dual 4th"],["2004-12-31T15:00:00Z","EZ2DJ Dual Platinum","EZ2DJ Dual Platinum"],["2003-06-30T15:00:00Z","EZ2DJ Mini","EZ2DJ Mini"],["2003-12-31T15:00:00Z","EZ2DJ Mini 3rd","EZ2DJ Mini 3rd"],["2002-12-31T15:00:00Z","Ez2Dj PLATINUM  Limited Edition ","Ez2Dj PLATINUM  Limited Edition "],["2004-02-29T15:00:00Z","EZ2DJ Single","EZ2DJ Single"],["2003-12-31T15:00:00Z","EZ2DJ Single 2nd","EZ2DJ Single 2nd"],["2022-06-15T15:00:00Z","NOISZ ARC⌖CODA","NOISZ ARC⌖CODA"],["1999-09-19T15:00:00Z","Pump It Up The 1st Dance Floor","Pump It Up The 1st Dance Floor"],["1999-12-26T15:00:00Z","Pump It Up 2nd Dance Floor","Pump It Up 2nd Dance Floor"],["2000-05-06T15:00:00Z","Pump It Up 3rd O.B.G.（Oldies But Goodies）  3rd Dance Floor","Pump It Up 3rd O.B.G.（Oldies But Goodies）  3rd Dance Floor"],["2000-12-06T15:00:00Z","Pump It Up Perfect Collection","Pump It Up Perfect Collection"],["2001-01-19T15:00:00Z","Pump It Up Extra","Pump It Up Extra"],["2007-12-09T15:00:00Z","Pump It Up NX2 (Next Xenesis)  International 9th Dance Floor ","Pump It Up NX2 (Next Xenesis)  International 9th Dance Floor "],["2008-11-24T15:00:00Z","Pump It Up NX Absolute  International 10th Dance Floor ","Pump It Up NX Absolute  International 10th Dance Floor "],["2013-04-10T15:00:00Z","Pump It Up Infinity","Pump It Up Infinity"],["2015-06-23T15:00:00Z","Pump It Up 2015 Prime Japanese Edition","Pump It Up 2015 Prime Japanese Edition"],["2017-01-10T15:00:00Z","Pump It Up 2017 Prime 2","Pump It Up 2017 Prime 2"],["2017-12-31T15:00:00Z","Pump It Up 2018 Prime 2","Pump It Up 2018 Prime 2"],["2019-01-06T15:00:00Z","Pump It Up XX  20th Anniversary Edition ","Pump It Up XX  20th Anniversary Edition "],["2021-12-14T15:00:00Z","CHRONO CIRCLE","CHRONO CIRCLE"],["2023-07-03T15:00:00Z","Pump It Up 2023 PHOENIX","Pump It Up 2023 PHOENIX"],["2024-05-26T15:00:00Z","Pump It Up 2024 PHOENIX","Pump It Up 2024 PHOENIX"],["2000-08-31T15:00:00Z","Pump It Up O.B.G. SE（Seasonal Evolution）","Pump It Up O.B.G. SE（Seasonal Evolution）"],["2000-10-31T15:00:00Z","Pump It Up The Collection","Pump It Up The Collection"],["2001-05-31T15:00:00Z","Pump It Up The Premiere  International Dance Floor ","Pump It Up The Premiere  International Dance Floor "],["2001-10-31T15:00:00Z","Pump It Up Feel The Beat THE PREX: The International Dance Floor","Pump It Up Feel The Beat THE PREX: The International Dance Floor"],["2001-12-31T15:00:00Z","Pump It Up The Rebirth –The 8th Dance Floor （韓国のみ）","Pump It Up The Rebirth –The 8th Dance Floor （韓国のみ）"],["2002-02-28T15:00:00Z","Pump It Up Premiere2  International 2nd Dance Floor ","Pump It Up Premiere2  International 2nd Dance Floor "],["2002-10-31T15:00:00Z","Pump It Up PREX2","Pump It Up PREX2"],["2003-04-30T15:00:00Z","Pump It Up Premiere3  International 3rd Dance Floor ","Pump It Up Premiere3  International 3rd Dance Floor "],["2003-09-30T15:00:00Z","Pump It Up PREX3  International 4th Dance Floor ","Pump It Up PREX3  International 4th Dance Floor "],["2004-03-31T15:00:00Z","Pump It Up Exceed  International 5th Dance Floor ","Pump It Up Exceed  International 5th Dance Floor "],["2004-10-31T15:00:00Z","Pump It Up Exceed2  International 6th Dance Floor ","Pump It Up Exceed2  International 6th Dance Floor "],["2005-12-31T15:00:00Z","Pump It Up Zero  International 7th Dance Floor ","Pump It Up Zero  International 7th Dance Floor "],["2006-11-30T15:00:00Z","Pump It Up NX (New Xenesis)  International 8th Dance Floor ","Pump It Up NX (New Xenesis)  International 8th Dance Floor "],["2007-05-31T15:00:00Z","Pump It Up Pro","Pump It Up Pro"],["2010-02-28T15:00:00Z","Pump It Up 2010 Fiesta","Pump It Up 2010 Fiesta"],["2010-06-30T15:00:00Z","Pump It Up Pro 2","Pump It Up Pro 2"],["2011-02-28T15:00:00Z","Pump It Up 2013 Fies EX","Pump It Up 2013 Fies EX"],["2012-10-31T15:00:00Z","Pump It Up 2013 Fiesta 2","Pump It Up 2013 Fiesta 2"],["2013-10-31T15:00:00Z","Hit The Beat DX","Hit The Beat DX"],["2014-10-31T15:00:00Z","Pump It Up 2015 Prime","Pump It Up 2015 Prime"],["2006-12-31T15:00:00Z","Drum Live Station ","Drum Live Station "],["2008-12-31T15:00:00Z","Pump Jump","Pump Jump"],["2010-04-06T15:00:00Z","Pump It Up 2010 Fiesta","Pump It Up 2010 Fiesta"],["--","歌神K Bar（粉色）","歌神K Bar（粉色）"],["--","歌神K Bar（黑色）","歌神K Bar（黑色）"],["1998-12-31T15:00:00Z","Beat Player 2000","Beat Player 2000"],["1999-12-31T15:00:00Z","Let’s Dance","Let’s Dance"],["--","DANCE CORE","DANCE CORE"],["2003-12-31T15:00:00Z","I Can Boogie","I Can Boogie"],["1999-12-31T15:00:00Z","Drumscape MTV","Drumscape MTV"],["1998-12-31T15:00:00Z","beatplayer2000","beatplayer2000"],["1999-12-31T15:00:00Z","Let’s Dance Plus","Let’s Dance Plus"],["1999-12-31T15:00:00Z","Mini Let’s Dance","Mini Let’s Dance"],["1999-12-31T15:00:00Z","Karaoke Dance Diet","Karaoke Dance Diet"],["--","DJ高手","DJ高手"],["--","DJ旋风","DJ旋风"],["--","D舞达人","D舞达人"],["2000-04-30T15:00:00Z","Wooga Wooga","Wooga Wooga"],["1999-12-31T15:00:00Z","B Boy","B Boy"],["2019-05-29T15:00:00Z","EZ2AC FINAL","EZ2AC FINAL"],["2020-08-06T15:00:00Z","EZ2AC Final EX","EZ2AC Final EX"],["2002-10-31T15:00:00Z","Mr. Jang Go","Mr. Jang Go"],["1999-12-31T15:00:00Z","TechnoMotion: The 2nd Dance Floor","TechnoMotion: The 2nd Dance Floor"],["1999-12-31T15:00:00Z","TechnoMotion","TechnoMotion"],["2012-12-31T15:00:00Z","Magic Box 3","Magic Box 3"],["1999-12-31T15:00:00Z","Break Boy","Break Boy"],["1999-12-31T15:00:00Z","Fantasy of Stepping, The","Fantasy of Stepping, The"],["1999-12-31T15:00:00Z","Live Mix","Live Mix"],["1999-12-31T15:00:00Z","Dance Dance Diet","Dance Dance Diet"],["2011-11-18T15:00:00Z","PERCUSSION MASTER 3","PERCUSSION MASTER 3"],["--","鼓王","鼓王"],["--","Danz Base SEA Edition","Danz Base SEA Edition"],["2007-02-28T15:00:00Z","唯舞独尊 We Dancing Online ","唯舞独尊 We Dancing Online "],["2010-11-30T15:00:00Z","Mozarc","Mozarc"],["1998-12-31T15:00:00Z","Rock Fever","Rock Fever"],["1999-12-31T15:00:00Z","Crazy Dancing","Crazy Dancing"],["1999-12-31T15:00:00Z","Rock Fever EX","Rock Fever EX"],["2000-12-31T15:00:00Z","Rock Fever 3","Rock Fever 3"],["2003-12-31T15:00:00Z","Percussion Master","Percussion Master"],["2004-12-31T15:00:00Z","Percussion Kids","Percussion Kids"],["2004-12-31T15:00:00Z","パーカッションマスター","パーカッションマスター"],["2007-12-31T15:00:00Z","パーカッションマスター2","パーカッションマスター2"],["2009-12-31T15:00:00Z","铁琴：第一乐章 ","铁琴：第一乐章 "],["2009-12-31T15:00:00Z","鐡琴：第一樂章 ","鐡琴：第一樂章 "],["2011-12-31T15:00:00Z","MuziBox","MuziBox"],["2011-12-31T15:00:00Z","パーカッションマスター3","パーカッションマスター3"],["2012-12-31T15:00:00Z","DANZ BASE 舞力特区","DANZ BASE 舞力特区"],["2013-12-31T15:00:00Z","Drummer Kids ","Drummer Kids "],["--","唯舞独尊2代               ","唯舞独尊2代               "],["1999-12-31T15:00:00Z","ACPercuss","ACPercuss"],["1998-12-31T15:00:00Z","Kongshiri","Kongshiri"],["2021-12-31T15:00:00Z","Synth Riders ARCADE","Synth Riders ARCADE"],["1999-12-31T15:00:00Z","Musica","Musica"],["1999-12-31T15:00:00Z","Drum Star","Drum Star"],["--","K歌王","K歌王"],["--","K歌王加强版","K歌王加强版"],["--","BeatOn","BeatOn"],["1998-12-31T15:00:00Z","Dancing Blaster","Dancing Blaster"],["1998-12-31T15:00:00Z","Zooty Drum","Zooty Drum"],["2011-10-11T15:00:00Z","DJMax Technika 3(NA)","DJMax Technika 3(NA)"],["2011-10-26T15:00:00Z","DJMax Technika 3(KR)","DJMax Technika 3(KR)"],["2011-12-17T15:00:00Z","DJMax Technika 3(PHL)","DJMax Technika 3(PHL)"],["2011-12-24T15:00:00Z","DJMax Technika 3(SGP)","DJMax Technika 3(SGP)"],["2012-01-16T15:00:00Z","DJMax Technika 3(CHN)","DJMax Technika 3(CHN)"],["2012-01-19T15:00:00Z","DJMax Technika 3(THA)","DJMax Technika 3(THA)"],["2012-01-22T15:00:00Z","DJMax Technika 3(AU)","DJMax Technika 3(AU)"],["2012-08-08T15:00:00Z","DJMax Technika 3(CHL)","DJMax Technika 3(CHL)"],["2008-10-30T15:00:00Z","DJ Max Technika","DJ Max Technika"],["1999-12-31T15:00:00Z","Rhythm and Dance Version 2nd, The","Rhythm and Dance Version 2nd, The"],["1999-12-31T15:00:00Z","Rhythm and Dance, The","Rhythm and Dance, The"],["2004-07-29T15:00:00Z","In the Groove","In the Groove"],["2005-06-17T15:00:00Z","In the Groove 2","In the Groove 2"],["2007-06-30T15:00:00Z","Pump It Up Pro","Pump It Up Pro"],["2010-06-30T15:00:00Z","Pump It Up Pro 2","Pump It Up Pro 2"],["2013-01-31T15:00:00Z","Pump It Up Infinity","Pump It Up Infinity"],["2008-12-31T15:00:00Z","Pump It Up Jump","Pump It Up Jump"],["2013-05-06T15:00:00Z","EZ2AC ENDLESS CIRCULATION","EZ2AC ENDLESS CIRCULATION"],["2014-12-25T15:00:00Z","EZ2AC EVOLVE","EZ2AC EVOLVE"],["2016-01-27T15:00:00Z","EZ2AC NIGHT TRAVELER","EZ2AC NIGHT TRAVELER"],["2017-08-15T15:00:00Z","EZ2AC TIME TRAVELER","EZ2AC TIME TRAVELER"],["2017-06-09T15:00:00Z","StepManiaX","StepManiaX"],["2000-12-31T15:00:00Z","P.P.R.","P.P.R."],["2013-12-31T15:00:00Z","Neon FM","Neon FM"],["2014-12-31T15:00:00Z","Tiny Tunes Arcade Machine","Tiny Tunes Arcade Machine"],["1905-06-21T15:00:00Z","Lullu Rarra Dance Dance","Lullu Rarra Dance Dance"],["2002-06-30T15:00:00Z","テクニクビート","テクニクビート"],["2005-08-31T15:00:00Z","タイプチューン","タイプチューン"],["2015-07-22T15:00:00Z","crossbeats REV.","crossbeats REV."],["2016-04-27T15:00:00Z","crossbeats REV. SUNRISE","crossbeats REV. SUNRISE"],["--","cytusΩ","cytusΩ"],["--","ドリームオーディション","ドリームオーディション"],["1999-02-28T15:00:00Z","Rock’n Tread ロックントレッド","Rock’n Tread ロックントレッド"],["1999-05-31T15:00:00Z","Rock’n Tread 2 ロックントレッド2","Rock’n Tread 2 ロックントレッド2"],["1999-11-30T15:00:00Z","Rock’n 3 ロックン3","Rock’n 3 ロックン3"],["1999-11-30T15:00:00Z","ロックンメガセッション","ロックンメガセッション"],["1998-12-31T15:00:00Z","VJ Visual & Music Slap","VJ Visual & Music Slap"],["1998-12-31T15:00:00Z","VJ Dash","VJ Dash"],["1998-12-31T15:00:00Z","ステッピングステージ→ステッピング","ステッピングステージ→ステッピング"],["2016-09-26T15:00:00Z","シアトリズム ファイナルファンタジー オールスターカーニバル","シアトリズム ファイナルファンタジー オールスターカーニバル"],["2016-12-05T15:00:00Z","ラブライブ! スクールアイドルフェスティバル〜after school ACTIVITY〜","ラブライブ! スクールアイドルフェスティバル〜after school ACTIVITY〜"],["2018-12-05T15:00:00Z","ラブライブ！スクールアイドルフェスティバル ～after school ACTIVITY～ Next Stage","ラブライブ！スクールアイドルフェスティバル ～after school ACTIVITY～ Next Stage"],["2009-07-16T15:00:00Z","ミュージックガンガン!","ミュージックガンガン!"],["2010-04-25T15:00:00Z","ミュージックガンガン! 曲がいっぱい☆超増加版!","ミュージックガンガン! 曲がいっぱい☆超増加版!"],["2011-01-26T15:00:00Z","ミュージックガンガン!2","ミュージックガンガン!2"],["2013-11-04T15:00:00Z","GROOVE COASTER","GROOVE COASTER"],["2014-05-25T15:00:00Z","GROOVE COASTER EX","GROOVE COASTER EX"],["2015-01-21T15:00:00Z","GROOVE COASTER 2 HEAVENLY FESTIVAL","GROOVE COASTER 2 HEAVENLY FESTIVAL"],["2016-03-09T15:00:00Z","GROOVE COASTER 3 LINK FEVER","GROOVE COASTER 3 LINK FEVER"],["2017-03-15T15:00:00Z","GROOVE COASTER 3EX DREAM PARTY","GROOVE COASTER 3EX DREAM PARTY"],["2018-03-28T15:00:00Z","GROOVE COASTER 4 STARLIGHT ROAD","GROOVE COASTER 4 STARLIGHT ROAD"],["2019-03-27T15:00:00Z","GROOVE COASTER 4EX INFINITY∞HIGHWAY","GROOVE COASTER 4EX INFINITY∞HIGHWAY"],["2020-04-08T15:00:00Z","GROOVE COASTER 4MAX DIAMOND GALAXY","GROOVE COASTER 4MAX DIAMOND GALAXY"],["2021-11-30T15:00:00Z","テトテ×コネクト","テトテ×コネクト"],["2022-11-30T15:00:00Z","MUSIC DIVER","MUSIC DIVER"],["--","RHYTHMVADERS 3: Link Fever","RHYTHMVADERS 3: Link Fever"],["--","RHYTHMVADERS 3 EX: Dream Party","RHYTHMVADERS 3 EX: Dream Party"],["--","ちょいKARA","ちょいKARA"],["--","マジカルミュージック","マジカルミュージック"],["2013-11-04T15:00:00Z","RHYTHMVADERS","RHYTHMVADERS"],["2014-05-25T15:00:00Z","RHYTHMVADERS EX","RHYTHMVADERS EX"],["2015-01-21T15:00:00Z","RHYTHMVADERS 2","RHYTHMVADERS 2"],["--","MUSICDIVER","MUSICDIVER"],["2010-07-14T15:00:00Z","プリティーリズム","プリティーリズム"],["2010-07-14T15:00:00Z","プリティーリズム・ミニスカート","プリティーリズム・ミニスカート"],["2011-04-27T15:00:00Z","プリティーリズム・オーロラドリーム","プリティーリズム・オーロラドリーム"],["2012-04-25T15:00:00Z","プリティーリズム・ディアマイフューチャー","プリティーリズム・ディアマイフューチャー"],["2013-04-17T15:00:00Z","プリティーリズム・レインボーライブ","プリティーリズム・レインボーライブ"],["2013-10-02T15:00:00Z","プリティーリズム・レインボーライブデュオ","プリティーリズム・レインボーライブデュオ"],["2014-04-16T15:00:00Z","プリティーリズム・オールスターレジェンドコーデ編","プリティーリズム・オールスターレジェンドコーデ編"],["2014-07-09T15:00:00Z","プリパラ","プリパラ"],["2017-03-31T15:00:00Z","アイドルタイムプリパラ","アイドルタイムプリパラ"],["2018-04-18T15:00:00Z","キラッとプリ☆チャン","キラッとプリ☆チャン"],["2019-10-16T15:00:00Z","プリパラ オールアイドルシリーズ","プリパラ オールアイドルシリーズ"],["2021-09-30T15:00:00Z","ワッチャプリマジ!","ワッチャプリマジ!"],["2024-04-03T15:00:00Z","ひみつのアイプリ","ひみつのアイプリ"],["2019-07-17T15:00:00Z","WACCA","WACCA"],["2020-01-22T15:00:00Z","WACCA S","WACCA S"],["2020-09-16T15:00:00Z","WACCA Lily","WACCA Lily"],["2021-03-10T15:00:00Z","WACCA Lily R","WACCA Lily R"],["2021-08-09T15:00:00Z","WACCA Reverse","WACCA Reverse"],["2018-11-24T15:00:00Z","音律炫动","音律炫动"],["2020-04-30T15:00:00Z","音律炫动5 SOUND VOLTEX ５","音律炫动5 SOUND VOLTEX ５"],["2010-12-31T15:00:00Z","E舞成名 网络版 (E5 ONLINE)","E舞成名 网络版 (E5 ONLINE)"],["2009-06-25T15:00:00Z","太鼓之达人12 亚洲版","太鼓之达人12 亚洲版"],["2011-11-20T15:00:00Z","DANZ BASE","DANZ BASE"],["2012-05-02T15:00:00Z","舞者之星","舞者之星"],["2012-05-09T15:00:00Z","星光","星光"],["2016-06-16T15:00:00Z","星光2代","星光2代"],["2019-12-04T15:00:00Z","舞萌DX","舞萌DX"],["2022-06-22T15:00:00Z","舞萌DX 2022","舞萌DX 2022"],["2022-07-07T15:00:00Z","中二节奏NEW!!","中二节奏NEW!!"],["2023-06-07T15:00:00Z","舞萌DX 2023","舞萌DX 2023"],["2023-09-20T15:00:00Z","中二节奏 2024","中二节奏 2024"],["2024-06-05T15:00:00Z","舞萌DX 2024","舞萌DX 2024"],["2024-09-24T15:00:00Z","中二节奏 2025","中二节奏 2025"],["2012-08-31T15:00:00Z","舞萌","舞萌"],["2021-04-30T15:00:00Z","舞萌DX 2021","舞萌DX 2021"],["2012-12-31T15:00:00Z","Dance Core Rhythm and Music 舞者之星","Dance Core Rhythm and Music 舞者之星"],["2018-12-31T15:00:00Z","音炫轨道","音炫轨道"],["2019-01-20T15:00:00Z","DANCERUSH STARDOM 舞律炫步","DANCERUSH STARDOM 舞律炫步"],["--","D Dance Master","D Dance Master"],["--","Quantum DANCE (Kinect Dance)","Quantum DANCE (Kinect Dance)"],["--","Small Pianist","Small Pianist"],["--","Converted Kinect Dance Cabinet","Converted Kinect Dance Cabinet"],["--","魔法 magic ","魔法 magic "],["--","天才小鼓手","天才小鼓手"],["--","海绵宝敲击鼓","海绵宝敲击鼓"],["--","太鼓达人","太鼓达人"],["--","音乐棚","音乐棚"],["--","音乐盒子","音乐盒子"],["--","音炫疯","音炫疯"],["--","音炫疯","音炫疯"],["--","音炫风","音炫风"],["--","快乐影音","快乐影音"],["--","3D欢歌乐总汇","3D欢歌乐总汇"],["--","舞立方","舞立方"],["--","欢乐唱吧","欢乐唱吧"],["--","乐动弹球","乐动弹球"],["--","音乐弹球","音乐弹球"],["--","欢唱魔盒","欢唱魔盒"],["--","炫次方2代","炫次方2代"],["--","节奏冲击","节奏冲击"],["--","DJ MAX","DJ MAX"],["--","欢乐KTV","欢乐KTV"],["--","吉他鼓手","吉他鼓手"],["--","吉他高手XG","吉他高手XG"],["--","童一首歌","童一首歌"],["--","超级劲乐园","超级劲乐园"],["--","狂热鼓手","狂热鼓手"],["--","狂热鼓手XG","狂热鼓手XG"],["--","狂热电子鼓舞台版","狂热电子鼓舞台版"],["--","音乐贝贝","音乐贝贝"],["--","弹珠GOGOGO(2)","弹珠GOGOGO(2)"],["--","钢琴块儿","钢琴块儿"],["--","鼓王3代","鼓王3代"],["--","鼓舞飞扬","鼓舞飞扬"],["--","鼓舞飞扬","鼓舞飞扬"],["--","欢乐小鼓","欢乐小鼓"],["--","终极鼓手","终极鼓手"],["--","终极鼓手超级现场版","终极鼓手超级现场版"],["--","节奏大师","节奏大师"],["--","钢琴贝贝","钢琴贝贝"],["--","拍拍学习乐(红)","拍拍学习乐(红)"],["--","拍拍学习乐(绿)","拍拍学习乐(绿)"],["--","拍拍学习乐(蓝)","拍拍学习乐(蓝)"],["--","饿唱","饿唱"],["--","莫扎特2代","莫扎特2代"],["--","豪华版终极鼓手","豪华版终极鼓手"],["--","GuitarFreaks XG 狂热鼓手","GuitarFreaks XG 狂热鼓手"],["--","爵士英雄","爵士英雄"],["--","手指音乐家","手指音乐家"],["--","小魔指","小魔指"],["--","青春鼓手","青春鼓手"],["--","滚石DJ4.5代","滚石DJ4.5代"],["--","电子爵士鼓","电子爵士鼓"],["--","鑫豪","鑫豪"],["--","音乐彩球","音乐彩球"],["--","电子鼓","电子鼓"],["--","手舞足蹈5代","手舞足蹈5代"],["--","音乐旋风","音乐旋风"],["--","鼓王3代","鼓王3代"],["--","手舞足蹈5代","手舞足蹈5代"],["--","青春豉手","青春豉手"],["--","太古达人12代","太古达人12代"],["--","超级爵士鼓2010(舞台版)","超级爵士鼓2010(舞台版)"],["--","魔方（带动感）","魔方（带动感）"],["--","魔法2代","魔法2代"],["--","梦幻DJ","梦幻DJ"],["--","吉它英雄(原装)","吉它英雄(原装)"],["--","鼓王2008(原装)","鼓王2008(原装)"],["--","鼓王加强版(原装)","鼓王加强版(原装)"],["--","爵士鼓舞台版","爵士鼓舞台版"],["--","小鼓王","小鼓王"],["--","超级爵士鼓(原装)","超级爵士鼓(原装)"],["--","魔法2代","魔法2代"],["--","魔法III代","魔法III代"],["--","滚石DJ3.5代(原装)","滚石DJ3.5代(原装)"],["--","滚石DJ5代(原装)","滚石DJ5代(原装)"],["--","动感魔方","动感魔方"],["--","滚石DJ3.5代","滚石DJ3.5代"],["--","DJMAX旋风3代","DJMAX旋风3代"],["--","超级劲舞团","超级劲舞团"],["--","点唱机","点唱机"],["--","欢歌乐总汇","欢歌乐总汇"],["--","星光","星光"],["--","鼓琴争霸","鼓琴争霸"],["--","音我成名","音我成名"],["--","童一首歌","童一首歌"],["--","青春旋律","青春旋律"],["--","挂壁式B1","挂壁式B1"],["--","挂壁式B2","挂壁式B2"],["--","歌神(mini)","歌神(mini)"],["--","歌神（mini）","歌神（mini）"],["--","嗨D","嗨D"],["--","红人荟网红直播间","红人荟网红直播间"],["--","双人豪华型魔法","双人豪华型魔法"],["--","争分夺秒","争分夺秒"],["--","打鼓英雄","打鼓英雄"],["--","打鼓英雄","打鼓英雄"],["--","DJ","DJ"],["--","麦王争霸","麦王争霸"],["--","魔法","魔法"],["--","乐动魔方","乐动魔方"],["--","好歌声盛典","好歌声盛典"],["--","好歌声盛典（触屏版）","好歌声盛典（触屏版）"],["--","好歌声盛典（非触屏版）","好歌声盛典（非触屏版）"],["--","DJ旋风","DJ旋风"],["--","终极鼓手","终极鼓手"],["--","DJ高手","DJ高手"],["--","钢琴小天使","钢琴小天使"],["--","咪咪鼓","咪咪鼓"],["--","音乐滚筒","音乐滚筒"],["--","鼓王2008","鼓王2008"],["--","太鼓达人","太鼓达人"],["--","滚石5代","滚石5代"],["--","音乐枪枪","音乐枪枪"],["--","鼓舞达人","鼓舞达人"],["--","超级爵士鼓","超级爵士鼓"],["--","超级爵士鼓舞台版二代","超级爵士鼓舞台版二代"],["--","超级电子鼓","超级电子鼓"],["--","音炫疯","音炫疯"],["--","水果钢琴","水果钢琴"],["--","狂热电子鼓","狂热电子鼓"],["--","魔法","魔法"],["--","麦王争霸","麦王争霸"],["--","麦王争霸","麦王争霸"],["--","麦王争霸","麦王争霸"],["--","2015爵士鼓普通版","2015爵士鼓普通版"],["--","2017爵士鼓普通版","2017爵士鼓普通版"],["--","神曲","神曲"],["--","超级爵士鼓X","超级爵士鼓X"],["--","莫扎特2代","莫扎特2代"],["--","超级爵士鼓舞台版","超级爵士鼓舞台版"],["--","舞王争霸一代流光幻音","舞王争霸一代流光幻音"],["--","舞台版爵士鼓","舞台版爵士鼓"],["--","舞之魂","舞之魂"],["--","舞林大会","舞林大会"],["--","舞王争霸3","舞王争霸3"],["--","DJ MAX","DJ MAX"],["--","音炫疯","音炫疯"],["--","疯狂鼓手","疯狂鼓手"],["--","超级爵士鼓2010舞台版","超级爵士鼓2010舞台版"],["--","魔幻弹珠","魔幻弹珠"],["--","魔幻节拍","魔幻节拍"],["--","魔方","魔方"],["--","魔方（带动感）","魔方（带动感）"],["--","欢乐 KTV","欢乐 KTV"],["--","我是直播歌手","我是直播歌手"],["--","欢乐K吧","欢乐K吧"],["--","烈火飚车","烈火飚车"],["--","梦幻麦霸","梦幻麦霸"],["--","梦幻麦霸普通版","梦幻麦霸普通版"],["--","音乐冲冲冲","音乐冲冲冲"],["--","音乐潮人","音乐潮人"],["--","鼓王3","鼓王3"],["--","DrumMania XG 吉他高手","DrumMania XG 吉他高手"],["--","音乐机","音乐机"],["--","手指指","手指指"],["--","手舞足蹈","手舞足蹈"],["--","手舞足蹈3.5","手舞足蹈3.5"],["--","星光灿烂","星光灿烂"],["--","中华鼓王","中华鼓王"],["--","魔法","魔法"],["--","魔法跳跳球","魔法跳跳球"],["--","魅力DJ","魅力DJ"],["--","梦幻DJ2010","梦幻DJ2010"],["--","乐动魔方","乐动魔方"],["--","咪哒 show","咪哒 show"],["--","咪哒唱吧","咪哒唱吧"],["--","滴滴K歌","滴滴K歌"],["--","迪迪K歌","迪迪K歌"],["--","咪咪鼓","咪咪鼓"],["--","DJMAX旋风Ⅱ","DJMAX旋风Ⅱ"],["--","音域对抗","音域对抗"],["--","音乐小鼓手","音乐小鼓手"],["--","动感魔方","动感魔方"],["--","动感魔方","动感魔方"],["--","动感魔方","动感魔方"],["--","动感魔方","动感魔方"],["--","动感魔方4代","动感魔方4代"],["--","动感魔方4代 双人","动感魔方4代 双人"],["--","动感节奏","动感节奏"],["--","动感节拍","动感节拍"],["--","动感节拍","动感节拍"],["--","太古三国","太古三国"],["--","秦乐疯","秦乐疯"],["--","舞立方","舞立方"],["--","明星大节奏双人","明星大节奏双人"],["--","节奏大明星单人","节奏大明星单人"],["--","旋转的风采","旋转的风采"],["--","节奏大明星","节奏大明星"],["--","节奏大明星双人版","节奏大明星双人版"],["--","乐动弹球","乐动弹球"],["--","鼓王3代","鼓王3代"],["--","点唱机","点唱机"],["--","狂热电子鼓","狂热电子鼓"],["--","迷你自助k吧","迷你自助k吧"],["--","嘟嘟music","嘟嘟music"],["--","钢琴达人","钢琴达人"],["--","动感曲棍球","动感曲棍球"],["--","钢琴块儿","钢琴块儿"],["--","滚石DJ3.5代","滚石DJ3.5代"],["--","炫舞PAPAPA","炫舞PAPAPA"],["--","炫舞机","炫舞机"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","热舞宝贝","热舞宝贝"],["--","K歌之王","K歌之王"],["--","爵士鼓2011","爵士鼓2011"],["--","魔法3代","魔法3代"],["--","电子鼓","电子鼓"],["--","终极鼓手现场版","终极鼓手现场版"],["--","终极鼓舞","终极鼓舞"],["--","音乐快手","音乐快手"],["--","音乐快手","音乐快手"],["--","梦幻钢琴（不含地台）","梦幻钢琴（不含地台）"],["--","钢琴小神童","钢琴小神童"],["--","钢琴块儿","钢琴块儿"],["--","节奏大明星","节奏大明星"],["--","赛龙舟","赛龙舟"],["--","钢琴块儿","钢琴块儿"],["--","动感魔方","动感魔方"],["--","欢乐K歌","欢乐K歌"],["--","欢乐K歌","欢乐K歌"],["--","韩国DJ 6","韩国DJ 6"],["--","滚滚乐","滚滚乐"],["--","舞立方","舞立方"],["--","欢乐小鼓","欢乐小鼓"],["--","练歌房","练歌房"],["--","歌神","歌神"],["--","自助录音棚","自助录音棚"],["--","钢琴贝贝","钢琴贝贝"],["--","DANCEBATTLE","DANCEBATTLE"],["--","DANCELIVE","DANCELIVE"],["--","DJ BEAT","DJ BEAT"],["--","音乐机","音乐机"],["--","音乐小鼓手","音乐小鼓手"],["--","楽動魔方","楽動魔方"],["--","魔乐","魔乐"],["--","爵士英雄","爵士英雄"],["--","爵士英雄2","爵士英雄2"],["--","魔法X","魔法X"],["--","迷乐世界","迷乐世界"],["--","动感魔方","动感魔方"],["--","华卡音舞2","华卡音舞2"],["--","咪哒唱吧","咪哒唱吧"],["--","哆蕾咪","哆蕾咪"],["--","钢琴小天使2","钢琴小天使2"]]}'
imassel={"cg","ml","sm","sc","ds"}
imasname={"コナミ","セガ","バンナム","他音ゲー","ALL"}


-- Function to set the time text

--http://lua-users.org/wiki/TimeZone
function get_timezone()
  local now = os.time()
  return os.difftime(now, os.time(os.date("!*t", now))) --サマーなしタイムゾーン時差情報 現在時間
end

function get_tzoffset(timezone)
  local h, m = math.modf(timezone / 3600)
  return string.format("%+.4d", 100 * h + 60 * m)
end

function get_tzoffset_sepa(timezone)
  local h, m = math.modf(timezone / 3600)
  return string.format("%+03d:%02d",  h ,math.abs(60 * m))
end

function get_timezone_offset(ts)  --サマー有りタイムゾーン時差情報 当時の時間
	local utcdate   = os.date("!*t", ts)
	local localdate = os.date("*t", ts)
	localdate.isdst = false -- this is the trick
	return os.difftime(os.time(localdate), os.time(utcdate))
end

function get_timezone_the_day()
  local hh = tonumber(string.format("%d",(tonumber(os.date("%z"))/100)))
  local mm= ((tonumber(os.date("%z"))-100*hh)/60)*3600
  local hhmm = hh*3600 +mm
  return hhmm  --サマー有りタイムゾーン時差情報 現在時間
end

function lefttime(dt) 
	local timedata= parse_json_date_utc(dt)
	if( type(timedata) == "string") then
	return dt
	end
	local t=timedata -os.time()
	return  t
end

function elasped(dt)
	local timedata= parse_json_date_utc(dt)
	if( type(timedata) == "string") then
	return dt
	end
	local t=timedata -os.time()
	return  -t
end

function DateUTC(y,M,D,h,m,s,ms)  --DATEUTCもどきMM月だけjsとおなじ-1月なので（）
local dt = string.format("%04d",tonumber(y)).."-".. string.format("%02d",tonumber(M)+1).."-".. string.format("%02d",tonumber(D))
	  dt = dt.."T".. string.format("%02d",tonumber(h))..":".. string.format("%02d",tonumber(m))
	  dt=  dt..":".. string.format("%02d",tonumber(s))..".".. string.format("%03d",tonumber(ms)).."Z"
	  
	  --debugtxt1 =dt
	  --debugtxt2 =parse_json_date_utc(dt)
	  --debugtxt3 =os.date("!%x %X %a ",parse_json_date_utc(dt))
	  
	return parse_json_date_utc(dt)
end


function JST(dt)
return os.date('!%Y/%m/%dT%X(JST)%a',parse_json_date_utc(dt)+3600*9)
end

function JSTday()
return os.date('!%d',os.time()+3600*9)
end

function ISOtoJST(dt)
return os.date('!%Y-%m-%dT%H:%M:%S+09:00',parse_json_date_utc(dt)+3600*9)
end

--custum timetable
function timezoneparse(tz)
local timezone={
{"ACDT","+1030"},
{"ACST","+0930"},
{"AEDT","+1100"},
{"AEST","+1000"},
{"AFT","+0430"},
{"AKDT","-0800"},
{"AKST","-0900"},
{"ART","-0300"},
{"AWDT","+0900"},
{"AWST","+0800"},
{"BDT","+0600"},
{"BNT","+0800"},
{"BOT","-0400"},
{"BRT","-0300"},
{"BST","+0100"},
{"BTT","+0600"},
{"CAT","+0200"},
{"CCT","+0630"},
{"cDT","-0400"},
{"CDT","-0500"},
{"CEST","+0200"},
{"CET","+0100"},
{"CLST","-0300"},
{"CLT","-0400"},
{"COT","-0500"},
{"cst","+0800"},
{"cST","-0500"},
{"CST","-0600"},
{"ChST","+1000"},
{"EAT","+0300"},
{"ECT","-0500"},
{"EDT","-0400"},
{"EEST","+0300"},
{"EET","+0200"},
{"EST","-0500"},
{"FJST","+1300"},
{"FJT","+1200"},
{"GMT","+0000"},
{"GST","+0400"},
{"HKT","+0800"},
{"HST","-1000"},
{"ICT","+0700"},
{"IDT","+0300"},
{"iST","+0200"},
{"IST","+0530"},
{"IRDT","+0430"},
{"IRST","+0330"},
{"JST","+0900"},
{"KST","+0900"},
{"MDT","-0600"},
{"MMT","+0630"},
{"MST","-0700"},
{"MYT","+0800"},
{"NPT","+0545"},
{"NZDT","+1300"},
{"NZST","+1200"},
{"PDT","-0700"},
{"PET","-0500"},
{"PHT","+0800"},
{"PKT","+0500"},
{"PST","-0800"},
{"PWT","+0900"},
{"SST","-1100"},
{"UT","+0000"},
{"UTC","+0000"},
{"UYT","-0300"},
{"WAT","+0100"},
{"WEST","+0100"},
{"WET","+0000"},
{"WIB","+0700"},
{"WIT","+0900"},
{"WITA","+0800"}}
--%a%a+$ paturn fix

if(tz=="UU")then
return get_tzoffset(utc*3600)
end

stlen=tonumber(#timezone)
for i=1,stlen do
if(tz==timezone[i][1])then
return timezone[i][2]
end
end

return nil
end


--https://claude.ai/chat/805aaf7b-938a-486f-afe0-3109f98fb181
-- RFC 2822 date parser
-- Example input: "Tue, 15 Nov 1994 08:12:31 +0200"

local months = {
    Jan = 1, Feb = 2, Mar = 3, Apr = 4, May = 5, Jun = 6,
    Jul = 7, Aug = 8, Sep = 9, Oct = 10, Nov = 11, Dec = 12
}

local weekdays = {
    Sun = 0, Mon = 1, Tue = 2, Wed = 3, Thu = 4, Fri = 5, Sat = 6
}

local function parse_timezone(tz)
    
    -- Parse numeric timezone (+0200 format)
    local sign, hour, min = tz:match("([+-])(%d%d)(%d%d)")
	if(sign)then
	else
	local tzval= timezoneparse(tz)
	if(tzval)then  sign, hour, min =  tzval:match("([+-])(%d%d)(%d%d)")  end
    end
    
    if sign and hour and min then
        local offset = tonumber(hour) * 3600 + tonumber(min) * 60
        return sign == "+" and offset or -offset
    end
    
    return nil
end

local function parse_rfc2822_date(date_string)
    -- Remove optional weekday and comma
    date_string = date_string:gsub("^%w+,%s*", "")
    
    
    local ymd = "(%d+)%s+(%a+)%s+(%d+)%s+([%a%d+-]+)"--ローカル時間MD
    local ymdh = "(%d+)%s+(%a+)%s+(%d+)%s+(%d+)%s+([%a%d+-]+)"--ローカル時間MD+h
    local ymdhm =  "(%d+)%s+(%a+)%s+(%d+)%s+(%d+):(%d+)%s+([%a%d+-]+)"--ローカル時間MD+HM
    local ymdhms = "(%d+)%s+(%a+)%s+(%d+)%s+(%d+):(%d+):(%d+)%s+([%a%d+-]+)"--ローカル時間MDhms
	
	local day, month, year, hour, min, sec, tz
	if(date_string:match(ymdhms))then
	day, month, year, hour, min, sec, tz = date_string:match(ymdhms)
	elseif(date_string:match(ymdhm))then
	day, month, year, hour, min, tz = date_string:match(ymdhm)
	 sec =0
	elseif(date_string:match(ymdh))then
	day, month, year, hour, tz = date_string:match(ymdh)
	 min, sec =0,0
	elseif(date_string:match(ymd))then
	day, month, year, tz = date_string:match(ymd)
	 hour, min, sec =0,0,0
	end
    
    if not (day and month and year and hour and min and tz) then
        return nil, "Invalid date format"
    end
    
    -- Convert components to numbers
    day = tonumber(day)
    year = tonumber(year)
    hour = tonumber(hour)
    min = tonumber(min)
    sec = tonumber(sec)
    
    -- Convert month name to number
    month = months[month]
    if not month then
        return nil, "Invalid month name"
    end
    
    -- Validate ranges
    if day < 1 or day > 31 or
       hour < 0 or hour > 23 or
       min < 0 or min > 59 or
       sec < 0 or sec > 59 then
        return nil, "Component out of range"
    end
    
    -- Handle two-digit years
    if year < 100 then
        year = year + (year >= 50 and 1900 or 2000)
    end
    
    -- Parse timezone
    local tz_offset = parse_timezone(tz)
    if not tz_offset then
        return nil, "Invalid timezone"
    end
    
    -- Return a table with parsed components
    return {
        year = year,
        month = month,
        day = day,
        hour = hour,
        min = min,
        sec = sec,
        tz_offset = tz_offset
    }
end


-- Example usage
local function test_parser()
    local test_dates = {
        --"Tue, 15 Nov 1994 08:12:31 +0200",  -- With seconds
        --"16 Nov 1994 08:12 GMT",            -- Without seconds
        --"17 Nov 94 08:12:31 EST",           -- With seconds, 2-digit year
        --"18 Nov 94 08:12 EDT",              -- Without seconds, 2-digit year
        --"19 Nov 94 08 EDT",              -- Without seconds, 2-digit year
        "11 Nov 94 EDT",              -- Without seconds, 2-digit year       
        "28 Nov 2024 22:00:00 JST",
        "28 Nov 2024 22:00 JST",
        "28 Nov 2024 22 +0900"

    }
    
    for _, date in ipairs(test_dates) do
        local result, err = parse_rfc2822_date(date)
        if result then
            print("Year:".. result.year)
            print("Month:".. result.month)
            print("Day:".. result.day)
            print("Hour:".. result.hour)
            print("Minute:".. result.min)
            print("Second:".. result.sec)
            print("Timezone offset (seconds):".. result.tz_offset)
        else
            print("Error:".. err)
        end
    end
end

function parse_json_date_utc(json_date) --ISO8601datetimeparse パーサー完成版？
    local pattern = "(%d+)%-(%d+)%-(%d+)%a(%d+)%:(%d+)%:([%d+.]+)([Z%+%-])(%d?%d?):?(%d?%d?)"

    if(json_date:match(pattern)==nil)then
     if(json_date:match("(%d+)%s+(%a+)%s+(%d+)(%s*%d*)(:?%d*)(:?%d*)%s+([%a%d+-]+)")) then --RFC2822
		local date=parse_rfc2822_date(json_date)
		if(date)then
        return preset_fairfield_dateutc(date.year,date.month,date.day) -date.tz_offset + date.hour*3600 + date.min*60 + date.sec
        else
        return "Invalid date"
        end
	 end
	 
   if(json_date:match("%s?%a%a+$")) then --try parse UTC FIX
    local normal = "(%d+)[%-%/](%d+)[%-%/](%d+) +(%d+)%:(%d+)%s?(%a%a+)$"--ローカル時間MD+HM
        if(json_date:match(normal))then
        local year, month, day, hour, min,tz = json_date:match(normal)
        local tz_offset= timezoneparse(tz)
        if(tz_offset)then
         return preset_fairfield_dateutc(year,month,day) -tz_offset + hour*3600 + min*60
        else
         return "Invalid date"
        end
        end
    end
    	 
    local unix = "^(%d+)$"
    local normalp = "(%d+)[%-%/](%d+)[%-%/](%d+)$"--ローカル時間MD
    local normalq = "(%d+)[%-%/](%d+)[%-%/](%d+) +(%d+)$"--ローカル時間MD+h
    local normal =  "(%d+)[%-%/](%d+)[%-%/](%d+) +(%d+)%:(%d+)$"--ローカル時間MD+HM
    local normalr = "(%d+)[%-%/](%d+)[%-%/](%d+) +(%d+)%:(%d+)%:([%d%.]+)"--ローカル時間MDhms

        if(json_date:match(normal))then
        local year, month, day, hour, minute,
        seconds = json_date:match(normal)
    	 return  os.time{year = year, month = month, day = day, hour =  hour, min = minute, sec = 0}
    	end
    	if(json_date:match(normalp))then
        local year, month, day, hour, minute,
        seconds = json_date:match(normalp)
    	 return  os.time{year = year, month = month, day = day, hour =  0, min =0, sec = 0}
    	end
    	 if(json_date:match(normalq))then
        local year, month, day, hour, minute,
        seconds = json_date:match(normalq)
    	 return  os.time{year = year, month = month, day = day, hour =  hour, min = 0, sec = 0}
    	end
    	if(json_date:match(normalr))then
        local year, month, day, hour, minute,
        seconds = json_date:match(normalr)
    	 return  os.time{year = year, month = month, day = day, hour =  hour, min = minute, sec = seconds}
    	end
    	if(json_date:match(unix)) then
	     return json_date
    	end
    
     return "Invalid date"
    end
    
    
    local year, month, day, hour, minute, seconds, offsetsign, offsethour, offsetmin =json_date:match(pattern)
    local offset = 0
    if offsetsign ~= 'Z' then
      offset = tonumber(offsethour) * 3600 + tonumber(offsetmin)*60
      if offsetsign == "-" then offset = offset * -1 end
    end
    
    --ymd 1-12月のみパーす
	if (tonumber(year) and tonumber(month) and tonumber(day)) then
	 if(tonumber(month) >0 and tonumber(month) <=12)then
	     return preset_fairfield_dateutc(year,month,day) -offset + hour*3600 + minute*60 + seconds
	end
	end
	
    return "Invalid date"
    
    --local temp = os.date("*t",timestamp)
    --if(temp.isdst) then  --パースした時刻がサマーがしらべる
    --offset = offset -3600  --0.5サマータイムもあるので（）、オーストラリアだと使えないかも
    --end
    --return timestamp + get_timezone() -offset
    
    --return timestamp + get_timezone_the_day() -offset
    
    --old method ,avoid crrupt dateme in DST timezone, simply time slide method use OSTIME
    --hourはサマータイム越境時タイムマシンが発生するので最後に足す、幻の2時(2020-03-08T02:00:00) -05:00
    --https://ja.wikipedia.org/wiki/%E5%A4%8F%E6%99%82%E9%96%93　ブラジルが0時豪州3時なので4時までずらす
    --local timestamp = os.time{year = year, month = month, day = day, hour = 4, min = minute, sec = seconds}
    --return timestamp + get_timezone_offset(timestamp) -offset  + (hour-4)*3600
end

--https://claude.ai/chat/80c64364-c40a-400f-be84-3cb3b6382235
--DateUTC by luascript no consider timezone after1970,simple method
function simple_dateutc(year, month, day, hour, min, sec)
    local total_days = 0
    
    for y = 1970, year - 1 do
        local is_leap = (y % 4 == 0 and y % 100 ~= 0) or (y % 400 == 0)
        total_days = total_days + (is_leap and 366 or 365)
    end
    
    local days_in_month = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
    
    if isLeapYear(year) then
        days_in_month[2] = 29
    end
    
    for m = 1, month - 1 do
        total_days = total_days + days_in_month[m]
    end
    
    total_days = total_days + day -1 
    
    local timestamp= total_days * 86400
    
    return timestamp
end

--https://claude.ai/chat/c387c45b-b61c-4b06-8f21-3d74472aa11a
-- フリーゲルの公式
function friegel_days(y, m, d)
    if m < 3 then
        y = y - 1
        m = m + 12
    end
    
    return math.floor(365.25 * y)  -- 年からの日数
        + math.floor(y / 400)      -- 400年ごとのうるう年補正
        - math.floor(y / 100)      -- 100年ごとのうるう年補正
        + math.floor(30.6001 * (m + 1))  -- 月からの日数
        + d - 1
end

-- フェアフィールドの公式
function fairfield_days(y, m, d)
    if m < 3 then
        y = y - 1
        m = m + 12
    end
    
    return math.floor(365.25 * y) 
        + math.floor(y / 400) 
        - math.floor(y / 100)
        + math.floor((153 * m - 457) / 5)  -- 月の計算が異なる
        + d - 1
end

-- ツェラーの公式（曜日計算用だが日数計算にも応用可能）
function zeller_days(y, m, d)
    if m < 3 then
        y = y - 1
        m = m + 12
    end
    
    local c = math.floor(y / 100)
    local k = y % 100
    
    -- 曜日を求める公式（0=土曜日, 1=日曜日, ..., 6=金曜日）
    local w = (d + math.floor((13 * (m + 1)) / 5) + k + math.floor(k / 4) + math.floor(c / 4) - 2 * c) % 7
    
    -- 1970年1月1日からの経過日数に変換する場合は別途計算が必要
    return w  -- これは曜日の値
end

-- 1970年1月1日からの経過日数を計算する関数（フリーゲルの公式使用）
function days_since_epoch(y, m, d)
    return friegel_days(y, m, d) -friegel_days(1970, 1, 1)
end

-- UTCタイムスタンプを取得（秒単位）
function friegel_dateutc(y, m, d)
    return days_since_epoch(y, m, d) * 86400
end

--https://teratail.com/questions/292340でみつけたアルゴの移植 fairfieldのプリセットでの計算
--https://ja.wikipedia.org/wiki/%E3%83%84%E3%82%A7%E3%83%A9%E3%83%BC%E3%81%AE%E5%85%AC%E5%BC%8F
function days(y, m, d)
    -- 月ごとの累積日数テーブル
    local t = { 306, 337, 0, 31, 61, 92, 122, 153, 184, 214, 245, 275 }
    
    m= tonumber(m)
    -- 1,2月の場合は前年として計算
    if(m < 3)then
    y = y - 1
    end
    
    local tm=365*y + math.floor(y/4) - math.floor(y/100) + math.floor(y/400) + t[m] + d
    --debugtxt3= tm .." "..y..m..d
    
    return tm
end

function preset_fairfield_dateutc(y, m, d)
    return (days(y, m, d) - days(1970, 1, 1)) * 86400
end


--https://claude.ai/chat/c387c45b-b61c-4b06-8f21-3d74472aa11a
-- うるう年判定の関数
function isLeapYear(year)
    return year % 4 == 0 and (year % 100 ~= 0 or year % 400 == 0)
end

-- 各月の日数を返す関数
function getDaysInMonth(month, year)
    local days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
    if month == 2 and isLeapYear(year) then
        return 29
    end
    return days[month]
end


-- 指定された日付がうるう日（2月29日）より後かどうかを判定
function isAfterLeapDay(year, month, day)
    if month > 2 then
        return true
    elseif month== 2 and day >= 29 then
        return true
    end
    return false
end

-- うるう日の通過回数を計算（全期間）
function countLeapDays(year1, month1, day1, year2, month2, day2,after_aniv)
    local count = 0
    
    -- 開始年のうるう日をカウント 開始日以降
    if isLeapYear(year1) and (isAfterLeapDay(year1, month1, day1) == false) then
        count = count + 1
    end
    
    -- 間の年のうるう日をカウント
    for year = year1 + 1, year2 - 1 do
        if isLeapYear(year) then
            count = count + 1
        end
    end
    
    -- 終了年のうるう日をカウント
    if isLeapYear(year2) and isAfterLeapDay(year2, month2, day2) and (after_aniv>=0) then
        count = count + 1
    end
    
    return count
end

-- 年初からの経過日数を計算
function getDaysFromYearStart(year, month, day)
    local days = 0
    for i = 1, month - 1 do
        days = days + getDaysInMonth(i, year)
    end
    return days + day
end

function simple_totaldays(year1, month1, day1,year2, month2, day2)
    local totalDays = 0
    -- 完全な年のうるう年を計算
    for year = year1, year2 - 1 do
        if isLeapYear(year) then
            totalDays = totalDays + 366
        else
            totalDays = totalDays + 365
        end
    end

    -- 最初の年の残りの日数を引く
    totalDays = totalDays - getDaysFromYearStart(year1, month1, day1)

    -- 最後の年の日数を加える
    totalDays = totalDays + getDaysFromYearStart(year2, month2, day2)
    
    return totalDays
end

-- メイン計算処理
function calculateDateDifference(date1, date2)
    -- 日付文字列を年月日に分解
    local year1, month1, day1 = date1:match("(%d+)%-(%d+)%-(%d+)")
    local year2, month2, day2 = date2:match("(%d+)%-(%d+)%-(%d+)")
    
    -- 数値に変換
    year1, month1, day1 = tonumber(year1), tonumber(month1), tonumber(day1)
    year2, month2, day2 = tonumber(year2), tonumber(month2), tonumber(day2)
    
        
    -- 総日数を計算
    --local totalDays = math.floor(elasped(date1)/86400)
    --local totalDays = simple_totaldays(year1, month1, day1,year2, month2, day2)
    local totalDays = -((days(year1, month1, day1) - days(year2, month2, day2)))
    
    
    --今年の周年より早いか遅いか
    local after_aniv = elasped(debugtxt3);
    local monthadjust=0
    if(after_aniv >=0) then
    monthadjust= 0
    elseif(month1 == month2) then
    monthadjust= -1
    end
    local leapDays=countLeapDays(year1, month1, day1, year2, month2, day2,after_aniv)
    
    --simple_dateutc(2024,11,22,0,0,0)
    
    -- 年数を計算
    local monthdiff= (year2-year1)*12 + month2-month1  + monthadjust
    local completeYears =  math.floor(monthdiff/12)  --math.floor((totalDays-leapDays) / 12)
    -- 残りの日数を計算
    local remainingDays = totalDays - (completeYears * 365) -leapDays
    
    
    return totalDays.."日".."("..completeYears.."年閏"..leapDays.."日,"..remainingDays.."日)"
end

function get_anniversary_day(tt)
  local theyear=string.format("%04d",tonumber(os.date("!%Y",os.time()+9*3600)))
  local mmdd = string.format("%02d",tonumber(os.date('!%m',tt))).."-"..string.format("%02d",tonumber(os.date('!%d',tt)))
  if(mmdd =="02-29")then
  if(isLeapYear(theyear)==false)then
     mmdd="02-28"
  end 
  end 
  
  return theyear .. "-".. mmdd .."T"..string.format("%02d",tonumber(os.date('!%H',tt))) ..":00:00+09:00"
end

function isDST(J)
	local localdate = os.date("*t")
	local st=""
	if(localdate.isdst) then
		st="DST"
		if(J=="J")then
		st="夏時間"
		end
	end
	return st
end

function isempty(s)
  return s == nil or s == '' or  s == '--'
end

function JPday(date,t)
  
  local dt = os.date("*t",t)
  if (get_timezone_the_day() == 9*3600) then --動作は日本時間のときだけ
  	date= string.gsub(date, "%%Vr",(dt.year-2018))  --R%Vr/%Y/%m/%d(%Vw)%X
  	date= string.gsub(date, "%%Vh",(dt.year-1988))  --H%Vr/%Y/%m/%d(%Vw)%X
  	date= string.gsub(date, "%%Vs",(dt.year-1925))  --S%Vr/%Y/%m/%d(%Vw)%X
  	date= string.gsub(date, "%%Vt",(dt.year-1911))  --T%Vr/%Y/%m/%d(%Vw)%X
  end
  
  --DateUTC(2020,2,31,20,48,0,0)
  local jp_day={"日","月","火","水","木","金","土"} --%w用
  date= string.gsub(date, "%%EM",daystring)  ----フリーズ文字代替
  date= string.gsub(date, "%%E",debugtxt1)  ----フリーズ文字代替
  date= string.gsub(date, "%%J",debugtxt2)  ----フリーズ文字代替
  date= string.gsub(date, "%%K",debugtxt3)  ----フリーズ文字代替
  date= string.gsub(date, "%%s",os.time())  ----フリーズ文字代替
  date= string.gsub(date, "%%DST",isDST("J"))
  date= string.gsub(date, "%%Vw",jp_day[tonumber(os.date("%w",t))+1])
  date= string.gsub(date, "%%ZZ", get_tzoffset_sepa(get_timezone())) --timezone タイムゾーン時差情報標準時、サマータイムなし 
  date= string.gsub(date, "%%Z",  get_tzoffset(get_timezone())) --timezone タイムゾーン時差情報標準時、サマータイムなし 
  date= string.gsub(date, "%%zz", get_tzoffset_sepa(get_timezone_the_day())) --timezone タイムゾーン時差情報夏時間こみ

  date= string.gsub(date, "%%V%w","")  ----令和しょりなし
  
 return date
end

function get_ep(tu)	
	
	if(tu<0)then
	tu=-tu
	end
	
   local total = tu*10

	--local tenths   = math.floor(total % 10)
	local seconds  = math.floor((total / 10) % 60)
	local minutes  = math.floor((total / 600) % 60)
	local hours    = math.floor((total / 36000) % 24)
	local idays     = math.floor(total / 864000)
	local days     = math.floor(idays%365)
	local years    = math.floor(total/(864000*365))

	--local hours_infinite  = math.floor(total / 36000)
	--local seconds_infinite  = math.floor(total / 10)
	--local minutes_infinite  = math.floor(total / 600)
	local yearst    = years.."年"
	if(years==0)then
	yearst =""
	end
	
	
	
   local ep = yearst..days.."日".. hours.."時".. minutes.."分"..seconds .."秒"
   
   return ep
end




function parse_jp_era(date)
  local datestring=""
  
  date= string.gsub(date, "%%[LNOPQfkloqv]","")	--フリーズ文字 %%[EJKLNOPQfikloqsv]
  
  local t = os.time()
  
   --if(os.date("!%H%M",t)=="1500")then --0時のとき切り替え
  if(daychange ~= JSTday())then
  findday()
  end
  
  --test_parser()
  
  if (string.find(date,"%%i")) then
  
  
   local inum = (ima)%(#imas+1)    --imas[1] AC,dre 18 ,miri 22
   if(inum==0)then
   inum =1
   end
   local tu = elasped(imas[inum][2])
   local imasname =imas[inum][1]
   
  	if(isempty(imm)==false) then
  	imasname =imasnaem .."("..imas[inum][3]..")"
  	end
   local gm = "開始から"  
    if(tu<0) then
    gm="開始まで" 
	end
  
	local dateu='!%m%d'       --(%a)%X(UTC+09:00)'
	local nst =os.date(dateu,os.time()+9*3600)
	local tt = parse_json_date_utc(imas[inum][2])+9*3600
	local ist =os.date(dateu,tt)
	local nenme =""
	if(nst==ist)then
	local years = math.floor(tu*10/(864000*365))
	nenme = ","..years.."周年"
	end
	local ep=get_ep(tu)
    local date1=ISOtoJST(imas[inum][2])
    local date2=os.date("!%Y-%m-%dT%H:%M:%S+09:00",os.time()+9*3600)
  	
  	
	local dt = get_anniversary_day(tt)
	debugtxt3=dt
  
  
    local eps = calculateDateDifference(date1,date2)
  	date =string.gsub(date, "%%is",gm..eps..nenme)
    
  local gm = "周年" 
  local aniv=lefttime(dt)
  if(aniv<0) then
  aniv =-aniv
  gm = gm.."から"
  else
  gm = gm.."まで"
  end
  local ep= string.gsub(get_ep(aniv),"0年","")
  	date =string.gsub(date, "%%it",gm..ep)
  	
  local idn=imasb[imassel[imass]][useidol][2]
  local dt=imasb[imassel[imass]][useidol][1]
  if(dt=="" or dt == nil or dt =="--")then
  	date =string.gsub(date, "%%in",idn)
  	date =string.gsub(date, "%%ib","稼働日は不明です")
  	date =string.gsub(date, "%%ic","")
  	date =string.gsub(date, "%%ia","")
  	date =string.gsub(date, "%%il","")
  else
  tt = parse_json_date_utc(dt)+9*3600
  local aniv=lefttime(dt)
  local bs = get_anniversary_day(tt)
  local gm = "稼働日" 
  if(aniv<0) then
  aniv =-aniv
  gm = gm.."から"
  else
  gm = gm.."まで"
  end
  
  local anivb=lefttime(bs)
  local gmm = "周年" 
  if(anivb<0) then
  anivb =-anivb
  gmm = gmm.."から"
  else
  gmm = gmm.."まで"
  end
  local date1=ISOtoJST(imasb[imassel[imass]][useidol][1])
  local date2=os.date("!%Y-%m-%dT%H:%M:%S+09:00",os.time()+9*3600)
  local eps=calculateDateDifference(date1,date2)
  local ep= string.gsub(get_ep(anivb),"0年","")
  	date =string.gsub(date, "%%in",idn)
  	date =string.gsub(date, "%%ib",JST(dt))
  	date =string.gsub(date, "%%ic",gm..eps)
  	date =string.gsub(date, "%%ia",JST(bs))
  	date =string.gsub(date, "%%il",gmm..ep)
  end
  	
  	local imm=imas[inum][4]
  	debugtxt2=JST(imas[inum][2])  --開始日
  	debugtxt1= "" --os.date("!%Y-%m-%dT%H:%M:%S+00:00", parse_json_date_utc("24 Nov 2024 22:54 UT"))
  	--test_parser()
  	
  	
  	if(isempty(imm)==false) then
  	debugtxt1= JST(imm) --差終わり日
    tu= elasped(imas[inum][4])
  	
   local ep=get_ep(tu)
    local date1=imas[inum][4]
    local date2=os.date("!%Y-%m-%dT%H:%M:%S+09:00",os.time()+9*3600)
    local eps = calculateDateDifference(date1,date2)
  	date =string.gsub(date, "%%ie","サ終から"..eps)
  	--date =string.gsub(date, "%%ie","サ終から"..ep )
  	end
  	
  	date =string.gsub(date, "%%ie","")
  	date =string.gsub(date, "%%i",imasname)
  end
  
  
  if (string.find(date,"%%UTC")) then
  local tu = os.time()  + (tonumber(utc)*3600)
  
  local u= get_tzoffset_sepa(utc*3600)
    local dateu='!%Y/%m/%d(%a)%X(UTC'..u..')' --%z系はOS依存のため使用不可
   
    --local jp_day={"日","月","火","水","木","金","土",} --dt.wday用
    --local dt = os.date("!*t",tu) --%Vwを使いたいとき utcの時間で曜日を取得する必要がある
	--dateu= string.gsub(dateu, "%%Vw",jp_day[dt.wday])
	
	--%w用
    --local getd = os.date("!%w",tu) --%Vwを使いたいとき utcの時間で曜日を取得する必要がある
	--dateu= string.gsub(dateu, "%%Vw",jp_day[tonumber(getd)+1])
	
  	dateu=JPday(dateu,tu)
  	datestring = os.date(dateu,tu)
  	date =string.gsub(date, "%%UTC",datestring)
  end
  if (string.find(date,"%%JST")) then
  local dateu='!%Y/%m/%dT%X(GMT+9:00,JST,日本時間) %a' --%z系はOS依存のため使用不可
  
  	datestring = os.date(dateu, t+9*3600)
  	date =string.gsub(date, "%%JST",datestring)
  end
  if (string.find(date,"%%ISOZ")) then
  local dateu='!%Y/%m/%dT%XZ %a'    --%z系はOS依存のため使用不可
  

  	datestring = os.date(dateu, t)
  	date =string.gsub(date, "%%ISO%w",datestring)
  end
  if (string.find(date,"%%ISO")) then
    local dateu='%Y/%m/%dT%X%zz %a' 
    
  	--dateu=JPday(dateu,t)
  	
  	datestring = os.date(dateu, t)
  	date =string.gsub(date, "%%ISO",datestring)
  end
  
  date=JPday(date,t)

  return os.date(date)
end

function set_time_text()
	local text = parse_jp_era(format_string)  --os.date(format_string)
		  --text = tostring(get_timezone()/3600) 
		  --text = tostring(get_timezone()%60)
		  --text = os.time()  					--2020-02-18 21:27:05 utc0  ostime+13,off+9でJST
		  --text = os.time()+ get_timezone()  	--2020-02-19 10:48:47 utc0
		  --text = os.time(os.date("!*t", now)) --2020-02-18 08:27:59 utc0 
		  --text = os.time{year = 2020, month = 2, day = 25, hour = 21}        --2020-02-25 08:00:00 utc0
		  --text = os.time{year = 2020, month = 2, day = 25, hour = 21} -3600*9  --2020-02-24 22:00:00 utc0
		  --text = os.time{year = 2020, month = 2, day = 25, hour = 21}+ get_timezone() --2020-02-25 21:00:00 utc0
		  --text = os.time{year = 2020, month = 2, day = 25, hour = 21}+ get_timezone()-3600*9  --2020-02-25 12:00:00 utc0
		 
		
	if text ~= last_text then
		local source = obs.obs_get_source_by_name(source_name)
		if source ~= nil then
			local settings = obs.obs_data_create()
			obs.obs_data_set_string(settings, "text", text)
			obs.obs_source_update(source, settings)
			obs.obs_data_release(settings)
			obs.obs_source_release(source)
		end
	end
	
	last_text = text
end

function timer_callback()
	set_time_text()
end

function activate(activating)
	if activated == activating then
		return
	end

	activated = activating

	if activating then
		set_time_text()
		obs.timer_add(timer_callback, 1000)
	else
		obs.timer_remove(timer_callback)
	end
end

-- Called when a source is activated/deactivated
function activate_signal(cd, activating)
	local source = obs.calldata_source(cd, "source")
	if source ~= nil then
		local name = obs.obs_source_get_name(source)
		if (name == source_name) then
			activate(activating)
		end
	end
end

function source_activated(cd)
	activate_signal(cd, true)
end

function source_deactivated(cd)
	activate_signal(cd, false)
end

function reset(pressed)
	if not pressed then
		return
	end

	activate(false)
	local source = obs.obs_get_source_by_name(source_name)
	if source ~= nil then
		local active = obs.obs_source_active(source)
		obs.obs_source_release(source)
		activate(active)
	end
end

----------------------------------------------------------

-- A function named script_properties defines the properties that the user
-- can change for the entire script module itself
function script_properties()
	local props = obs.obs_properties_create()

	local p = obs.obs_properties_add_list(props, "source", "Text Source", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local sources = obs.obs_enum_sources()
	if sources ~= nil then
		for _, source in ipairs(sources) do
			source_id = obs.obs_source_get_unversioned_id(source)
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name(source)
				obs.obs_property_list_add_string(p, name, name)
			end
		end
	end
	obs.source_list_release(sources)

	obs.obs_properties_add_text(props, "format_string", "Format String", obs.OBS_TEXT_MULTILINE)
	obs.obs_properties_add_float(props, "UTC", "WorldTime UTC-14～+14(%UTC)", -14, 14, 1)
	local ac = obs.obs_properties_add_list(props, "im", "AC音ゲー稼働日検索", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
		for _, img in ipairs(imas) do		 
  	    if(isempty(img[2])==false) then
		obs.obs_property_list_add_string(ac, img[1],  img[1])
		end
		end
	obs.obs_properties_add_int(props, "IMSERIES", "AC音ゲー個別検索", 1, 5, 1)
	for i=1,#imassel do
	local dre = obs.obs_properties_add_list(props,  imassel[i], i.."."..imasname[i], obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
		for _, img in ipairs(imasb[imassel[i]]) do
		obs.obs_property_list_add_string(dre, img[2],  img[2])
		end
	end
	obs.obs_properties_add_int(props, "DAYLIM", "稼働日何日以内 %EM", 0, 30, 1)
	return props
end

-- A function named script_description returns the description shown to
-- the user
function script_description()
	return "Sets a text source to act as a date/time text when the source is active.\n\nMade by Ragowit"
end

function findidol(sel,s)


if(sel=="AC")then
local st=imas
local stlen=tonumber(#st)
for i=1,stlen do
if(imas[i][1] == s)then
return i
end
if(string.find(imas[i][1],s) ~= nil)then
return i
end
end
return 1
end

local st=imasb[sel]
local stlen=tonumber(#st)
for _, img in ipairs(imassel) do
if(sel==img)then
	for i=1,stlen do
		if((imasb[img][i][2]..imasb[img][i][3]):match(s))then
		return i
		end
	end
end
end
	return 1
end

function MMDD(dt)
return os.date("!%m/%d",parse_json_date_utc(dt)+9*3600)
end

function YYYY(dt)
return os.date("!%Y",parse_json_date_utc(dt)+9*3600)
end

function findday()
daystring =""
local birthst={}
local daycalc=tonumber(daylim)
local stlen=tonumber(#imas)
local theyear=os.date("!%Y",os.time()+9*3600)
local theyearn=theyear*1+1

--debugtxt1=string.gsub(imas[15][2], "^(%d+)",theyear)

for i=1,stlen do
local birth=imas[i][2]
if(birth:match("([Z%+])(%d?%d?):?(%d?%d?)$")) then
local tmp=string.gsub(imas[i][2], "^(%d+)",theyear)
local tmp2=string.gsub(imas[i][2], "^(%d+)",theyearn)
local t=lefttime(tmp)
local tt=lefttime(tmp2)
local name=imas[i][1] .."("..imas[i][3]..")"

name = name:gsub("%(%)", "")
local namen=imas[i][1] ..imas[i][2]
t=math.ceil(t/3600/24);
tt=math.ceil(tt/3600/24);
if((t>=0 and t<=daycalc) or (tt>=0 and tt<=daycalc))then
tmp =MMDD(birth).." あと".. math.abs(t).."日"
if(t<0)then
tmp =MMDD(birth).." あと".. math.abs(tt).."日"
end
tmp = tmp .. name.." -"..YYYY(birth).."\r\n"
birthst[namen]=tmp
end
end
end


local tkeys = {}
-- populate the table that holds the keys
for k in pairs(birthst) do
tmp =string.match( birthst[k], "あと%d+")
tmp = string.gsub(tmp, "あと","")
table.insert(tkeys, { birthst[k],tonumber(tmp)})

end
-- sort the keys
--table.sort(tkeys)
table.sort(tkeys,
	function(a,b)
		return (a[2] < b[2])
	end)

for i=1,#tkeys do
   daystring=daystring .. tkeys[i][1]
end

daychange =  JSTday()
	return 1
end

function table.to_qs(arg)
	local qs = {}
	for key, value in pairs(arg) do
		table.insert(qs, key .. "=" .. tostring(value):urlencode())
	end
	return "?" .. table.concat(qs, "&")
end

function trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

function cut_string(s,max)
if(#s>=max)then
s = s:sub(1,max)
end

return trim(s)
end

-- A function named script_update will be called when settings are changed
function script_update(settings)
	activate(false)

	source_name = obs.obs_data_get_string(settings, "source")
	format_string = cut_string(obs.obs_data_get_string(settings, "format_string"),100)
	utc           = obs.obs_data_get_double(settings, "UTC")
	ima           =   findidol("AC",obs.obs_data_get_string(settings, "im"))
	imass           = obs.obs_data_get_int(settings, "IMSERIES")
	daylim           = obs.obs_data_get_int(settings, "DAYLIM")
	cgn =findidol("cg",cut_string(obs.obs_data_get_string(settings, "cg"),20))
	mln =findidol("ml",cut_string(obs.obs_data_get_string(settings, "ml"),20))
	smn =findidol("sm",cut_string(obs.obs_data_get_string(settings, "sm"),20))
	scn =findidol("sc",cut_string(obs.obs_data_get_string(settings, "sc"),20))
	dsn =findidol("ds",cut_string(obs.obs_data_get_string(settings, "ds"),20))
	local inum={cgn,mln,smn,scn,dsn}
	useidol=inum[imass]
	findday()
	
	reset(true)
end

-- A function named script_defaults will be called to set the default settings
function script_defaults(settings)
	obs.obs_data_set_default_string(settings, "format_string", "%Y/%m/%d(%Jw)%X(UTC%z)") --"%Y-%m-%d %X")
	obs.obs_data_set_default_double(settings, "UTC", 9)
	obs.obs_data_set_default_string(settings, "im","beatmania")
	obs.obs_data_set_default_int(settings, "IMSERIES", 1)
	obs.obs_data_set_default_string(settings, "cg","SOUND VOLTEX")
	obs.obs_data_set_default_string(settings, "ml","CHUNITHM")
	obs.obs_data_set_default_string(settings, "sm","太鼓の達人")
	obs.obs_data_set_default_string(settings, "sc","GROOVE COASTER")
	obs.obs_data_set_default_string(settings, "ds","beatmania")
	obs.obs_data_set_default_int(settings, "DAYLIM", 2)
end

-- a function named script_load will be called on startup
function script_load(settings)
	-- Connect activation/deactivation signal callbacks
	--
	-- NOTE: These particular script callbacks do not necessarily have to
	-- be disconnected, as callbacks will automatically destroy themselves
	-- if the script is unloaded.  So there's no real need to manually
	-- disconnect callbacks that are intended to last until the script is
	-- unloaded.
	local sh = obs.obs_get_signal_handler()
	obs.signal_handler_connect(sh, "source_activate", source_activated)
	obs.signal_handler_connect(sh, "source_deactivate", source_deactivated)
end



--JSONparser


local json = { _version = "0.1.2" }

-------------------------------------------------------------------------------
-- Encode
-------------------------------------------------------------------------------

local encode

local escape_char_map = {
  [ "\\" ] = "\\",
  [ "\"" ] = "\"",
  [ "\b" ] = "b",
  [ "\f" ] = "f",
  [ "\n" ] = "n",
  [ "\r" ] = "r",
  [ "\t" ] = "t",
}

local escape_char_map_inv = { [ "/" ] = "/" }
for k, v in pairs(escape_char_map) do
  escape_char_map_inv[v] = k
end


local function escape_char(c)
  return "\\" .. (escape_char_map[c] or string.format("u%04x", c:byte()))
end


local function encode_nil(val)
  return "null"
end


local function encode_table(val, stack)
  local res = {}
  stack = stack or {}

  -- Circular reference?
  if stack[val] then error("circular reference") end

  stack[val] = true

  if rawget(val, 1) ~= nil or next(val) == nil then
    -- Treat as array -- check keys are valid and it is not sparse
    local n = 0
    for k in pairs(val) do
      if type(k) ~= "number" then
        error("invalid table: mixed or invalid key types")
      end
      n = n + 1
    end
    if n ~= #val then
      error("invalid table: sparse array")
    end
    -- Encode
    for i, v in ipairs(val) do
      table.insert(res, encode(v, stack))
    end
    stack[val] = nil
    return "[" .. table.concat(res, ",") .. "]"

  else
    -- Treat as an object
    for k, v in pairs(val) do
      if type(k) ~= "string" then
        error("invalid table: mixed or invalid key types")
      end
      table.insert(res, encode(k, stack) .. ":" .. encode(v, stack))
    end
    stack[val] = nil
    return "{" .. table.concat(res, ",") .. "}"
  end
end


local function encode_string(val)
  return '"' .. val:gsub('[%z\1-\31\\"]', escape_char) .. '"'
end


local function encode_number(val)
  -- Check for NaN, -inf and inf
  if val ~= val or val <= -math.huge or val >= math.huge then
    error("unexpected number value '" .. tostring(val) .. "'")
  end
  return string.format("%.14g", val)
end


local type_func_map = {
  [ "nil"     ] = encode_nil,
  [ "table"   ] = encode_table,
  [ "string"  ] = encode_string,
  [ "number"  ] = encode_number,
  [ "boolean" ] = tostring,
}


encode = function(val, stack)
  local t = type(val)
  local f = type_func_map[t]
  if f then
    return f(val, stack)
  end
  error("unexpected type '" .. t .. "'")
end


function json.encode(val)
  return ( encode(val) )
end


-------------------------------------------------------------------------------
-- Decode
-------------------------------------------------------------------------------

local parse

local function create_set(...)
  local res = {}
  for i = 1, select("#", ...) do
    res[ select(i, ...) ] = true
  end
  return res
end

local space_chars   = create_set(" ", "\t", "\r", "\n")
local delim_chars   = create_set(" ", "\t", "\r", "\n", "]", "}", ",")
local escape_chars  = create_set("\\", "/", '"', "b", "f", "n", "r", "t", "u")
local literals      = create_set("true", "false", "null")

local literal_map = {
  [ "true"  ] = true,
  [ "false" ] = false,
  [ "null"  ] = nil,
}


local function next_char(str, idx, set, negate)
  for i = idx, #str do
    if set[str:sub(i, i)] ~= negate then
      return i
    end
  end
  return #str + 1
end


local function decode_error(str, idx, msg)
  local line_count = 1
  local col_count = 1
  for i = 1, idx - 1 do
    col_count = col_count + 1
    if str:sub(i, i) == "\n" then
      line_count = line_count + 1
      col_count = 1
    end
  end
  error( string.format("%s at line %d col %d", msg, line_count, col_count) )
end


local function codepoint_to_utf8(n)
  -- http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=iws-appendixa
  local f = math.floor
  if n <= 0x7f then
    return string.char(n)
  elseif n <= 0x7ff then
    return string.char(f(n / 64) + 192, n % 64 + 128)
  elseif n <= 0xffff then
    return string.char(f(n / 4096) + 224, f(n % 4096 / 64) + 128, n % 64 + 128)
  elseif n <= 0x10ffff then
    return string.char(f(n / 262144) + 240, f(n % 262144 / 4096) + 128,
                       f(n % 4096 / 64) + 128, n % 64 + 128)
  end
  error( string.format("invalid unicode codepoint '%x'", n) )
end


local function parse_unicode_escape(s)
  local n1 = tonumber( s:sub(1, 4),  16 )
  local n2 = tonumber( s:sub(7, 10), 16 )
   -- Surrogate pair?
  if n2 then
    return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000)
  else
    return codepoint_to_utf8(n1)
  end
end


local function parse_string(str, i)
  local res = ""
  local j = i + 1
  local k = j

  while j <= #str do
    local x = str:byte(j)

    if x < 32 then
      decode_error(str, j, "control character in string")

    elseif x == 92 then -- `\`: Escape
      res = res .. str:sub(k, j - 1)
      j = j + 1
      local c = str:sub(j, j)
      if c == "u" then
        local hex = str:match("^[dD][89aAbB]%x%x\\u%x%x%x%x", j + 1)
                 or str:match("^%x%x%x%x", j + 1)
                 or decode_error(str, j - 1, "invalid unicode escape in string")
        res = res .. parse_unicode_escape(hex)
        j = j + #hex
      else
        if not escape_chars[c] then
          decode_error(str, j - 1, "invalid escape char '" .. c .. "' in string")
        end
        res = res .. escape_char_map_inv[c]
      end
      k = j + 1

    elseif x == 34 then -- `"`: End of string
      res = res .. str:sub(k, j - 1)
      return res, j + 1
    end

    j = j + 1
  end

  decode_error(str, i, "expected closing quote for string")
end


local function parse_number(str, i)
  local x = next_char(str, i, delim_chars)
  local s = str:sub(i, x - 1)
  local n = tonumber(s)
  if not n then
    decode_error(str, i, "invalid number '" .. s .. "'")
  end
  return n, x
end


local function parse_literal(str, i)
  local x = next_char(str, i, delim_chars)
  local word = str:sub(i, x - 1)
  if not literals[word] then
    decode_error(str, i, "invalid literal '" .. word .. "'")
  end
  return literal_map[word], x
end


local function parse_array(str, i)
  local res = {}
  local n = 1
  i = i + 1
  while 1 do
    local x
    i = next_char(str, i, space_chars, true)
    -- Empty / end of array?
    if str:sub(i, i) == "]" then
      i = i + 1
      break
    end
    -- Read token
    x, i = parse(str, i)
    res[n] = x
    n = n + 1
    -- Next token
    i = next_char(str, i, space_chars, true)
    local chr = str:sub(i, i)
    i = i + 1
    if chr == "]" then break end
    if chr ~= "," then decode_error(str, i, "expected ']' or ','") end
  end
  return res, i
end


local function parse_object(str, i)
  local res = {}
  i = i + 1
  while 1 do
    local key, val
    i = next_char(str, i, space_chars, true)
    -- Empty / end of object?
    if str:sub(i, i) == "}" then
      i = i + 1
      break
    end
    -- Read key
    if str:sub(i, i) ~= '"' then
      decode_error(str, i, "expected string for key")
    end
    key, i = parse(str, i)
    -- Read ':' delimiter
    i = next_char(str, i, space_chars, true)
    if str:sub(i, i) ~= ":" then
      decode_error(str, i, "expected ':' after key")
    end
    i = next_char(str, i + 1, space_chars, true)
    -- Read value
    val, i = parse(str, i)
    -- Set
    res[key] = val
    -- Next token
    i = next_char(str, i, space_chars, true)
    local chr = str:sub(i, i)
    i = i + 1
    if chr == "}" then break end
    if chr ~= "," then decode_error(str, i, "expected '}' or ','") end
  end
  return res, i
end


local char_func_map = {
  [ '"' ] = parse_string,
  [ "0" ] = parse_number,
  [ "1" ] = parse_number,
  [ "2" ] = parse_number,
  [ "3" ] = parse_number,
  [ "4" ] = parse_number,
  [ "5" ] = parse_number,
  [ "6" ] = parse_number,
  [ "7" ] = parse_number,
  [ "8" ] = parse_number,
  [ "9" ] = parse_number,
  [ "-" ] = parse_number,
  [ "t" ] = parse_literal,
  [ "f" ] = parse_literal,
  [ "n" ] = parse_literal,
  [ "[" ] = parse_array,
  [ "{" ] = parse_object,
}


parse = function(str, idx)
  local chr = str:sub(idx, idx)
  local f = char_func_map[chr]
  if f then
    return f(str, idx)
  end
  decode_error(str, idx, "unexpected character '" .. chr .. "'")
end


function json.decode(str)
  if type(str) ~= "string" then
    error("expected argument of type string, got " .. type(str))
  end
  local res, idx = parse(str, next_char(str, 1, space_chars, true))
  idx = next_char(str, idx, space_chars, true)
  if idx <= #str then
    decode_error(str, idx, "trailing garbage")
  end
  return res
end


--return json
imasb=json.decode(imasb)