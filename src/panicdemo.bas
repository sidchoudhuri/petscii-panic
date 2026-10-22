10 goto1380:rem petscii panic! v05 - self-playing demo - https://m0nde.itch.io
20 a=r0(l)+x:z=zt(l,i):pokea-1,87+z:pokea+39,94+(xand1):pokea,32:pokea+40,32
30 kc=zk(z):pokea-1+co,kc:pokea+39+co,kc:zx(l,i)=x-1:return
40 l=l+1:ifl>4thenl=0:gosub250
50 ifl=0thengosub2900
60 getk$:ifk$="q"then2880
70 ifzn(l)=0then160
80 zc(l)=zc(l)+1:ifzc(l)<kthen160
90 zc(l)=0:i=0:x=zx(l,0):ifx<3thengosub1110:goto160
100 gosub140
110 ifzn(l)<2then160
120 fori=1tozn(l)-1:x=zx(l,i):ifx>zx(l,i-1)+1thengosub140
130 next:goto160
140 p=peek(r0(l)+x-1):ifp=32orp=81then20
150 goto990
160 ifpx(l)=0then230
170 a=r0(l)+px(l):ifpd(l)thenifpeek(a)=81thenpokea,32
180 iffs(l)thenb=fs(l):fs(l)=0:ifpeek(b)=69thenpokeb,66
190 px(l)=px(l)+2:pd(l)=0:ifzn(l)=0then210
200 ifpx(l)>=zx(l,0)thengosub950:goto230
210 ifpx(l)>37thenpx(l)=0:goto230
220 ifpeek(a+2)=32thenpokea+2,81:pokea+2+co,13:pd(l)=1
230 ifpx(l)=0thenifzn(l)thenifrs(l)>=0thengosub900
240 goto40
250 sc=sc+1:ifsc>=sithensc=0:su=su+25+25*sf:gosub650:gosub2110
260 ifsc>=nbthenifbk<8thenpoke55305+bk,7:bk=bk+1:nb=nb+si/9
270 ifwn>0thenwt=wt+1:ifwt>=wi(w)thengosub300
280 ifwn=0theniftz=0thenwp=wp+1:ifwp>=wdthenwp=0:gosub360
290 goto730
300 r=int(rnd(1)*5):n=zn(r):ifn>3thenreturn
310 ifnthenifzx(r,n-1)>36thenreturn
320 wt=0:wn=wn-1:tz=tz+1:zn(r)=n+1:zx(r,n)=38:zy=qt(qi):zs(r,n)=qi
330 poke51136+qi,74+zy:poke56256+qi,zk(zy):qi=qi+1
340 zt(r,n)=zy:zh(r,n)=zp(zy):a=r0(r)+38:kc=zk(zy):pokea,87+zy:pokea+40,94
350 pokea+co,kc:pokea+40+co,kc:return
360 ifw=6then1310
370 w=w+1:wn=wc(w):wt=0:m$="wave"+str$(w)+"        ":gosub2150
380 ifw=6thenm$="huge wave!    "
390 printchr$(19)spc(32)"wave"str$(w)"/6";:printchr$(19)d$m$;:return
400 q=jsandnotjo:jo=js:ifq=0thenreturn
410 ifqand1thenifcy>0thency=cy-1
420 ifqand2thenifcy<4thency=cy+1
430 ifqand4thenifcx>0thencx=cx-1
440 ifqand8thenifcx<8thencx=cx+1
450 poke53248,xl(cx):poke53264,xh(cx):poke53249,ys(cy):gosub700
460 ifqand16then530
470 return
480 ifkmthenq=-(k$="w")-2*(k$="s")-4*(k$="a")-8*(k$="d")-16*(k$=" ")
490 ifkmthenifqthen410
500 ifk$="m"ork$="e"ork$="v"ork$="q"then2730
510 q=asc(k$)-48:ifq<1orq>4thenreturn
520 se=q:goto670
530 ifsu<cs(se)orti<cd(se)then640
540 ifg%(cy,cx)then640
550 ifse=4then840
560 a=r0(cy)+3+4*cx:ifpeek(a)<>32orpeek(a+1)<>32then640
570 g%(cy,cx)=se:p%(cy,cx)=ph(se):su=su-cs(se):cd(se)=ti+cl(se):kc=pk(se)
580 pokea,pt(se,0):pokea+1,pt(se,1):pokea+40,pt(se,2):pokea+41,pt(se,3)
590 pokea+co,kc:pokea+1+co,kc:pokea+40+co,kc:pokea+41+co,kc
600 pokev2+1,200:pokev2+5,115:pokev2+4,128:pokev2+4,129
610 ifse=1thenpc(cy)=pc(cy)+1:ifcx>rs(cy)thenrs(cy)=cx
620 ifse=2thensf=sf+1:gosub2120
630 gosub700:goto650
640 pokev2+1,3:pokev2+5,9:pokev2+4,32:pokev2+4,33:return
650 ifsu>9990thensu=9990
660 printchr$(19)"sun"right$("    "+str$(su),5);:goto730
670 printchr$(19)chr$(17)chr$(17);:forq=1to4:ifq=sethenprintchr$(18);
680 printsn$(q);chr$(146);" ";:ry(q)=9:next:gosub690:goto730
690 printchr$(19)d$spc(14)left$(" "+pn$(se)+"             ",13);:return
700 o=g%(cy,cx):h$="":ifo=0then720
710 h$=pn$(o)+str$(p%(cy,cx))+"/"+mid$(str$(ph(o)),2)+" hp"
720 printchr$(19)d$chr$(17)left$(h$+"                      ",22);:return
730 forv=1to4:e=-2*(su<cs(v))-(ti<cd(v)):ife<>ry(v)thenry(v)=e:gosub800
740 next:e=ry(se):g=0:ife=1theng=-1
750 ife>1theng=cs(se)-su
760 ifg=lmthenreturn
770 lm=g:n$="":ifg<0thenn$="recharging"
780 ifg>0thenn$="need"+str$(g)+" more"
790 n$=right$("             "+n$,13):printchr$(19)d$spc(27)n$;:return
800 a=55367+9*v:kc=1:ife=1thenkc=6
810 ife>1thenkc=2
820 pokea,kc:pokea+1,kc:pokea+2,kc:pokea+3,kc:pokea+4,kc:pokea+5,kc:pokea+6,kc
830 pokea+7,kc:return
840 su=su-cs(4):cd(4)=ti+cl(4):b=r0(cy)+3+4*cx:q=108:kc=10:gosub2330
850 forv=1to60:next:q=112:gosub2330:forv=1to60:next:q=116:kc=15:gosub2330
860 poke53280,2:gosub2710:xa=4*cx-2:xb=4*cx+9
870 forv=cy-1tocy+1:ifv>=0andv<=4thenll=v:gosub1240
880 next:forv=1to150:next:poke53280,5
890 pokeb,32:pokeb+1,32:pokeb+40,32:pokeb+41,32:goto650
900 x=5+4*rs(l):ifzx(l,0)<xthenreturn
910 px(l)=x:pd(l)=0:a=r0(l)+x:ifpeek(a)=32thenpokea,81:pokea+co,13:pd(l)=1
920 ifpeek(a-1)=66thenpokea-1,69:fs(l)=a-1
930 pokev1+1,40:pokev1+5,7:pokev1+4,128:pokev1+4,129
940 pokev1+1,12:pokev1+4,17:return
950 px(l)=0:q=pc(l):pokev1+1,20:pokev1+5,7:pokev1+4,128:pokev1+4,129
960 ifq<1thenq=1
970 zh(l,0)=zh(l,0)-q:pokev1+1,6:pokev1+4,65:ifzh(l,0)>0thenreturn
980 ll=l:xa=zx(l,0):xb=xa:goto1240
990 c=int((x-5)/4):p%(l,c)=p%(l,c)-1:gosub2680
1000 a=r0(l)+x:p=peek(a):pokea,p+3+6*(p>89)
1010 ifl=cythenifc=cxthengosub700
1020 ifp%(l,c)>0thenifg%(l,c)=3then2360
1030 ifp%(l,c)>0thenreturn
1040 ll=l
1050 a=r0(ll)+3+4*c:pokea,32:pokea+1,32:pokea+40,32:pokea+41,32
1060 q=g%(ll,c):g%(ll,c)=0:ifq=2thensf=sf-1:gosub2120
1070 ifll=cythenifc=cxthengosub700
1080 ifq<>1thenreturn
1090 pc(ll)=pc(ll)-1:rs(ll)=-1:forq=8to0step-1:ifg%(ll,q)=1thenrs(ll)=q:q=0
1100 next:return
1110 ifm(l)=0then1300
1120 m(l)=0:a=r0(l):ifpd(l)thenifpeek(a+px(l))=81thenpokea+px(l),32
1130 px(l)=0:pd(l)=0:gosub2710:ll=l:xa=0:xb=39:gosub1240
1140 a=r0(l):u=0:e0=32:e1=32:e2=32:e3=32
1150 b=a+u+2:n0=peek(b):n1=peek(b+1):n2=peek(b+40):n3=peek(b+41)
1160 m0=peek(b+co):m1=peek(b+1+co):m2=peek(b+40+co):m3=peek(b+41+co)
1170 pokeb,120:pokeb+40,122:pokeb+co,9:pokeb+40+co,10
1180 pokeb+1,121:pokeb+41,123:pokeb+1+co,10:pokeb+41+co,10
1190 o=a+u:pokeo,e0:pokeo+1,e1:pokeo+40,e2:pokeo+41,e3
1200 pokeo+co,f0:pokeo+1+co,f1:pokeo+40+co,f2:pokeo+41+co,f3
1210 e0=n0:e1=n1:e2=n2:e3=n3:f0=m0:f1=m1:f2=m2:f3=m3:u=u+2:ifu<37then1150
1220 o=a+u:pokeo,e0:pokeo+1,e1:pokeo+40,e2:pokeo+41,e3
1230 pokeo+co,f0:pokeo+1+co,f1:pokeo+40+co,f2:pokeo+41+co,f3:return
1240 ifzn(ll)=0thenreturn
1250 n=0:foru=0tozn(ll)-1:x=zx(ll,u):ifx<xaorx>xbthen1280
1260 a=r0(ll)+x:pokea,32:pokea+40,32:tz=tz-1:poke51136+zs(ll,u),32
1270 next:zn(ll)=n:return
1280 zx(ll,n)=x:zh(ll,n)=zh(ll,u):zt(ll,n)=zt(ll,u):zs(ll,n)=zs(ll,u)
1290 n=n+1:next:zn(ll)=n:return
1300 m$="the zombies got in!":goto1320
1310 m$="lawn defended! you win!"
1320 poke53269,0:fori=51056to51175:pokei,32:next
1330 printchr$(19)d$m$;
1340 printchr$(19)d$chr$(17)"new game in a moment   q - menu";:t=ti+300
1350 getk$:ifk$="q"then2880
1360 ifti<tthen1350
1370 run
1380 ifpeek(40709)=82thenpoke40709,0:poke45,peek(174):poke46,peek(175)
1390 poke56,144:clr:dv=peek(186):ifdv<8thendv=8
1400 ifpeek(36864)=76then1420
1410 load"panicmusic",dv,1
1420 rem ** init - most used variables first **
1430 l=0:x=0:a=0:i=0:k=6:co=5120:kc=0:z=0:js=0:jo=0:k$="":q=0:b=0:n=0:u=0:p=0
1440 v1=54272:v2=54279:v3=54286
1450 ll=0:xa=0:xb=0:c=0:sc=0:si=90:su=50:sf=0:se=1:w=0:wn=0:wt=0:tz=0
1460 nb=0:bk=0:h=0:e=0:g=0:lm=0:n$="":w$=chr$(5):l$=chr$(153):g$=chr$(30)
1470 wp=-20:wd=15:r=0:zy=0:v=0:j=0:cx=0:cy=2:m$="":d$="":km=0:poke650,64
1480 dimzn(4),zc(4),zx(4,3),r0(4),r2(4),px(4),pd(4),zt(4,3),zk(2),rs(4),zh(4,3)
1490 dimpc(4),g%(4,8),p%(4,8),m(4),xl(8),xh(8),ys(4),cs(4),cd(4),cl(4),ph(4)
1500 dimpk(4),pt(4,3),sn$(4),zp(2),wc(6),wk(6),wb(6),wi(6),ry(4),pn$(4)
1510 dimof(3),sv(3),kv(3),qt(26),zs(4,3),zd(2),fs(4)
1520 rem ** title **
1530 poke56576,peek(56576)or3:poke53272,21:poke648,4:poke53270,200
1540 poke53280,5:poke53281,0:poke53269,0:printchr$(147)chr$(142)chr$(8)chr$(5)
1550 print:printw$"  petscii panic! v05 - self-playing demo"
1560 rem ** tables **
1570 fori=0to4:r0(i)=50376+120*i:r2(i)=r0(i)+80:rs(i)=-1:m(i)=1
1580 ys(i)=88+24*i:next
1590 fori=0to8:q=44+32*i:xl(i)=qand255:xh(i)=-(q>255):next
1600 fori=1to4:readsn$(i),cs(i),cl(i),ph(i),pk(i):forj=0to3:readpt(i,j):nextj,i
1610 fori=1to22:d$=d$+chr$(17):next
1620 pn$(1)="peashooter":pn$(2)="sunflower":pn$(3)="wall-nut"
1630 pn$(4)="cherry bomb":of(1)=1:of(2)=40:of(3)=41:zd(0)=14:zd(1)=14:zd(2)=14
1640 rem ** cursor sprite at 49152 **
1650 fori=0to20:a=49152+3*i:q=255:u=255:ifi>1andi<19thenq=192:u=3
1660 pokea,q:pokea+1,-255*(q=255):pokea+2,u:next
1670 rem ** sounds **
1680 fori=54272to54296:pokei,0:next:poke54296,31:poke54294,100:poke54295,241
1690 poke54275,8:poke54277,7:poke54280,20:poke54284,9:poke54287,12:poke54291,9
1700 rem ** music: 2nd sid at $d420 plays it, else sid 1 voices 2+3 **
1710 ifpeek(40704)=80thens2=peek(40705):goto1750
1720 sys36867:poke54290,8:poke54318,0:poke54319,1:poke54322,33:u=peek(54331)
1730 t=0:fori=1to20:t=t+peek(54299):next:s2=-(t=0andpeek(54331)<>u)
1740 poke54322,0:poke54290,0:poke40705,s2:poke40710,s2+1:poke40704,80
1750 ifs2=0thenv2=v1:v3=v1
1760 mv=3:ev=peek(40707)-1:ifev<0orev>15thenev=15
1770 ifs2=0thenev=15
1780 poke54296,16+ev:ifs2thenpoke54328,mv
1790 ifpeek(789)<>144thenpoke36879,mv:poke36870,s2:sys36864
1800 df=1:km=1
1810 jo=0:si=40-20*(df=1)-50*(df=2):dl$=mid$("easy  normalhard  ",df*6+1,6)
1820 fori=0to8:readq,r:ifint(i/3)=dfthenzp(i-3*df)=q:zk(i-3*df)=r
1830 next:ph(3)=35-5*df+5*(df=2):cs(4)=150+25*df:k=5-df
1840 fori=1to6:readwc(i),wk(i),wb(i),wi(i):next
1850 fori=1to6:readq,r,u,v:ifdf=2thenwc(i)=q:wk(i)=r:wb(i)=u:wi(i)=v
1860 next:sn$(4)="4 bom"+mid$(str$(cs(4)),2)
1870 ifpeek(52223)=77then1950
1880 printchr$(19)d$"  loading graphics...                ";
1890 poke56334,peek(56334)and254:poke1,peek(1)and251
1900 fori=0to519:poke51200+i,peek(53248+i):next
1910 fori=1024to1535:poke51200+i,peek(53248+i):next
1920 poke1,peek(1)or4:poke56334,peek(56334)or1
1930 readn:fori=1ton:readc:a=51200+8*c:forj=0to7:readb:pokea+j,b:nextj,i
1940 poke52223,77
1950 x=rnd(-(ti*(peek(53266)+ti))):x=0
1960 rem ** custom screen at $c400, chars at $c800 **
1970 poke56578,peek(56578)or3:poke56576,peek(56576)and252
1980 poke53272,18:poke648,196
1990 poke53270,peek(53270)or16:poke53282,13:poke53283,8
2000 rem ** draw lawn **
2010 printw$chr$(147);:fori=0to4:a=r2(i):forj=0to39:pokea+j+co,13:nextj
2020 a=r0(i):pokea,120:pokea+40,122:pokea+co,9:pokea+40+co,10
2030 pokea+1,121:pokea+41,123:pokea+1+co,10:pokea+41+co,10:nexti
2040 forj=0to39:poke50336+j,64:poke50336+j+co,5
2050 poke50976+j,64:poke50976+j+co,5:next
2060 gosub650:gosub670:printchr$(19)spc(32)"wave 0/6";
2070 printchr$(19)spc(24)"demo  ";:gosub2110:gosub2120:gosub700
2080 m$="get ready!":printchr$(19)d$m$;
2090 poke51192,0:poke53287,1:poke53248,xl(cx):poke53264,xh(cx):poke53249,ys(cy)
2100 poke53277,0:poke53271,0:poke53276,0:poke53269,1:goto40
2110 forh=0to7:poke50185+h,160:poke55305+h,6:next:bk=0:nb=si/9:return
2120 printchr$(19)spc(18)"+"mid$(str$(25+25*sf),2)"  ";:return
2130 fori=6to27:poke56176+i,11:next:a=56176+6-8*(df=1)-18*(df=2)
2140 fori=0to3-2*(df=1):pokea+i,1:next:return
2150 forh=0to39:poke51136+h,32:next:qi=0
2160 forh=0towc(w)-1:q=rnd(1)*100:zy=-(q<wb(w)+wk(w))-(q<wb(w))
2170 qt(h)=zy:poke51136+h,77+zy:poke56256+h,zd(zy):next:return
2180 rem ** seeds: name,cost,cooldown,bites,color,4 chars **
2190 data "1 pea100",100,450,5,13,65,66,67,68
2200 data "2 sun 50",50,450,5,15,70,71,72,73
2210 data "3 nut 50",50,1800,36,9,96,97,98,99
2220 data "4 bom150",150,3000,0,10,108,109,110,111
2230 rem ** zombies: hp,color x3 - easy,normal,hard **
2240 data 10,9,25,9,65,11
2250 data 15,9,35,9,80,11
2260 data 20,9,40,9,85,11
2270 rem ** waves: count,cone%,bucket%,interval - easy,normal,hard **
2280 data 4,0,0,60,6,20,0,45,8,30,0,40
2290 data 10,30,10,30,12,30,20,25,20,35,25,12
2300 data 5,0,0,37,8,25,0,27,10,35,5,23
2310 data 13,35,15,19,16,35,25,15,26,40,30,8
2320 rem ** cherry frame q, color kc at b **
2330 pokeb,q:pokeb+1,q+1:pokeb+40,q+2:pokeb+41,q+3:pokeb+co,kc:pokeb+1+co,kc
2340 pokeb+40+co,kc:pokeb+41+co,kc:return
2350 rem ** wall-nut damage stage **
2360 a=r0(l)+3+4*c:q=p%(l,c)*3:b=96-4*(q<=ph(3)*2)-4*(q<=ph(3))
2370 ifpeek(a)<>bthenpokea,b:pokea+1,b+1:pokea+40,b+2:pokea+41,b+3
2380 return
2390 rem ** custom chars: count, then code,8 bytes (multicolor) **
2400 data 52
2410 data 65,5,21,81,85,85,85,21,5,66,64,80,83,95,84,87,80,64
2420 data 67,3,3,83,23,3,3,3,0,68,0,0,0,20,80,0,0,0,69,64,83,95,80,80,95,83,64
2430 data 70,51,255,250,226,234,232,250,63,71,204,255,175,139,171,43,175,252
2440 data 72,49,1,81,21,1,1,1,0,73,76,64,69,84,64,64,64,0
2450 data 74,0,20,84,196,84,20,0,0,75,32,32,168,196,84,20,0,0
2460 data 76,252,252,252,68,84,20,0,0,77,0,60,252,204,252,60,0,0
2470 data 78,48,48,252,204,252,60,0,0,79,252,252,252,204,252,60,0,0
2480 data 81,0,0,20,87,95,60,0,0,87,0,20,85,197,85,21,17,40
2490 data 88,8,40,42,170,197,85,17,40,89,60,255,255,255,69,85,17,40
2500 data 90,0,20,85,197,5,1,81,40,91,8,40,42,170,5,1,81,40
2510 data 92,60,255,255,255,5,1,81,40,94,90,42,90,42,40,34,34,81
2520 data 95,42,90,42,90,40,130,130,65,96,10,42,170,175,172,170,170,170
2530 data 97,160,168,170,60,178,170,170,170,98,170,168,170,170,42,42,10,0
2540 data 99,170,42,170,162,168,168,160,0,100,10,42,170,175,172,170,170,170
2550 data 101,160,40,42,60,178,138,162,170,102,170,168,170,170,42,42,10,0
2560 data 103,170,42,170,162,168,168,160,0,104,10,40,170,175,172,170,168,170
2570 data 105,128,128,40,60,178,42,170,10,106,170,160,168,162,40,42,10,0
2580 data 107,162,10,170,162,168,136,160,0,108,0,1,4,16,16,16,255,255
2590 data 109,84,64,16,4,4,1,4,63,110,204,255,255,60,0,0,0,0
2600 data 111,255,51,255,255,255,60,0,0,112,0,1,4,60,255,195,255,243
2610 data 113,84,16,4,60,255,195,255,207,114,255,255,63,15,0,0,0,0
2620 data 115,255,255,252,240,0,0,0,0,116,195,51,14,250,58,235,43,235
2630 data 117,3,12,188,172,171,235,232,235,118,58,250,58,51,195,3,0,0
2640 data 119,172,175,172,204,12,3,0,0,120,192,48,48,12,12,3,3,3
2650 data 121,0,0,0,0,0,0,0,0,122,0,63,255,255,235,40,0,0
2660 data 123,255,255,255,255,235,40,0,0
2670 rem ** sound: chomp crunch **
2680 pokev3+5,5:pokev3+1,70:pokev3+4,128:pokev3+4,129:pokev3+1,30
2690 pokev3+1,60:pokev3+1,24:pokev3+1,45:return
2700 rem ** sound: noise burst for cherry bomb and mower **
2710 pokev3+1,12:pokev3+5,9:pokev3+4,128:pokev3+4,129:return
2720 rem ** keys: m/e (two sids) or v (one sid) volume, q quit to menu **
2730 ifk$="q"then2840
2740 ifs2=0andk$<>"v"thenreturn
2750 ifs2andk$="v"thenreturn
2760 ifk$<>"m"then2790
2770 mv=(mv+3)*-(mv<15):poke54328,mv:poke36879,mv:poke40706,mv+1
2780 b=mv:x$="music ":goto2810
2790 ev=(ev+3)*-(ev<15):poke54296,16+ev:poke40707,ev+1:b=ev
2800 x$="sound fx ":ifs2=0thenx$="volume "
2810 b=int(b/3+.5)
2820 printchr$(19)d$x$chr$(18)left$("     ",b)chr$(146)left$(".....",5-b);
2830 printleft$("   ",9-len(x$));:return
2840 printchr$(19)d$"quit to menu? y/n ";
2850 getk$:ifk$=""then2850
2860 ifk$="y"then2880
2870 printchr$(19)d$left$(m$+"              ",14);:return
2880 poke53269,0:poke56576,peek(56576)or3:poke53272,21:poke648,4:poke53270,200
2890 sys36867:poke40709,82:load"petsciipanic",dv
2900 rem ** ai: picks a seed and a square, moves there, then plants **
2910 ifdlthendl=dl-1:ifdl=0then2970
2920 ifdlthenreturn
2930 gosub2990:ifty=0thenreturn
2940 ifsu<cs(ty)orti<cd(ty)thenreturn
2950 dl=3:se=ty:cy=ly:cx=lx:poke53248,xl(cx):poke53264,xh(cx)
2960 poke53249,ys(cy):gosub670:goto700
2970 se=ty:cy=ly:cx=lx:ty=0:goto530
2980 rem ** order: cherry, guard a lane, sunflowers, wall-nut, more peas **
2990 ty=0:ifsu>=cs(4)andti>=cd(4)thengosub3080:iftythenreturn
3000 foru=0to4:ifzn(u)thenifpc(u)=0thenifty=0thengosub3130
3010 next:iftythenreturn
3020 ifsf<5thengosub3160:iftythenreturn
3030 ifti>=cd(3)thengosub3180:iftythenreturn
3040 forc=1to2:foru=0to4:ifty=0thenifpc(u)<cthengosub3060
3050 nextu,c:return
3060 gosub3220:ifffthenty=1:ly=u:lx=c
3070 return
3080 foru=0to4:ifty=0thenifzn(u)thenifzx(u,0)<15thengosub3100
3090 next:return
3100 c=int((zx(u,0)-3)/4):ifc<0thenc=0
3110 ifg%(u,c)=0thenty=4:ly=u:lx=c
3120 return
3130 c=1:gosub3220:ifffthenty=1:ly=u:lx=1:return
3140 c=2:gosub3220:ifffthenty=1:ly=u:lx=2
3150 return
3160 foru=0to4:ifty=0thenc=0:gosub3220:ifffthenty=2:ly=u:lx=0
3170 next:return
3180 foru=0to4:ifty=0thenifzn(u)thenifpc(u)thenifzx(u,0)>29thengosub3200
3190 next:return
3200 c=6:gosub3220:ifffthenty=3:ly=u:lx=6
3210 return
3220 ff=0:ifg%(u,c)thenreturn
3230 a=r0(u)+3+4*c:ifpeek(a)=32andpeek(a+1)=32andpeek(a+40)=32thenff=1
3240 return
