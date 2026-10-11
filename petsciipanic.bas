10 goto1320:rem petscii panic - https://m0nde.itch.io
20 a=r0(l)+x:pokea-1,87:pokea+39,94:pokea,32:pokea+40,32:kc=zk(zt(l,i))
30 pokea-1+co,kc:pokea+39+co,kc:zx(l,i)=x-1:return
40 l=l+1:ifl>4thenl=0:gosub240
50 ifkm=0thenjs=31-(peek(56320)and31):ifjs<>jothengosub390
60 getk$:ifk$<>""thengosub470
70 ifzn(l)=0then160
80 zc(l)=zc(l)+1:ifzc(l)<kthen160
90 zc(l)=0:i=0:x=zx(l,0):ifx<3thengosub1040:goto160
100 gosub140
110 ifzn(l)<2then160
120 fori=1tozn(l)-1:x=zx(l,i):ifx>zx(l,i-1)+1thengosub140
130 next:goto160
140 p=peek(r0(l)+x-1):ifp=32orp=81then20
150 goto940
160 ifpx(l)=0then220
170 a=r0(l)+px(l):ifpd(l)thenifpeek(a)=81thenpokea,32
180 px(l)=px(l)+2:pd(l)=0:ifzn(l)=0then200
190 ifpx(l)>=zx(l,0)thengosub910:goto220
200 ifpx(l)>37thenpx(l)=0:goto220
210 ifpeek(a+2)=32thenpokea+2,81:pokea+2+co,13:pd(l)=1
220 ifpx(l)=0thenifzn(l)thenifrs(l)>=0thengosub880
230 goto40
240 sc=sc+1:ifsc>=sithensc=0:su=su+25+25*sf:gosub630:gosub2050
250 ifsc>=nbthenifbk<8thenpoke55305+bk,7:bk=bk+1:nb=nb+si/9
260 ifwn>0thenwt=wt+1:ifwt>=wi(w)thengosub290
270 ifwn=0theniftz=0thenwp=wp+1:ifwp>=wdthenwp=0:gosub350
280 goto710
290 r=int(rnd(1)*5):n=zn(r):ifn>3thenreturn
300 ifnthenifzx(r,n-1)>36thenreturn
310 wt=0:wn=wn-1:tz=tz+1:zn(r)=n+1:zx(r,n)=38:zy=qt(qi):zs(r,n)=qi
320 poke56256+qi,zk(zy):qi=qi+1
330 zt(r,n)=zy:zh(r,n)=zp(zy):a=r0(r)+38:kc=zk(zy):pokea,87:pokea+40,94
340 pokea+co,kc:pokea+40+co,kc:return
350 ifw=6then1240
360 w=w+1:wn=wc(w):wt=0:m$="wave"+str$(w)+"        ":gosub2090
370 ifw=6thenm$="huge wave!    "
380 printchr$(19)spc(32)"wave"str$(w)"/6";:printchr$(19)d$m$;:return
390 q=jsandnotjo:jo=js:ifq=0thenreturn
400 ifqand1thenifcy>0thency=cy-1
410 ifqand2thenifcy<4thency=cy+1
420 ifqand4thenifcx>0thencx=cx-1
430 ifqand8thenifcx<8thencx=cx+1
440 poke53248,xl(cx):poke53264,xh(cx):poke53249,ys(cy):gosub680
450 ifqand16then510
460 return
470 ifkmthenq=-(k$="w")-2*(k$="s")-4*(k$="a")-8*(k$="d")-16*(k$=" ")
480 ifkmthenifqthen400
490 q=asc(k$)-48:ifq<1orq>4thenreturn
500 se=q:goto650
510 ifsu<cs(se)orti<cd(se)then620
520 ifg%(cy,cx)then620
530 ifse=4then820
540 a=r0(cy)+3+4*cx:ifpeek(a)<>32orpeek(a+1)<>32then620
550 g%(cy,cx)=se:p%(cy,cx)=ph(se):su=su-cs(se):cd(se)=ti+cl(se):kc=pk(se)
560 pokea,pt(se,0):pokea+1,pt(se,1):pokea+40,pt(se,2):pokea+41,pt(se,3)
570 pokea+co,kc:pokea+1+co,kc:pokea+40+co,kc:pokea+41+co,kc
580 poke54280,20:poke54283,32:poke54283,33
590 ifse=1thenpc(cy)=pc(cy)+1:ifcx>rs(cy)thenrs(cy)=cx
600 ifse=2thensf=sf+1:gosub2060
610 gosub680:goto630
620 poke54280,3:poke54283,32:poke54283,33:return
630 ifsu>9990thensu=9990
640 printchr$(19)"sun"right$("    "+str$(su),5);:goto710
650 printchr$(19)chr$(17)chr$(17);:forq=1to4:ifq=sethenprintchr$(18);
660 printsn$(q);chr$(146);" ";:ry(q)=9:next:gosub670:goto710
670 printchr$(19)d$spc(14)left$(" "+pn$(se)+"             ",13);:return
680 o=g%(cy,cx):h$="":ifo=0then700
690 h$=pn$(o)+str$(p%(cy,cx))+"/"+mid$(str$(ph(o)),2)+" hp"
700 printchr$(19)d$chr$(17)left$(h$+"                      ",22);:return
710 forv=1to4:e=-2*(su<cs(v))-(ti<cd(v)):ife<>ry(v)thenry(v)=e:gosub780
720 next:e=ry(se):g=0:ife=1theng=-1
730 ife>1theng=cs(se)-su
740 ifg=lmthenreturn
750 lm=g:n$="":ifg<0thenn$="recharging"
760 ifg>0thenn$="need"+str$(g)+" more"
770 n$=right$("             "+n$,13):printchr$(19)d$spc(27)n$;:return
780 a=55367+9*v:kc=1:ife=1thenkc=11
790 ife>1thenkc=2
800 pokea,kc:pokea+1,kc:pokea+2,kc:pokea+3,kc:pokea+4,kc:pokea+5,kc:pokea+6,kc
810 pokea+7,kc:return
820 su=su-cs(4):cd(4)=ti+cl(4):b=r0(cy)+3+4*cx:pokeb,78:pokeb+1,77
830 pokeb+40,81:pokeb+41,81:pokeb+co,2:pokeb+1+co,2:pokeb+40+co,2:pokeb+41+co,2
840 poke53280,2:poke54290,128:poke54290,129:xa=4*cx-2:xb=4*cx+9
850 forv=cy-1tocy+1:ifv>=0andv<=4thenll=v:gosub1170
860 next:forv=1to150:next:poke53280,5
870 pokeb,32:pokeb+1,32:pokeb+40,32:pokeb+41,32:goto630
880 x=5+4*rs(l):ifzx(l,0)<xthenreturn
890 px(l)=x:pd(l)=0:a=r0(l)+x:ifpeek(a)=32thenpokea,81:pokea+co,13:pd(l)=1
900 return
910 px(l)=0:q=pc(l):ifq<1thenq=1
920 zh(l,0)=zh(l,0)-q:poke54276,16:poke54276,17:ifzh(l,0)>0thenreturn
930 ll=l:xa=zx(l,0):xb=xa:goto1170
940 c=int((x-5)/4):p%(l,c)=p%(l,c)-1:poke54290,128:poke54290,129
950 ifl=cythenifc=cxthengosub680
960 ifp%(l,c)>0thenreturn
970 ll=l
980 a=r0(ll)+3+4*c:pokea,32:pokea+1,32:pokea+40,32:pokea+41,32
990 q=g%(ll,c):g%(ll,c)=0:ifq=2thensf=sf-1:gosub2060
1000 ifll=cythenifc=cxthengosub680
1010 ifq<>1thenreturn
1020 pc(ll)=pc(ll)-1:rs(ll)=-1:forq=8to0step-1:ifg%(ll,q)=1thenrs(ll)=q:q=0
1030 next:return
1040 ifm(l)=0then1230
1050 m(l)=0:a=r0(l):ifpd(l)thenifpeek(a+px(l))=81thenpokea+px(l),32
1060 px(l)=0:pd(l)=0:poke54290,128:poke54290,129:ll=l:xa=0:xb=39:gosub1170
1070 a=r0(l):u=0:e0=32:e1=32:e2=32:e3=32
1080 b=a+u+2:n0=peek(b):n1=peek(b+1):n2=peek(b+40):n3=peek(b+41)
1090 m0=peek(b+co):m1=peek(b+1+co):m2=peek(b+40+co):m3=peek(b+41+co)
1100 pokeb,112:pokeb+40,109:pokeb+co,12:pokeb+40+co,12
1110 pokeb+1,160:pokeb+41,160:pokeb+1+co,2:pokeb+41+co,2
1120 o=a+u:pokeo,e0:pokeo+1,e1:pokeo+40,e2:pokeo+41,e3
1130 pokeo+co,f0:pokeo+1+co,f1:pokeo+40+co,f2:pokeo+41+co,f3
1140 e0=n0:e1=n1:e2=n2:e3=n3:f0=m0:f1=m1:f2=m2:f3=m3:u=u+2:ifu<37then1080
1150 o=a+u:pokeo,e0:pokeo+1,e1:pokeo+40,e2:pokeo+41,e3
1160 pokeo+co,f0:pokeo+1+co,f1:pokeo+40+co,f2:pokeo+41+co,f3:return
1170 ifzn(ll)=0thenreturn
1180 n=0:foru=0tozn(ll)-1:x=zx(ll,u):ifx<xaorx>xbthen1210
1190 a=r0(ll)+x:pokea,32:pokea+40,32:tz=tz-1:poke1984+zs(ll,u),32
1200 next:zn(ll)=n:return
1210 zx(ll,n)=x:zh(ll,n)=zh(ll,u):zt(ll,n)=zt(ll,u):zs(ll,n)=zs(ll,u)
1220 n=n+1:next:zn(ll)=n:return
1230 m$="the zombies got in!":goto1250
1240 m$="lawn defended! you win!"
1250 poke53269,0:o$="":fori=1to39:o$=o$+" ":next:printchr$(19)d$o$:printo$
1260 printchr$(19)d$m$"     "
1270 print"press fire or space to play again";
1280 if(peek(56320)and16)=0then1280
1290 getk$:ifk$=" "thenrun
1300 if(peek(56320)and16)then1290
1310 run
1320 rem ** init - most used variables first **
1330 l=0:x=0:a=0:i=0:k=6:co=54272:kc=0:js=0:jo=0:k$="":q=0:b=0:n=0:u=0:p=0
1340 ll=0:xa=0:xb=0:c=0:sc=0:si=90:su=50:sf=0:se=1:w=0:wn=0:wt=0:tz=0
1350 nb=0:bk=0:h=0:e=0:g=0:lm=0:n$=""
1360 wp=-60:wd=30:r=0:zy=0:v=0:j=0:cx=0:cy=2:m$="":d$="":km=0:poke650,64
1370 dimzn(4),zc(4),zx(4,3),r0(4),r2(4),px(4),pd(4),zt(4,3),zk(2),rs(4),zh(4,3)
1380 dimpc(4),g%(4,8),p%(4,8),m(4),xl(8),xh(8),ys(4),cs(4),cd(4),cl(4),ph(4)
1390 dimpk(4),pt(4,3),sn$(4),zp(2),wc(6),wk(6),wb(6),wi(6),ry(4),pn$(4)
1400 dimof(3),sv(3),kv(3),qt(26),zs(4,3),zd(2)
1410 rem ** title **
1420 poke53280,5:poke53281,0:poke53269,0:printchr$(147)chr$(142)chr$(8)chr$(5)
1430 print:print"  petscii panic  https://m0nde.itch.io":print
1440 print"  hold the lawn against 6 zombie waves":print
1450 print"  joystick (port 2)   keyboard"
1460 print"  stick ... move      w a s d . move"
1470 print"  fire .... plant     space ... plant"
1480 print"  keys 1-4 choose seed (both modes)":print
1490 print"  1 peashooter  100  shoots its lane"
1500 print"  2 sunflower    50  makes more sun"
1510 print"  3 wall-nut     50  blocks zombies"
1520 print"  4 cherry bomb 150  clears a 3x3 area":print
1530 print"  each lane has one lawnmower. if a"
1540 print"  zombie gets past it again, game over!":print
1550 print"  loading...";
1560 rem ** tables **
1570 fori=0to4:r0(i)=1224+120*i:r2(i)=r0(i)+80:rs(i)=-1:m(i)=1:ys(i)=88+24*i:next
1580 fori=0to8:q=44+32*i:xl(i)=qand255:xh(i)=-(q>255):next
1590 fori=1to4:readsn$(i),cs(i),cl(i),ph(i),pk(i):forj=0to3:readpt(i,j):nextj,i
1600 fori=1to22:d$=d$+chr$(17):next
1610 pn$(1)="peashooter":pn$(2)="sunflower":pn$(3)="wall-nut"
1620 pn$(4)="cherry bomb":of(1)=1:of(2)=40:of(3)=41:zd(0)=11:zd(1)=9:zd(2)=6
1630 rem ** cursor sprite at 832 **
1640 fori=0to20:a=832+3*i:q=255:u=255:ifi>1andi<19thenq=192:u=3
1650 pokea,q:pokea+1,-255*(q=255):pokea+2,u:next
1660 rem ** sounds **
1670 fori=54272to54296:pokei,0:next:poke54296,15
1680 poke54273,40:poke54277,9:poke54280,20:poke54284,9:poke54287,12:poke54291,9
1690 print:print:print"  fire = joystick   space = keyboard";
1700 if(peek(56320)and16)=0then1700
1710 getk$:ifk$=" "thenkm=1:goto1740
1720 if(peek(56320)and16)then1710
1730 if(peek(56320)and16)=0then1730
1740 m$="  left/right to choose, fire to start "
1750 ifkmthenm$="  a/d to choose, space to start       "
1760 printchr$(19)left$(d$,20)m$:printchr$(19)d$"      easy    normal    hard";
1770 df=1:jo=0:gosub2070
1780 ifkmthen1840
1790 j=31-(peek(56320)and31):q=jandnotjo:jo=j
1800 ifqand4thenifdf>0thendf=df-1:gosub2070
1810 ifqand8thenifdf<2thendf=df+1:gosub2070
1820 ifqand16then1870
1830 goto1780
1840 getk$:ifk$="a"thenifdf>0thendf=df-1:gosub2070
1850 ifk$="d"thenifdf<2thendf=df+1:gosub2070
1860 ifk$<>" "then1780
1870 if(peek(56320)and16)=0then1870
1880 jo=0:si=40-20*(df=1)-50*(df=2):dl$=mid$("easy  normalhard  ",df*6+1,6)
1890 fori=0to8:readq,r:ifint(i/3)=dfthenzp(i-3*df)=q:zk(i-3*df)=r
1900 next:ph(3)=35-5*df+5*(df=2):cs(4)=150+25*df
1910 fori=1to6:readwc(i),wk(i),wb(i),wi(i):next
1920 fori=1to6:readq,r,u,v:ifdf=2thenwc(i)=q:wk(i)=r:wb(i)=u:wi(i)=v
1930 next:sn$(4)="4 bom"+mid$(str$(cs(4)),2)
1940 x=rnd(-(ti*(peek(53266)+ti))):x=0
1950 rem ** draw lawn **
1960 printchr$(147);:fori=0to4:a=r2(i):forj=0to39:pokea+j+co,13:nextj
1970 a=r0(i):pokea,112:pokea+40,109:pokea+co,12:pokea+40+co,12
1980 pokea+1,160:pokea+41,160:pokea+1+co,2:pokea+41+co,2:nexti
1990 forj=0to39:poke1184+j,64:poke1184+j+co,5:poke1824+j,64:poke1824+j+co,5:next
2000 gosub630:gosub650:printchr$(19)spc(32)"wave 0/6";
2010 printchr$(19)spc(24)dl$;:gosub2050:gosub2060:gosub680
2020 m$="get ready!":printchr$(19)d$m$;
2030 poke2040,13:poke53287,1:poke53248,xl(cx):poke53264,xh(cx):poke53249,ys(cy)
2040 poke53269,1:goto40
2050 forh=0to7:poke1033+h,160:poke55305+h,11:next:bk=0:nb=si/9:return
2060 printchr$(19)spc(18)"+"mid$(str$(25+25*sf),2)"  ";:return
2070 fori=6to27:poke56176+i,11:next:a=56176+6-8*(df=1)-18*(df=2)
2080 fori=0to3-2*(df=1):pokea+i,1:next:return
2090 forh=0to39:poke1984+h,32:next:qi=0
2100 forh=0towc(w)-1:q=rnd(1)*100:zy=0:ifq<wb(w)+wk(w)thenzy=1:ifq<wb(w)thenzy=2
2110 qt(h)=zy:poke1984+h,87:poke56256+h,zd(zy):next:return
2120 rem ** seeds: name,cost,cooldown,bites,color,4 chars **
2130 data "1 pea100",100,450,5,13,81,64,93,32
2140 data "2 sun 50",50,450,5,7,87,87,93,93
2150 data "3 nut 50",50,1800,36,9,160,160,160,160
2160 data "4 bom150",150,3000,0,2,78,77,81,81
2170 rem ** zombies: hp,color x3 - easy,normal,hard **
2180 data 10,15,25,8,65,14
2190 data 15,15,35,8,80,14
2200 data 20,15,40,8,85,14
2210 rem ** waves: count,cone%,bucket%,interval - easy,normal,hard **
2220 data 4,0,0,60,6,20,0,45,8,30,0,40
2230 data 10,30,10,30,12,30,20,25,20,35,25,12
2240 data 5,0,0,55,8,25,0,40,10,35,5,34
2250 data 13,35,15,28,16,35,25,22,26,40,30,12
