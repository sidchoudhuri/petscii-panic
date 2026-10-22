10 rem petscii panic! v05 loader - https://m0nde.itch.io
20 poke53280,0:poke53281,0:poke53269,0
30 ifpeek(40709)=82thenpoke40709,0:poke45,peek(174):poke46,peek(175)
40 poke55,0:poke56,144:clr:dv=peek(186):ifdv<8thendv=8
50 ifpeek(36864)=76then80
60 printchr$(147)chr$(5)"loading petscii panic! ..."
70 load"panicmusic",dv,1
80 rem ** most used variables first **
90 i=0:j=0:x=0:b=0:e=0:m=0:qx=0:pa=0:pf=0:zn=0:sp=40:wh=30:wr=0:k$="":tz=0
100 v1=54272:v2=54279:v3=54286
110 dimzx(2),za(2),zh(2),zy(2),zc(2),fa(2),fb(2),fc(2),hp(2),zl(2),bt(2),px(3)
120 w$=chr$(5):l$=chr$(153):g$=chr$(30)
130 fori=0to2:readfa(i),fb(i),fc(i),hp(i),zl(i),bt(i):next
140 data 9,10,11,4,1,16,12,13,14,7,1,32,15,56,57,11,3,64
150 fori=0to3:readpx(i):next:data 24,64,108,174
160 rem ** sid: use the saved setting, or detect a 2nd sid at $d420 **
170 ifpeek(40704)=80thens2=peek(40705):goto190
180 gosub1490
190 mv=peek(40706)-1:ev=peek(40707)-1:ifmv<0ormv>15thenmv=9
200 ifev<0orev>15thenev=15
210 gosub760
220 rem ** charset at $c800 (font copy trick by eyvind ebsen), then sprites **
230 c=peek(52223)<>77:ifc=0andpeek(52863)=78then330
240 ifc=0then280
250 poke56334,peek(56334)and254:poke1,peek(1)and251
260 poke88,0:poke89,208:poke90,0:poke91,216:poke781,9:poke782,0:sys41964
270 poke1,peek(1)or4:poke56334,peek(56334)or1
280 readn:fori=1ton:readb:a=49152+64*b:forj=0to20:x=0:y=0:ifj<16thenreadx,y
290 pokea+3*j,x:pokea+3*j+1,y:pokea+3*j+2,0:nextj,i:poke52863,78
300 ifc=0then330
310 readn:fori=1ton:readb:a=51200+8*b:forj=0to7:readx:pokea+j,x:nextj,i
320 poke52223,77
330 rem ** white mower handle: hires chars 240-243 behind the mower sprite **
340 fori=0to7:v=peek(52160+i):x=-240*((vand192)>0)-15*((vand48)>0)
350 y=-240*((vand12)>0)-15*((vand3)>0):a=53120-16*(i>3)+2*(iand3)
360 pokea,x:pokea+1,x:pokea+8,y:pokea+9,y:next
370 x=rnd(-(ti*(peek(53266)+ti)))
380 poke56578,peek(56578)or3:poke56576,peek(56576)and252
390 poke53272,18:poke648,196:poke53270,200:printchr$(8);
400 poke53285,13:poke53286,8:poke53276,255:poke53277,255:poke53271,255
410 fori=0to7:poke53249+2*i,58:next:poke53264,0
420 poke51192,7:poke51193,3:poke51194,1:poke51195,4
430 poke53287,2:poke53288,7:poke53289,5:poke53290,1:poke53294,5
440 fori=0to3:poke53248+2*i,px(i):next
450 rem ** music starts only now, after all the loading and setup **
460 ifpeek(789)<>144thenpoke36879,mv:poke36870,s2:sys36864
470 gosub1300:e=15-8*(wh<1)+16*za(0)+32*za(1)+64*za(2)+128*pa:poke53269,e
480 sp=sp-1:ifsp<1thengosub930
490 tz=-1:mx=999:fori=0to2:ifza(i)thengosub810
500 ifza(i)thenifzx(i)<mxthenmx=zx(i):tz=i
510 next
520 ifpa=0thenifzn>0thenifpf<-20then980
530 ifpathen1000
540 pf=pf-1:ifpf=0thenpoke51194,1
550 m=-16*(zx(0)>255)-32*(zx(1)>255)-64*(zx(2)>255)-128*(qx>255):poke53264,m
560 ifwh<1thenwr=wr-1:ifwr=0thenwh=30:poke51195,4:e=eor8:poke53269,e:gosub750
570 getk$:ifk$=""then480
580 f$="":ifk$="m"thenf$="panicmc":n$="multicolor graphics"
590 ifk$="o"thenf$="panicpetscii":n$="original petscii version"
600 ifk$="g"thenf$="panicglyphs":n$="glyph showcase"
610 ifk$="d"then1100
620 ifk$="t"then1180
630 iff$<>""then1060
640 ifk$="i"thenpoke53269,0:gosub1530:goto470
650 ifk$="c"thenpoke53269,0:gosub1710:goto470
660 ifk$="s"thenpoke53269,0:gosub1780:goto470
670 ifk$="q"then1250
680 goto480
690 pokev1+1,40:pokev1+5,7:pokev1+4,128:pokev1+4,129
700 pokev1+1,12:pokev1+4,17:return
710 pokev1+1,20:pokev1+5,7:pokev1+4,128:pokev1+4,129
720 pokev1+1,6:pokev1+4,65:return
730 pokev3+5,5:pokev3+1,70:pokev3+4,128:pokev3+4,129:pokev3+1,30
740 pokev3+1,60:pokev3+1,24:pokev3+1,45:return
750 pokev2+1,200:pokev2+5,115:pokev2+4,128:pokev2+4,129:return
760 fori=54272to54295:pokei,0:next:poke54294,100:poke54295,241
770 poke54275,8:poke54277,7:poke54280,20:poke54284,9:poke54287,12:poke54291,9
780 v2=54279:v3=54286:ifs2=0thenv2=v1:v3=v1
790 poke54296,16+ev:ifs2thenpoke54328,mv
800 return
810 b=0:x=zx(i):ifx<=200+66*(wh<1)thenb=1
820 forj=0to2:ifj<>ithenifza(j)thenifzx(j)<xthenifx-zx(j)<20thenb=2
830 next:ifbthen870
840 x=x-1:zx(i)=x:poke53256+2*i,xand255:j=fa(zy(i))
850 if(xand4)thenj=fb(zy(i))
860 poke51196+i,j:return
870 ifb=2thenpoke51196+i,fa(zy(i)):return
880 zc(i)=zc(i)+1:ifzc(i)<4thenreturn
890 zc(i)=0:j=peek(51196+i):ifj=fc(zy(i))thenpoke51196+i,fa(zy(i)):return
900 poke51196+i,fc(zy(i)):gosub730:ifwh<1thenreturn
910 wh=wh-1:poke51195,4-(wh<21)-(wh<11):ifwh>0thenreturn
920 e=eand247:poke53269,e:wr=150:return
930 sp=60+int(rnd(1)*140):forj=0to2:ifza(j)=0then950
940 next:return
950 x=rnd(1)*10:k=-(x>=5)-(x>=8):zy(j)=k:zh(j)=hp(k):zx(j)=344:za(j)=1
960 zn=zn+1:poke53287+4+j,zl(k):poke51196+j,fa(k):poke53256+2*j,88
970 e=eorbt(j):poke53264,peek(53264)orbt(j):poke53269,e:j=2:next:return
980 pa=1:qx=136:poke53262,qx:poke51199,8:poke51194,2:pf=4:e=eor128
990 poke53269,e:gosub690:goto540
1000 qx=qx+6:ifqx>340then1050
1010 iftz>=0thenifqx+10>=zx(tz)then1030
1020 poke53262,qxand255:goto540
1030 gosub710:zh(tz)=zh(tz)-1:ifzh(tz)>0then1050
1040 za(tz)=0:zn=zn-1:e=eand(255-bt(tz)):zx(tz)=0
1050 pa=0:qx=0:e=eand127:poke53269,e:goto540
1060 poke53269,0:sys36867:poke53277,0:poke53271,0:poke53276,0
1070 poke56576,peek(56576)or3:poke53272,21:poke648,4
1080 poke53270,200:printchr$(147)w$"loading "n$" ..."
1090 poke40709,82:loadf$,dv
1100 r=21:c=0:gosub1290:printchr$(32)spc(38):r=22:gosub1290:printspc(38)
1110 r=21:c=9:gosub1290:printl$"m "g$"- "w$"multicolor graphics"
1120 r=22:c=9:gosub1290:printl$"o "g$"- "w$"original petscii version";
1130 getk$:ifk$=""then1130
1140 f$="":ifk$="m"thenf$="panicdemo":n$="multicolor demo"
1150 ifk$="o"thenf$="panicdemopetscii":n$="original petscii demo"
1160 iff$<>""then1060
1170 gosub1300:goto480
1180 r=21:c=3:gosub1290:printl$"f "g$"- "w$"full trailer  ";
1190 printl$"b "g$"- "w$"basic trailer";
1200 getk$:ifk$=""then1200
1210 f$="":ifk$="f"thenf$="panictrailer":n$="full trailer"
1220 ifk$="b"thenf$="panictrailerb":n$="basic trailer"
1230 iff$<>""then1060
1240 gosub1300:goto480
1250 r=21:c=9:gosub1290:printw$"quit petscii panic!? y/n";
1260 getk$:ifk$=""then1260
1270 ifk$<>"y"thengosub1300:goto480
1280 sys36867:poke53269,0:sys64738
1290 poke214,r:poke211,c:sys58732:return
1300 printchr$(147);:fori=0to39:poke50176+i,64:poke55296+i,5:poke50376+i,64
1310 poke55496+i,5:next
1320 poke50216,240:poke50217,241:poke50256,242:poke50257,243
1330 poke55336,1:poke55337,1:poke55376,1:poke55377,1
1340 r=8:c=11:gosub1290:printw$"petscii panic! v05"
1350 r=9:c=16:gosub1290:printl$"by m0nde"
1360 r=11:c=9:gosub1290:printl$"m "g$"- "w$"multicolor graphics"
1370 r=12:c=9:gosub1290:printl$"o "g$"- "w$"original petscii version"
1380 r=13:c=9:gosub1290:printl$"g "g$"- "w$"glyph showcase"
1390 r=14:c=9:gosub1290:printl$"d "g$"- "w$"self-playing demo"
1400 r=15:c=9:gosub1290:printl$"t "g$"- "w$"trailer"
1410 r=16:c=9:gosub1290:printl$"i "g$"- "w$"instructions"
1420 r=17:c=9:gosub1290:printl$"c "g$"- "w$"credits"
1430 r=18:c=9:gosub1290:printl$"s "g$"- "w$"sid setup (";
1440 printmid$(str$(peek(40710)),2);
1450 printleft$(" sids",4-(peek(40710)>1))" found)"
1460 r=19:c=9:gosub1290:printl$"q "g$"- "w$"quit"
1470 r=21:c=18:gosub1290:printg$mid$("ntsc pal",1+5*peek(678),4)
1480 r=22:c=9:gosub1290:printg$"https://m0nde.itch.io";:return
1490 sys36867:poke54290,8:poke54318,0:poke54319,1:poke54322,33:u=peek(54331)
1500 t=0:fori=1to20:t=t+peek(54299):next:s2=-(t=0andpeek(54331)<>u)
1510 poke54322,0:poke54290,0:poke40705,s2:poke40710,s2+1:poke40704,80
1520 poke40708,0:return
1530 printchr$(147)w$"petscii panic! v05 - how to play":print
1540 printl$"hold the lawn against 6 zombie waves":print
1550 printw$"joystick (port 2)   keyboard"
1560 printl$"stick "g$"... "w$"move      "l$"w a s d "g$". "w$"move"
1570 printl$"fire  "g$"... "w$"plant     "l$"space   "g$". "w$"plant"
1580 printl$"keys 1-4 "w$"choose seed":print
1590 printw$"1 peashooter  "l$"100  "g$"shoots its lane"
1600 printw$"2 sunflower    "l$"50  "g$"makes more sun"
1610 printw$"3 wall-nut     "l$"50  "g$"blocks zombies"
1620 printw$"4 cherry bomb "l$"150+ "g$"clears a 3x3 area":print
1630 printl$"each lane has one lawnmower. if a zombie"
1640 printl$"gets past it again, "w$"game over!":print
1650 ifs2thenprintl$"m "g$"- "w$"music  "l$"e "g$"- "w$"sound effects volume"
1660 ifs2=0thenprintl$"v "g$"- "w$"volume"
1670 printl$"q "g$"- "w$"quit to the menu (asks to confirm)":print
1680 printw$"press any key";
1690 getk$:ifk$=""then1690
1700 return
1710 printchr$(147)w$"petscii panic! v05":print
1720 printw$"design, code and graphics by m0nde":print
1730 printl$"music: "w$"backyard panic by m0nde":print
1740 printl$"thanks to "w$"eyvind ebsen (font copy)":print
1750 printg$"https://m0nde.itch.io":print
1760 printg$"(c)2026 m0nde - cc by-nc-sa 4.0":print:print
1770 printw$"press any key";:goto1690
1780 printchr$(147)w$"sid configuration":print
1790 n=peek(40710):printl$"found: "w$mid$(str$(n),2)left$(" sids",4-(n>1))
1800 printg$"  $d400"left$("  $d420",-7*(n=2)):print
1810 o=peek(40708):fori=0to2:printg$mid$(" >",1-(i=o),1)l$mid$(str$(i+1),2)" ";
1820 x$="auto detect     one sid         two sids, music on $d420"
1830 printw$mid$(x$,i*16+1,24)
1840 next:print
1850 ifs2thenprintl$"m "g$"- "w$"music volume  "l$"e "g$"- "w$"sound fx volume"
1860 ifs2=0thenprintl$"v "g$"- "w$"volume"
1870 printl$"return "g$"- "w$"back"
1880 getk$:ifk$=""then1880
1890 ifk$=chr$(13)thenreturn
1900 ifk$>="1"andk$<="3"then1930
1910 ifk$="m"ork$="e"ork$="v"thengosub1980
1920 goto1880
1930 o=val(k$)-1:poke40708,o:ifo=0thengosub1490:poke40708,0
1940 ifo=1thens2=0
1950 ifo=2thens2=1
1960 sys36867:poke40705,s2:gosub760
1970 poke36879,mv:poke36870,s2:sys36864:goto1780
1980 ifs2=0andk$<>"v"thenreturn
1990 ifs2andk$="v"thenreturn
2000 ifk$="m"thenmv=(mv+3)*-(mv<15):poke54328,mv:poke36879,mv:poke40706,mv+1
2010 ifk$<>"m"thenev=(ev+3)*-(ev<15):poke54296,16+ev:poke40707,ev+1
2020 r=20:c=0:gosub1290:x=mv:ifk$<>"m"thenx=ev
2030 x=int(x/3+.5):printw$mid$("music   sound fx",1-8*(k$<>"m"),8)" ";
2040 printchr$(18)left$("     ",x)chr$(146)left$(".....",5-x)" ";:return
2050 rem ** sprites: count, then block + 16 rows of 2 bytes **
2060 data 17,1,5,64,21,80,81,82,85,90,85,84,85,86,21,80,5,64,2,0,2,0,82,0,22
2070 data 20,2,80,2,0,2,0,0,0,2,5,64,21,82,81,90,85,80,85,80,85,90,21,82,5,64
2080 data 2,0,2,0,82,0,22,20,2,80,2,0,2,0,0,0,3,34,136,170,170,175,250,179,206
2090 data 191,254,188,62,175,250,42,168,33,72,1,64,81,69,21,84,1,64,1,64,1,64
2100 data 0,0,4,15,240,63,252,255,255,250,40,248,227,255,255,255,255,255,255
2110 data 255,255,252,63,255,255,255,243,63,252,63,252,15,240,0,0,5,15,240,63
2120 data 60,255,63,250,40,248,227,255,207,255,243,255,255,255,255,252,63,255
2130 data 255,255,243,63,252,63,252,15,240,0,0,6,15,192,60,192,255,60,250,40
2140 data 248,227,255,63,252,255,255,15,255,243,240,15,252,255,243,243,60,252
2150 data 63,204,15,240,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,170,42,170,170
2160 data 170,170,170,190,190,60,60,0,0,0,0,8,0,0,0,0,20,0,86,0,90,0,40,0,0,0
2170 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,20,0,85,0,133,0,85,0,21,0
2180 data 17,0,60,0,95,0,63,0,95,0,63,0,60,0,51,0,51,0,81,0,10,0,0,20,0,85,0
2190 data 133,0,85,0,21,0,17,0,60,0,63,0,95,0,63,0,95,0,60,0,195,0,195,0,65,0
2200 data 11,0,0,20,0,85,0,133,0,5,0,1,0,81,0,60,0,95,0,63,0,95,0,63,0,60,0,51
2210 data 0,51,0,81,0,12,12,0,60,0,63,0,255,0,133,0,85,0,17,0,60,0,95,0,63,0
2220 data 95,0,63,0,60,0,51,0,51,0,81,0,13,12,0,60,0,63,0,255,0,133,0,85,0,17
2230 data 0,60,0,63,0,95,0,63,0,95,0,60,0,195,0,195,0,65,0,14,12,0,60,0,63,0
2240 data 255,0,5,0,1,0,81,0,60,0,95,0,63,0,95,0,63,0,60,0,51,0,51,0,81,0,15
2250 data 40,0,170,0,170,0,170,0,69,0,85,0,17,0,60,0,95,0,63,0,95,0,63,0,60,0
2260 data 51,0,51,0,81,0,56,40,0,170,0,170,0,170,0,69,0,85,0,17,0,60,0,63,0,95
2270 data 0,63,0,95,0,60,0,195,0,195,0,65,0,57,40,0,170,0,170,0,170,0,5,0,1,0
2280 data 81,0,60,0,95,0,63,0,95,0,63,0,60,0,51,0,51,0,81,0
2290 rem ** custom chars: count, then code + 8 bytes **
2300 data 52,65,5,21,81,85,85,85,21,5,66,64,80,83,95,84,87,80,64,67,3,3,83,23
2310 data 3,3,3,0,68,0,0,0,20,80,0,0,0,69,64,83,95,80,80,95,83,64,70,51,255
2320 data 250,226,234,232,250,63,71,204,255,175,139,171,43,175,252,72,49,1,81
2330 data 21,1,1,1,0,73,76,64,69,84,64,64,64,0,74,0,20,84,196,84,20,0,0,75,32
2340 data 32,168,196,84,20,0,0,76,252,252,252,68,84,20,0,0,77,0,60,252,204,252
2350 data 60,0,0,78,48,48,252,204,252,60,0,0,79,252,252,252,204,252,60,0,0,81
2360 data 0,0,20,87,95,60,0,0,87,0,20,85,197,85,21,17,40,88,8,40,42,170,197,85
2370 data 17,40,89,60,255,255,255,69,85,17,40,90,0,20,85,197,5,1,81,40,91,8,40
2380 data 42,170,5,1,81,40,92,60,255,255,255,5,1,81,40,94,90,42,90,42,40,34,34
2390 data 81,95,42,90,42,90,40,130,130,65,96,10,42,170,175,172,170,170,170,97
2400 data 160,168,170,60,178,170,170,170,98,170,168,170,170,42,42,10,0,99,170
2410 data 42,170,162,168,168,160,0,100,10,42,170,175,172,170,170,170,101,160
2420 data 40,42,60,178,138,162,170,102,170,168,170,170,42,42,10,0,103,170,42
2430 data 170,162,168,168,160,0,104,10,40,170,175,172,170,168,170,105,128,128
2440 data 40,60,178,42,170,10,106,170,160,168,162,40,42,10,0,107,162,10,170
2450 data 162,168,136,160,0,108,0,1,4,16,16,16,255,255,109,84,64,16,4,4,1,4,63
2460 data 110,204,255,255,60,0,0,0,0,111,255,51,255,255,255,60,0,0,112,0,1,4
2470 data 60,255,195,255,243,113,84,16,4,60,255,195,255,207,114,255,255,63,15
2480 data 0,0,0,0,115,255,255,252,240,0,0,0,0,116,195,51,14,250,58,235,43,235
2490 data 117,3,12,188,172,171,235,232,235,118,58,250,58,51,195,3,0,0,119,172
2500 data 175,172,204,12,3,0,0,120,192,48,48,12,12,3,3,3,121,0,0,0,0,0,0,0,0
2510 data 122,0,63,255,255,235,40,0,0,123,255,255,255,255,235,40,0,0
