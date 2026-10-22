10 rem petscii panic! v05 - custom glyph showcase - https://m0nde.itch.io
20 ifpeek(40709)=82thenpoke40709,0:poke45,peek(174):poke46,peek(175)
30 clr:ifpeek(52223)=77andpeek(40704)=80andpeek(36864)=76then50
40 printchr$(147)"please load petsciipanic first":end
50 dv=peek(186):ifdv<8thendv=8
60 sb=50176:cb=55296:t=0:p=0:wn=0:cy=0:k$="":dimgc%(8),gr%(8),gk%(8)
70 s2=peek(40705):mv=3:ev=peek(40707)-1:ifev<0orev>15thenev=15
80 ifs2=0thenev=15
90 poke53280,0:poke53281,0:poke53269,0:poke56578,peek(56578)or3
100 poke56576,peek(56576)and252:poke53272,18:poke648,196
110 poke53270,216:poke53282,13:poke53283,8:printchr$(147)chr$(8);
120 poke54296,16+ev:ifs2thenpoke54328,mv
130 ifpeek(789)<>144thenpoke36879,mv:poke36870,s2:sys36864
140 r=0:c=3:gosub390:printchr$(5)"petscii panic! v05 - custom glyphs"
150 fori=0to8:readn$,g,w,h,k,r,c:gc%(i)=g:gr%(i)=r:gk%(i)=c:a=sb+r*40+c
160 pokea,g:pokea+5120,k:ifw=2thenpokea+1,g+1:pokea+1+5120,k
170 ifh=2thenpokea+40,g+w:pokea+40+5120,k
180 ifh=2andw=2thenpokea+41,g+3:pokea+41+5120,k
190 ifg>86andg<90thenpokea+40,94
200 r=r+3:gosub390:printchr$(30)n$:next
210 poke55671,9:rem lawnmower handle white
220 r=20:c=6:gosub390:printchr$(5)"now playing: "chr$(30)"backyard panic"
230 r=22:c=1:gosub390:printchr$(5);
240 ifs2thenprint"m/e "chr$(30)"- music/sound volume   ";
250 ifs2=0thenprint"v "chr$(30)"- volume   ";
260 printchr$(5)"q "chr$(30)"- quit";
270 getk$:ifk$="q"then470
280 ifk$="m"ork$="e"ork$="v"thengosub400
290 ifti<tthen270
300 t=ti+25:p=(p+1)and3:wn=(wn+1)*-(wn<11)
310 a=sb+gr%(0)*40+gk%(0)+1:pokea,66+3*(pand1)
320 fori=6to8:a=sb+gr%(i)*40+gk%(i):pokea,gc%(i)+3*-(p>1):pokea+40,94+(pand1)
330 next
340 a=sb+gr%(2)*40+gk%(2):g=96+4*int(wn/4):gosub380
350 a=sb+gr%(3)*40+gk%(3):cy=int(wn/4):g=108+4*cy:gosub380
360 k=10-5*(cy=2):pokea+5120,k:pokea+1+5120,k:pokea+40+5120,k:pokea+41+5120,k
370 goto270
380 pokea,g:pokea+1,g+1:pokea+40,g+2:pokea+41,g+3:return
390 poke214,r:poke211,c:sys58732:return
400 ifs2=0andk$<>"v"thenreturn
410 ifs2andk$="v"thenreturn
420 ifk$="m"thenmv=(mv+3)*-(mv<15):poke54328,mv:poke36879,mv:poke40706,mv+1
430 ifk$<>"m"thenev=(ev+3)*-(ev<15):poke54296,16+ev:poke40707,ev+1
440 r=23:c=1:gosub390:x=mv:ifk$<>"m"thenx=ev
450 x=int(x/3+.5):printchr$(5)mid$("music   sound fx",1-8*(k$<>"m"),8)" ";
460 printchr$(18)left$("     ",x)chr$(146)left$(".....",5-x)" ";:return
470 poke53270,200:poke56576,peek(56576)or3:poke53272,21:poke648,4
480 printchr$(147)chr$(5)"loading petscii panic! ...":sys36867:poke40709,82
490 load"petsciipanic",dv
500 data "peashooter",65,2,2,13,3,2
510 data "sunflower",70,2,2,15,3,15
520 data "wall-nut",96,2,2,9,3,28
530 data "cherry bomb",108,2,2,10,9,2
540 data "lawnmower",120,2,2,10,9,15
550 data "pea",81,1,1,13,9,28
560 data "zombie",87,1,2,9,15,2
570 data "conehead",88,1,2,9,15,15
580 data "buckethead",89,1,2,11,15,28
