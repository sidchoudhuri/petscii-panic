10 rem petscii panic! v05 - basic trailer - https://m0nde.itch.io
20 ifpeek(40709)=82thenpoke40709,0:poke45,peek(174):poke46,peek(175)
30 ifpeek(56)<>80thenpoke55,0:poke56,80:clr
40 ifpeek(40704)=80andpeek(36864)=76then60
50 print"please load petsciipanic first":end
60 dv=peek(186):ifdv<8thendv=8
70 ifpeek(20480)=77andpeek(20481)=80then90
80 printchr$(147)chr$(5)"loading the trailer ...":load"panictrailerdat",dv,1
90 rem ** most used variables first. y = basic rom block move (eyvind ebsen) **
100 sl=0:sh=0:dl=0:dh=0:w=0:h=0:k=0:o=1:z=40:y=41964:u=255:v=256:sp=0:n=0:j=0
110 s=0:d=0:p1=0:p2=0:k$="":v1=54272:v2=54279:v3=54286
120 poke53280,0:poke53281,0:poke53269,0:printchr$(147)chr$(142)chr$(8)
130 rem ** 2 sids: music at the lowest notch. 1 sid: loudest **
140 s2=peek(40705):ev=peek(40707)-1:ifev<0orev>15thenev=15
150 mv=3:ifs2=0thenev=15
160 fori=54272to54295:pokei,0:next:poke54294,100:poke54295,241
170 poke54275,8:poke54277,7:poke54280,20:poke54284,9:poke54287,12:poke54291,9
180 ifs2=0thenv2=v1:v3=v1
190 poke54296,16+ev:ifs2thenpoke54328,mv
200 ifpeek(789)<>144thenpoke36879,mv:poke36870,s2:sys36864
210 fori=1104to1943:pokei,160:next:sp=29436
220 gosub360
230 n=peek(sp):sp=sp+o:ifn=uthensp=29443:goto230
240 ifn=0then320
250 forj=1ton:sl=peek(sp):sh=peek(sp+1):dl=peek(sp+2):dh=peek(sp+3)
260 w=peek(sp+4):h=peek(sp+5):sp=sp+6:ifw=0thengosub400:goto310
270 fork=1toh:poke90,sl:poke91,sh:poke88,dl:poke89,dh:poke781,o:poke782,w:sysy
280 sl=sl+w:ifsl>uthensl=sl-v:sh=sh+o
290 dl=dl+z:ifdl>uthendl=dl-v:dh=dh+o
300 next
310 nextj
320 p1=p1-1:ifp1<0thenp1=109-1
330 p2=p2+1:ifp2>=551thenp2=0
340 gosub360:getk$:ifk$="q"then500
350 goto230
360 s=20482+p1:d=1024:gosub380:s=20631+p1:d=55296:gosub380
370 s=20780+p2:d=1984:gosub380:s=21371+p2:d=56256
380 sh=int(s/v):poke90,s-v*sh:poke91,sh:dh=int(d/v):poke88,d-v*dh:poke89,dh
390 poke781,o:poke782,z:sysy:return
400 ifh>15thenpoke53281,h-16:return
410 onhgoto420,440,460,480,490
420 pokev1+1,40:pokev1+5,7:pokev1+4,128:pokev1+4,129
430 pokev1+1,12:pokev1+4,17:return
440 pokev1+1,20:pokev1+5,7:pokev1+4,128:pokev1+4,129
450 pokev1+1,6:pokev1+4,65:return
460 pokev3+5,5:pokev3+1,70:pokev3+4,128:pokev3+4,129:pokev3+1,30
470 pokev3+1,60:pokev3+1,24:pokev3+1,45:return
480 pokev2+1,200:pokev2+5,115:pokev2+4,128:pokev2+4,129:return
490 pokev3+1,12:pokev3+5,9:pokev3+4,128:pokev3+4,129:return
500 sys36867:poke53281,0:printchr$(147)chr$(5)"loading petscii panic! ..."
510 poke40709,82:load"petsciipanic",dv
