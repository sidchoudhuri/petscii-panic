10 goto1360:rem petscii panic v05 - https://m0nde.itch.io
20 a=r0(l)+x:pokea-1,87:pokea+39,94:pokea,32:pokea+40,32:kc=zk(zt(l,i))
30 pokea-1+co,kc:pokea+39+co,kc:zx(l,i)=x-1:return
40 l=l+1:ifl>4thenl=0:gosub240
50 ifkm=0thenjs=31-(peek(56320)and31):ifjs<>jothengosub390
60 getk$:ifk$<>""thengosub470
70 ifzn(l)=0then160
80 zc(l)=zc(l)+1:ifzc(l)<kthen160
90 zc(l)=0:i=0:x=zx(l,0):ifx<3thengosub1070:goto160
100 gosub140
110 ifzn(l)<2then160
120 fori=1tozn(l)-1:x=zx(l,i):ifx>zx(l,i-1)+1thengosub140
130 next:goto160
140 p=peek(r0(l)+x-1):ifp=32orp=81then20
150 goto970
160 ifpx(l)=0then220
170 a=r0(l)+px(l):ifpd(l)thenifpeek(a)=81thenpokea,32
180 px(l)=px(l)+2:pd(l)=0:ifzn(l)=0then200
190 ifpx(l)>=zx(l,0)thengosub930:goto220
200 ifpx(l)>37thenpx(l)=0:goto220
210 ifpeek(a+2)=32thenpokea+2,81:pokea+2+co,13:pd(l)=1
220 ifpx(l)=0thenifzn(l)thenifrs(l)>=0thengosub890
230 goto40
240 sc=sc+1:ifsc>=sithensc=0:su=su+25+25*sf:gosub640:gosub2250
250 ifsc>=nbthenifbk<8thenpoke55305+bk,7:bk=bk+1:nb=nb+si/9
260 ifwn>0thenwt=wt+1:ifwt>=wi(w)thengosub290
270 ifwn=0theniftz=0thenwp=wp+1:ifwp>=wdthenwp=0:gosub350
280 goto720
290 r=int(rnd(1)*5):n=zn(r):ifn>3thenreturn
300 ifnthenifzx(r,n-1)>36thenreturn
310 wt=0:wn=wn-1:tz=tz+1:zn(r)=n+1:zx(r,n)=38:zy=qt(qi):zs(r,n)=qi
320 poke56256+qi,zk(zy):qi=qi+1
330 zt(r,n)=zy:zh(r,n)=zp(zy):a=r0(r)+38:kc=zk(zy):pokea,87:pokea+40,94
340 pokea+co,kc:pokea+40+co,kc:return
350 ifw=6then1270
360 w=w+1:wn=wc(w):wt=0:m$="wave"+str$(w)+"        ":gosub2290
370 ifw=6thenm$="huge wave!    "
380 printchr$(19)spc(32)"wave"str$(w)"/6";:printchr$(19)d$m$;:return
390 q=jsandnotjo:jo=js:ifq=0thenreturn
400 ifqand1thenifcy>0thency=cy-1
410 ifqand2thenifcy<4thency=cy+1
420 ifqand4thenifcx>0thencx=cx-1
430 ifqand8thenifcx<8thencx=cx+1
440 poke53248,xl(cx):poke53264,xh(cx):poke53249,ys(cy):gosub690
450 ifqand16then520
460 return
470 ifkmthenq=-(k$="w")-2*(k$="s")-4*(k$="a")-8*(k$="d")-16*(k$=" ")
480 ifkmthenifqthen400
490 ifk$="m"ork$="e"ork$="v"ork$="q"then2520
500 q=asc(k$)-48:ifq<1orq>4thenreturn
510 se=q:goto660
520 ifsu<cs(se)orti<cd(se)then630
530 ifg%(cy,cx)then630
540 ifse=4then830
550 a=r0(cy)+3+4*cx:ifpeek(a)<>32orpeek(a+1)<>32then630
560 g%(cy,cx)=se:p%(cy,cx)=ph(se):su=su-cs(se):cd(se)=ti+cl(se):kc=pk(se)
570 pokea,pt(se,0):pokea+1,pt(se,1):pokea+40,pt(se,2):pokea+41,pt(se,3)
580 pokea+co,kc:pokea+1+co,kc:pokea+40+co,kc:pokea+41+co,kc
590 pokev2+1,200:pokev2+5,115:pokev2+4,128:pokev2+4,129
600 ifse=1thenpc(cy)=pc(cy)+1:ifcx>rs(cy)thenrs(cy)=cx
610 ifse=2thensf=sf+1:gosub2260
620 gosub690:goto640
630 pokev2+1,3:pokev2+5,9:pokev2+4,32:pokev2+4,33:return
640 ifsu>9990thensu=9990
650 printchr$(19)"sun"right$("    "+str$(su),5);:goto720
660 printchr$(19)chr$(17)chr$(17);:forq=1to4:ifq=sethenprintchr$(18);
670 printsn$(q);chr$(146);" ";:ry(q)=9:next:gosub680:goto720
680 printchr$(19)d$spc(14)left$(" "+pn$(se)+"             ",13);:return
690 o=g%(cy,cx):h$="":ifo=0then710
700 h$=pn$(o)+str$(p%(cy,cx))+"/"+mid$(str$(ph(o)),2)+" hp"
710 printchr$(19)d$chr$(17)left$(h$+"                      ",22);:return
720 forv=1to4:e=-2*(su<cs(v))-(ti<cd(v)):ife<>ry(v)thenry(v)=e:gosub790
730 next:e=ry(se):g=0:ife=1theng=-1
740 ife>1theng=cs(se)-su
750 ifg=lmthenreturn
760 lm=g:n$="":ifg<0thenn$="recharging"
770 ifg>0thenn$="need"+str$(g)+" more"
780 n$=right$("             "+n$,13):printchr$(19)d$spc(27)n$;:return
790 a=55367+9*v:kc=1:ife=1thenkc=11
800 ife>1thenkc=2
810 pokea,kc:pokea+1,kc:pokea+2,kc:pokea+3,kc:pokea+4,kc:pokea+5,kc:pokea+6,kc
820 pokea+7,kc:return
830 su=su-cs(4):cd(4)=ti+cl(4):b=r0(cy)+3+4*cx:pokeb,78:pokeb+1,77
840 pokeb+40,81:pokeb+41,81:pokeb+co,2:pokeb+1+co,2:pokeb+40+co,2:pokeb+41+co,2
850 poke53280,2:gosub2500:xa=4*cx-2:xb=4*cx+9
860 forv=cy-1tocy+1:ifv>=0andv<=4thenll=v:gosub1200
870 next:forv=1to150:next:poke53280,5
880 pokeb,32:pokeb+1,32:pokeb+40,32:pokeb+41,32:goto640
890 x=5+4*rs(l):ifzx(l,0)<xthenreturn
900 px(l)=x:pd(l)=0:a=r0(l)+x:ifpeek(a)=32thenpokea,81:pokea+co,13:pd(l)=1
910 pokev1+1,40:pokev1+5,7:pokev1+4,128:pokev1+4,129
920 pokev1+1,12:pokev1+4,17:return
930 px(l)=0:q=pc(l):pokev1+1,20:pokev1+5,7:pokev1+4,128:pokev1+4,129
940 ifq<1thenq=1
950 zh(l,0)=zh(l,0)-q:pokev1+1,6:pokev1+4,65:ifzh(l,0)>0thenreturn
960 ll=l:xa=zx(l,0):xb=xa:goto1200
970 c=int((x-5)/4):p%(l,c)=p%(l,c)-1:gosub2470
980 ifl=cythenifc=cxthengosub690
990 ifp%(l,c)>0thenreturn
1000 ll=l
1010 a=r0(ll)+3+4*c:pokea,32:pokea+1,32:pokea+40,32:pokea+41,32
1020 q=g%(ll,c):g%(ll,c)=0:ifq=2thensf=sf-1:gosub2260
1030 ifll=cythenifc=cxthengosub690
1040 ifq<>1thenreturn
1050 pc(ll)=pc(ll)-1:rs(ll)=-1:forq=8to0step-1:ifg%(ll,q)=1thenrs(ll)=q:q=0
1060 next:return
1070 ifm(l)=0then1260
1080 m(l)=0:a=r0(l):ifpd(l)thenifpeek(a+px(l))=81thenpokea+px(l),32
1090 px(l)=0:pd(l)=0:gosub2500:ll=l:xa=0:xb=39:gosub1200
1100 a=r0(l):u=0:e0=32:e1=32:e2=32:e3=32
1110 b=a+u+2:n0=peek(b):n1=peek(b+1):n2=peek(b+40):n3=peek(b+41)
1120 m0=peek(b+co):m1=peek(b+1+co):m2=peek(b+40+co):m3=peek(b+41+co)
1130 pokeb,112:pokeb+40,109:pokeb+co,12:pokeb+40+co,12
1140 pokeb+1,160:pokeb+41,160:pokeb+1+co,2:pokeb+41+co,2
1150 o=a+u:pokeo,e0:pokeo+1,e1:pokeo+40,e2:pokeo+41,e3
1160 pokeo+co,f0:pokeo+1+co,f1:pokeo+40+co,f2:pokeo+41+co,f3
1170 e0=n0:e1=n1:e2=n2:e3=n3:f0=m0:f1=m1:f2=m2:f3=m3:u=u+2:ifu<37then1110
1180 o=a+u:pokeo,e0:pokeo+1,e1:pokeo+40,e2:pokeo+41,e3
1190 pokeo+co,f0:pokeo+1+co,f1:pokeo+40+co,f2:pokeo+41+co,f3:return
1200 ifzn(ll)=0thenreturn
1210 n=0:foru=0tozn(ll)-1:x=zx(ll,u):ifx<xaorx>xbthen1240
1220 a=r0(ll)+x:pokea,32:pokea+40,32:tz=tz-1:poke1984+zs(ll,u),32
1230 next:zn(ll)=n:return
1240 zx(ll,n)=x:zh(ll,n)=zh(ll,u):zt(ll,n)=zt(ll,u):zs(ll,n)=zs(ll,u)
1250 n=n+1:next:zn(ll)=n:return
1260 m$="the zombies got in!":goto1280
1270 m$="lawn defended! you win!"
1280 poke53269,0:fori=1904to2023:pokei,32:next
1290 printchr$(19)d$m$;
1300 printchr$(19)d$chr$(17)"fire/space - play again   q - menu";
1310 if(peek(56320)and16)=0then1310
1320 getk$:ifk$=" "thenrun
1330 ifk$="q"then2670
1340 if(peek(56320)and16)then1320
1350 run
1360 ifpeek(40709)=82thenpoke40709,0:poke45,peek(174):poke46,peek(175)
1370 poke56,144:clr:dv=peek(186):ifdv<8thendv=8
1380 ifpeek(36864)=76then1400
1390 load"panicmusic",dv,1
1400 rem ** init - most used variables first **
1410 l=0:x=0:a=0:i=0:k=6:co=54272:kc=0:js=0:jo=0:k$="":q=0:b=0:n=0:u=0:p=0
1420 v1=54272:v2=54279:v3=54286
1430 ll=0:xa=0:xb=0:c=0:sc=0:si=90:su=50:sf=0:se=1:w=0:wn=0:wt=0:tz=0
1440 nb=0:bk=0:h=0:e=0:g=0:lm=0:n$="":w$=chr$(5):l$=chr$(153):g$=chr$(30)
1450 wp=-20:wd=15:r=0:zy=0:v=0:j=0:cx=0:cy=2:m$="":d$="":km=0:poke650,64
1460 dimzn(4),zc(4),zx(4,3),r0(4),r2(4),px(4),pd(4),zt(4,3),zk(2),rs(4),zh(4,3)
1470 dimpc(4),g%(4,8),p%(4,8),m(4),xl(8),xh(8),ys(4),cs(4),cd(4),cl(4),ph(4)
1480 dimpk(4),pt(4,3),sn$(4),zp(2),wc(6),wk(6),wb(6),wi(6),ry(4),pn$(4)
1490 dimof(3),sv(3),kv(3),qt(26),zs(4,3),zd(2)
1500 rem ** title **
1510 poke53280,5:poke53281,0:poke53269,0:printchr$(147)chr$(142)chr$(8)chr$(5)
1520 print:printw$"  petscii panic! v05":printg$"  https://m0nde.itch.io"
1530 printl$"  hold the lawn against 6 zombie waves":print
1540 printw$"  joystick (port 2)   keyboard"
1550 printl$"  stick "g$"..."w$" move      "l$"w a s d "g$"."w$" move"
1560 printl$"  fire "g$"...."w$" plant     "l$"space "g$"..."w$" plant"
1570 printl$"  keys 1-4 "w$"choose seed (both modes)":print
1580 printw$"  1 peashooter  "l$"100  "g$"shoots its lane"
1590 printw$"  2 sunflower    "l$"50  "g$"makes more sun"
1600 printw$"  3 wall-nut     "l$"50  "g$"blocks zombies"
1610 printw$"  4 cherry bomb "l$"150+ "g$"clears a 3x3 area":print
1620 printl$"  each lane has one lawnmower. if a"
1630 printl$"  zombie gets past it again, "w$"game over!":print
1640 rem ** tables **
1650 fori=0to4:r0(i)=1224+120*i:rs(i)=-1:m(i)=1:ys(i)=88+24*i:next
1660 fori=0to8:q=44+32*i:xl(i)=qand255:xh(i)=-(q>255):next
1670 fori=1to4:readsn$(i),cs(i),cl(i),ph(i),pk(i):forj=0to3:readpt(i,j):nextj,i
1680 fori=1to22:d$=d$+chr$(17):next
1690 pn$(1)="peashooter":pn$(2)="sunflower":pn$(3)="wall-nut"
1700 pn$(4)="cherry bomb":of(1)=1:of(2)=40:of(3)=41:zd(0)=11:zd(1)=9:zd(2)=6
1710 rem ** cursor sprite at 832 **
1720 fori=0to20:a=832+3*i:q=255:u=255:ifi>1andi<19thenq=192:u=3
1730 pokea,q:pokea+1,-255*(q=255):pokea+2,u:next
1740 rem ** sounds **
1750 fori=54272to54296:pokei,0:next:poke54296,31:poke54294,100:poke54295,241
1760 poke54275,8:poke54277,7:poke54280,20:poke54284,9:poke54287,12:poke54291,9
1770 rem ** music: 2nd sid at $d420 plays it, else sid 1 voices 2+3 **
1780 ifpeek(40704)=80thens2=peek(40705):goto1820
1790 sys36867:poke54290,8:poke54318,0:poke54319,1:poke54322,33:u=peek(54331)
1800 t=0:fori=1to20:t=t+peek(54299):next:s2=-(t=0andpeek(54331)<>u)
1810 poke54322,0:poke54290,0:poke40705,s2:poke40710,s2+1:poke40704,80
1820 ifs2=0thenv2=v1:v3=v1
1830 mv=3:ev=peek(40707)-1:ifev<0orev>15thenev=15
1840 ifs2=0thenev=15
1850 poke54296,16+ev:ifs2thenpoke54328,mv
1860 ifpeek(789)<>144thenpoke36879,mv:poke36870,s2:sys36864
1870 print:ifs2thenprintl$"  m/e "w$"music/sfx volume  "l$"q "w$"quit to menu";
1880 ifs2=0thenprintl$"  v "w$"volume  "l$"q "w$"quit to menu";
1890 print:printw$"  fire "l$"= joystick   "w$"space "l$"= keyboard";
1900 if(peek(56320)and16)=0then1900
1910 getk$:ifk$=" "thenkm=1:goto1940
1920 if(peek(56320)and16)then1910
1930 if(peek(56320)and16)=0then1930
1940 m$=l$+"  left/right to choose, fire to start "
1950 ifkmthenm$=l$+"  a/d to choose, space to start       "
1960 printchr$(19)left$(d$,20)m$:printchr$(19)d$"      easy    normal    hard";
1970 df=1:jo=0:gosub2270
1980 ifkmthen2040
1990 j=31-(peek(56320)and31):q=jandnotjo:jo=j
2000 ifqand4thenifdf>0thendf=df-1:gosub2270
2010 ifqand8thenifdf<2thendf=df+1:gosub2270
2020 ifqand16then2070
2030 goto1980
2040 getk$:ifk$="a"thenifdf>0thendf=df-1:gosub2270
2050 ifk$="d"thenifdf<2thendf=df+1:gosub2270
2060 ifk$<>" "then1980
2070 if(peek(56320)and16)=0then2070
2080 jo=0:si=40-20*(df=1)-50*(df=2):dl$=mid$("easy  normalhard  ",df*6+1,6)
2090 fori=0to8:readq,r:ifint(i/3)=dfthenzp(i-3*df)=q:zk(i-3*df)=r
2100 next:ph(3)=35-5*df+5*(df=2):cs(4)=150+25*df:k=5-df
2110 fori=1to6:readwc(i),wk(i),wb(i),wi(i):next
2120 fori=1to6:readq,r,u,v:ifdf=2thenwc(i)=q:wk(i)=r:wb(i)=u:wi(i)=v
2130 next:sn$(4)="4 bom"+mid$(str$(cs(4)),2)
2140 x=rnd(-(ti*(peek(53266)+ti))):x=0
2150 rem ** draw lawn **
2160 printw$chr$(147);:fori=0to4:a=r0(i)+80:forj=0to39:pokea+j+co,13:nextj
2170 a=r0(i):pokea,112:pokea+40,109:pokea+co,12:pokea+40+co,12
2180 pokea+1,160:pokea+41,160:pokea+1+co,2:pokea+41+co,2:nexti
2190 forj=1184to1223:pokej,64:pokej+co,5:pokej+640,64:pokej+640+co,5:next
2200 gosub640:gosub660:printchr$(19)spc(32)"wave 0/6";
2210 printchr$(19)spc(24)dl$;:gosub2250:gosub2260:gosub690
2220 m$="get ready!":printchr$(19)d$m$;
2230 poke2040,13:poke53287,1:poke53248,xl(cx):poke53264,xh(cx):poke53249,ys(cy)
2240 poke53277,0:poke53271,0:poke53276,0:poke53269,1:goto40
2250 forh=0to7:poke1033+h,160:poke55305+h,11:next:bk=0:nb=si/9:return
2260 printchr$(19)spc(18)"+"mid$(str$(25+25*sf),2)"  ";:return
2270 fori=6to27:poke56176+i,11:next:a=56176+6-8*(df=1)-18*(df=2)
2280 fori=0to3-2*(df=1):pokea+i,1:next:return
2290 forh=0to39:poke1984+h,32:next:qi=0
2300 forh=0towc(w)-1:q=rnd(1)*100:zy=-(q<wb(w)+wk(w))-(q<wb(w))
2310 qt(h)=zy:poke1984+h,87:poke56256+h,zd(zy):next:return
2320 rem ** seeds: name,cost,cooldown,bites,color,4 chars **
2330 data "1 pea100",100,450,5,13,81,64,93,32
2340 data "2 sun 50",50,450,5,7,87,87,93,93
2350 data "3 nut 50",50,1800,36,9,160,160,160,160
2360 data "4 bom150",150,3000,0,2,78,77,81,81
2370 rem ** zombies: hp,color x3 - easy,normal,hard **
2380 data 10,15,25,8,65,14
2390 data 15,15,35,8,80,14
2400 data 20,15,40,8,85,14
2410 rem ** waves: count,cone%,bucket%,interval - easy,normal,hard **
2420 data 4,0,0,60,6,20,0,45,8,30,0,40
2430 data 10,30,10,30,12,30,20,25,20,35,25,12
2440 data 5,0,0,37,8,25,0,27,10,35,5,23
2450 data 13,35,15,19,16,35,25,15,26,40,30,8
2460 rem ** sound: chomp crunch **
2470 pokev3+5,5:pokev3+1,70:pokev3+4,128:pokev3+4,129:pokev3+1,30
2480 pokev3+1,60:pokev3+1,24:pokev3+1,45:return
2490 rem ** sound: noise burst for cherry bomb and mower **
2500 pokev3+1,12:pokev3+5,9:pokev3+4,128:pokev3+4,129:return
2510 rem ** keys: m/e (two sids) or v (one sid) volume, q quit to menu **
2520 ifk$="q"then2630
2530 ifs2=0andk$<>"v"thenreturn
2540 ifs2andk$="v"thenreturn
2550 ifk$<>"m"then2580
2560 mv=(mv+3)*-(mv<15):poke54328,mv:poke36879,mv:poke40706,mv+1
2570 b=mv:x$="music ":goto2600
2580 ev=(ev+3)*-(ev<15):poke54296,16+ev:poke40707,ev+1:b=ev
2590 x$="sound fx ":ifs2=0thenx$="volume "
2600 b=int(b/3+.5)
2610 printchr$(19)d$x$chr$(18)left$("     ",b)chr$(146)left$(".....",5-b);
2620 printleft$("   ",9-len(x$));:return
2630 printchr$(19)d$"quit to menu? y/n ";
2640 getk$:ifk$=""then2640
2650 ifk$="y"then2670
2660 printchr$(19)d$left$(m$+"              ",14);:return
2670 poke53269,0:sys36867:poke40709,82:load"petsciipanic",dv
