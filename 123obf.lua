local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\67\245","\102\109\219\161\211"),function(v42) if (v9(v42,2)==81) then local v103=0;while true do if (v103==0) then v30=v8(v11(v42,2 -1 ,2 -1 ));return "";end end else local v104=0;local v105;while true do if (v104==0) then v105=v10(v8(v42,16));if v30 then local v123=0;local v124;while true do if (v123==0) then v124=v13(v105,v30);v30=nil;v123=1;end if (v123==1) then return v124;end end else return v105;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v106=0;local v107;while true do if (v106==0) then v107=(v43/((3 -1)^(v44-1)))%((4 -2)^(((v45-1) -(v44-1)) + 1)) ;return v107-(v107%1) ;end end else local v108=0;local v109;while true do if (0==v108) then v109=2^(v44-1) ;return (((v43%(v109 + v109))>=v109) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (1==v46) then return v47;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,651 -(555 + 64) )==1) and  -1) or 1 ;v55=3;end if (0==v55) then v56=v34();v57=v34();v55=1;end if (v55==1) then v58=1;v59=(v31(v57,1,20) * (2^32)) + v56 ;v55=2;end if (3==v55) then if (v60==0) then if (v59==0) then return v61 * 0 ;else local v125=0;while true do if (v125==0) then v60=1;v58=0;break;end end end elseif (v60==2047) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/(2^52))) ;end end end local function v36(v62) local v63;if  not v62 then local v110=0;while true do if (v110==0) then v62=v34();if (v62==0) then return "";end break;end end end v63=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;local v64={};for v78=932 -(857 + 74) , #v63 do v64[v78]=v10(v9(v11(v63,v78,v78)));end return v14(v64);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v80=1,v69 do local v81=v32();local v82;if (v81==1) then v82=v32()~=0 ;elseif (v81==(570 -(367 + 201))) then v82=v35();elseif (v81==3) then v82=v36();end v70[v80]=v82;end v68[3]=v32();for v84=1,v34() do local v85=0;local v86;while true do if (v85==0) then v86=v32();if (v31(v86,1,1)==0) then local v119=0;local v120;local v121;local v122;while true do if (v119==1) then v122={v33(),v33(),nil,nil};if (v120==0) then local v127=0;while true do if (v127==0) then v122[3]=v33();v122[4]=v33();break;end end elseif (v120==1) then v122[3]=v34();elseif (v120==(1 + 1)) then v122[3]=v34() -(2^16) ;elseif (v120==3) then local v138=0;while true do if (v138==0) then v122[3]=v34() -(2^16) ;v122[4]=v33();break;end end end v119=2;end if (3==v119) then if (v31(v121,3,880 -(282 + 595) )==1) then v122[4]=v70[v122[4]];end v65[v84]=v122;break;end if (v119==0) then v120=v31(v86,2,3);v121=v31(v86,4,6);v119=1;end if (v119==2) then if (v31(v121,1,1)==1) then v122[2]=v70[v122[2]];end if (v31(v121,2,2)==1) then v122[3]=v70[v122[1 + 2 ]];end v119=3;end end end break;end end end for v87=1,v34() do v66[v87-1 ]=v39();end return v68;end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2];local v77=v72[1640 -(1523 + 114) ];return function(...) local v89=v75;local v90=v76;local v91=v77;local v92=v38;local v93=1;local v94= -1;local v95={};local v96={...};local v97=v20("#",...) -1 ;local v98={};local v99={};for v111=0,v97 do if (v111>=v91) then v95[v111-v91 ]=v96[v111 + 1 + 0 ];else v99[v111]=v96[v111 + (1 -0) ];end end local v100=(v97-v91) + 1 ;local v101;local v102;while true do local v112=0;while true do if (v112==1) then if (v102<=55) then if (v102<=27) then if (v102<=13) then if (v102<=(1071 -(68 + 997))) then if (v102<=(1272 -(226 + 1044))) then if (v102<=0) then local v139=v101[8 -6 ];do return v21(v99,v139,v94);end elseif (v102==1) then do return;end else v99[v101[119 -(32 + 85) ]]=v99[v101[3]] + v101[4] ;end elseif (v102<=4) then if (v102>3) then if (v99[v101[2 + 0 ]]<v99[v101[4]]) then v93=v93 + 1 ;else v93=v101[3];end else v99[v101[2]]=v99[v101[3]][v99[v101[4]]];end elseif (v102>5) then if (v99[v101[2]]==v101[4]) then v93=v93 + 1 ;else v93=v101[3];end else do return v99[v101[1 + 1 ]];end end elseif (v102<=9) then if (v102<=7) then v99[v101[2]]=v74[v101[3]];elseif (v102==8) then local v178=0;local v179;local v180;local v181;while true do if (v178==2) then for v455=1,v101[4] do v93=v93 + 1 ;local v456=v89[v93];if (v456[1]==51) then v181[v455-1 ]={v99,v456[3]};else v181[v455-(351 -(87 + 263)) ]={v73,v456[3]};end v98[ #v98 + 1 ]=v181;end v99[v101[2]]=v40(v179,v180,v74);break;end if (v178==0) then v179=v90[v101[960 -(892 + 65) ]];v180=nil;v178=1;end if (v178==1) then v181={};v180=v18({},{[v7("\79\37\52\196\116\31\37","\170\16\122\93")]=function(v458,v459) local v460=0;local v461;while true do if (v460==0) then v461=v181[v459];return v461[1][v461[4 -2 ]];end end end,[v7("\23\196\160\76\63\242\160\77\45\227","\41\72\155\206")]=function(v462,v463,v464) local v465=v181[v463];v465[1 -0 ][v465[3 -1 ]]=v464;end});v178=2;end end else v99[v101[2]]=v101[3]~=0 ;end elseif (v102<=11) then if (v102==10) then if (v101[2]<=v99[v101[184 -(67 + 113) ]]) then v93=v93 + 1 ;else v93=v101[3];end elseif (v99[v101[2]]==v101[4]) then v93=v93 + 1 ;else v93=v101[3 + 0 ];end elseif (v102==(28 -16)) then local v183=v101[2];local v184={v99[v183](v99[v183 + 1 ])};local v185=0;for v357=v183,v101[4] do v185=v185 + 1 ;v99[v357]=v184[v185];end else v99[v101[2]]=v40(v90[v101[3]],nil,v74);end elseif (v102<=(15 + 5)) then if (v102<=16) then if (v102<=(55 -41)) then local v142=0;local v143;local v144;while true do if (v142==0) then v143=v101[2];v144={};v142=1;end if (v142==1) then for v381=1, #v98 do local v382=0;local v383;while true do if (v382==0) then v383=v98[v381];for v509=0, #v383 do local v510=0;local v511;local v512;local v513;while true do if (v510==0) then v511=v383[v509];v512=v511[1];v510=1;end if (v510==1) then v513=v511[2];if ((v512==v99) and (v513>=v143)) then v144[v513]=v512[v513];v511[953 -(802 + 150) ]=v144;end break;end end end break;end end end break;end end elseif (v102==15) then local v187=0;local v188;while true do if (v187==0) then v188=v101[5 -3 ];v99[v188](v21(v99,v188 + 1 ,v94));break;end end elseif (v101[2]==v99[v101[4]]) then v93=v93 + 1 ;else v93=v101[3];end elseif (v102<=18) then if (v102==17) then local v189=0;local v190;while true do if (v189==0) then v190=v101[2];v99[v190]=v99[v190]();break;end end else v99[v101[3 -1 ]]=v101[3];end elseif (v102==19) then v99[v101[2 + 0 ]]=v101[3]~=(997 -(915 + 82)) ;v93=v93 + 1 ;else local v194=0;local v195;local v196;local v197;while true do if (v194==0) then v195=v101[2];v196={v99[v195](v21(v99,v195 + 1 ,v101[3]))};v194=1;end if (v194==1) then v197=0;for v467=v195,v101[4] do local v468=0;while true do if (v468==0) then v197=v197 + 1 ;v99[v467]=v196[v197];break;end end end break;end end end elseif (v102<=23) then if (v102<=21) then local v145=0;local v146;local v147;local v148;while true do if (v145==2) then for v385=1,v101[4] do local v386=0;local v387;while true do if (v386==0) then v93=v93 + 1 ;v387=v89[v93];v386=1;end if (1==v386) then if (v387[1]==51) then v148[v385-1 ]={v99,v387[3]};else v148[v385-1 ]={v73,v387[3]};end v98[ #v98 + 1 ]=v148;break;end end end v99[v101[2]]=v40(v146,v147,v74);break;end if (v145==0) then v146=v90[v101[3]];v147=nil;v145=1;end if (v145==1) then v148={};v147=v18({},{[v7("\12\121\115\90\10\73\94","\98\83\38\26\52\110\44\38")]=function(v388,v389) local v390=0;local v391;while true do if (v390==0) then v391=v148[v389];return v391[1][v391[2]];end end end,[v7("\24\203\88\18\48\253\88\19\34\236","\119\71\148\54")]=function(v392,v393,v394) local v395=v148[v393];v395[1][v395[2]]=v394;end});v145=2;end end elseif (v102>(62 -40)) then v99[v101[2]][v101[3]]=v99[v101[4]];else local v200=0;local v201;local v202;local v203;while true do if (v200==0) then v201=v101[2];v202={v99[v201](v21(v99,v201 + 1 + 0 ,v94))};v200=1;end if (v200==1) then v203=0;for v469=v201,v101[4] do local v470=0;while true do if (v470==0) then v203=v203 + 1 ;v99[v469]=v202[v203];break;end end end break;end end end elseif (v102<=25) then if (v102>24) then v99[v101[2 -0 ]]=v99[v101[3]][v101[1191 -(1069 + 118) ]];else v99[v101[2]]=v99[v101[3]]%v99[v101[4]] ;end elseif (v102>(58 -32)) then v99[v101[2]][v99[v101[3]]]=v99[v101[4]];else v99[v101[3 -1 ]]={};end elseif (v102<=41) then if (v102<=34) then if (v102<=30) then if (v102<=28) then local v149=0;local v150;while true do if (0==v149) then v150=v101[1 + 1 ];v99[v150]=v99[v150]();break;end end elseif (v102==29) then local v210=v101[2];local v211=v99[v101[3]];v99[v210 + 1 ]=v211;v99[v210]=v211[v101[4]];else for v365=v101[3 -1 ],v101[3 + 0 ] do v99[v365]=nil;end end elseif (v102<=(823 -(368 + 423))) then if (v102>31) then v99[v101[2]]=v99[v101[3]]%v99[v101[4]] ;else v73[v101[3]]=v99[v101[2]];end elseif (v102>33) then local v218=0;local v219;while true do if (v218==0) then v219=v101[2];v99[v219](v99[v219 + 1 ]);break;end end else local v220=0;local v221;while true do if (v220==0) then v221=v101[2];v99[v221](v21(v99,v221 + 1 ,v94));break;end end end elseif (v102<=37) then if (v102<=35) then v99[v101[2]]=v99[v101[9 -6 ]]%v101[4] ;elseif (v102==36) then v99[v101[20 -(10 + 8) ]]=v101[3] + v99[v101[4]] ;else v74[v101[3]]=v99[v101[2]];end elseif (v102<=39) then if (v102>38) then local v225=0;local v226;while true do if (v225==0) then v226=v101[2];do return v21(v99,v226,v226 + v101[3] );end break;end end else local v227=0;local v228;while true do if (v227==0) then v228=v101[2];v99[v228]=v99[v228](v21(v99,v228 + 1 ,v101[3]));break;end end end elseif (v102>(153 -113)) then v99[v101[2]]=v101[3];else v99[v101[2]]={};end elseif (v102<=48) then if (v102<=44) then if (v102<=42) then v73[v101[3]]=v99[v101[2]];elseif (v102==43) then v99[v101[2]]=v99[v101[3]] -v99[v101[4]] ;else local v233=v101[2];v99[v233]=v99[v233](v21(v99,v233 + 1 ,v94));end elseif (v102<=46) then if (v102>45) then v99[v101[2]]=v73[v101[3]];else local v237=v101[2];local v238=v101[4];local v239=v237 + 2 ;local v240={v99[v237](v99[v237 + (443 -(416 + 26)) ],v99[v239])};for v367=1,v238 do v99[v239 + v367 ]=v240[v367];end local v241=v240[3 -2 ];if v241 then local v397=0;while true do if (0==v397) then v99[v239]=v241;v93=v101[3];break;end end else v93=v93 + 1 ;end end elseif (v102>47) then if (v99[v101[2]]~=v99[v101[4]]) then v93=v93 + 1 + 0 ;else v93=v101[3];end else local v242=0;local v243;while true do if (v242==0) then v243=v101[2];v99[v243](v21(v99,v243 + 1 ,v101[3]));break;end end end elseif (v102<=51) then if (v102<=49) then local v154=v101[2];local v155=v99[v154];for v171=v154 + 1 ,v94 do v15(v155,v99[v171]);end elseif (v102>50) then v99[v101[3 -1 ]]=v99[v101[3]];else local v246=0;local v247;local v248;local v249;while true do if (v246==0) then v247=v101[2];v248=v99[v247 + 2 ];v246=1;end if (v246==1) then v249=v99[v247] + v248 ;v99[v247]=v249;v246=2;end if (v246==2) then if (v248>0) then if (v249<=v99[v247 + 1 ]) then v93=v101[3];v99[v247 + 3 ]=v249;end elseif (v249>=v99[v247 + 1 ]) then v93=v101[3];v99[v247 + 3 ]=v249;end break;end end end elseif (v102<=53) then if (v102==52) then do return v99[v101[2]];end else v99[v101[440 -(145 + 293) ]]=v40(v90[v101[3]],nil,v74);end elseif (v102==54) then local v251=0;local v252;local v253;local v254;while true do if (v251==0) then v252=v101[2];v253={v99[v252](v21(v99,v252 + (431 -(44 + 386)) ,v94))};v251=1;end if (v251==1) then v254=1486 -(998 + 488) ;for v471=v252,v101[4] do local v472=0;while true do if (v472==0) then v254=v254 + 1 ;v99[v471]=v253[v254];break;end end end break;end end else local v255=0;local v256;local v257;while true do if (v255==0) then v256=v101[2];v257=v99[v101[3]];v255=1;end if (v255==1) then v99[v256 + 1 ]=v257;v99[v256]=v257[v101[4]];break;end end end elseif (v102<=83) then if (v102<=(22 + 47)) then if (v102<=62) then if (v102<=58) then if (v102<=56) then v99[v101[2]]=v73[v101[3]];elseif (v102==57) then do return v99[v101[2]]();end else local v258=0;local v259;while true do if (v258==0) then v259=v99[v101[4]];if v259 then v93=v93 + 1 ;else local v502=0;while true do if (v502==0) then v99[v101[2 + 0 ]]=v259;v93=v101[3];break;end end end break;end end end elseif (v102<=(832 -(201 + 571))) then if (v102>59) then if  not v99[v101[2]] then v93=v93 + 1 ;else v93=v101[3];end else local v260=v101[2];v99[v260](v21(v99,v260 + 1 ,v101[3]));end elseif (v102==61) then v93=v101[3];else local v262=v101[2];do return v99[v262](v21(v99,v262 + 1 ,v101[3]));end end elseif (v102<=(1203 -(116 + 1022))) then if (v102<=63) then local v158=0;local v159;while true do if (0==v158) then v159=v101[2];do return v99[v159](v21(v99,v159 + 1 ,v101[3]));end break;end end elseif (v102==64) then v93=v101[3];else for v371=v101[2],v101[3] do v99[v371]=nil;end end elseif (v102<=67) then if (v102>(274 -208)) then v99[v101[2]]= #v99[v101[3]];else local v265=0;local v266;while true do if (v265==0) then v266=v101[2 + 0 ];do return v99[v266],v99[v266 + 1 ];end break;end end end elseif (v102==(248 -180)) then v99[v101[2]]= #v99[v101[3]];else local v268=0;local v269;while true do if (v268==0) then v269=v99[v101[14 -10 ]];if v269 then v93=v93 + 1 ;else local v503=0;while true do if (v503==0) then v99[v101[2]]=v269;v93=v101[3];break;end end end break;end end end elseif (v102<=76) then if (v102<=(931 -(814 + 45))) then if (v102<=70) then if v99[v101[4 -2 ]] then v93=v93 + 1 ;else v93=v101[3];end elseif (v102>71) then v99[v101[2]]=v101[3] + v99[v101[1 + 3 ]] ;else v99[v101[2]]=v99[v101[3]];end elseif (v102<=74) then if (v102==73) then v99[v101[2]]=v99[v101[3]] + v101[4] ;else local v275=0;local v276;local v277;local v278;local v279;while true do if (v275==0) then v276=v101[2];v277,v278=v92(v99[v276](v21(v99,v276 + 1 ,v101[3])));v275=1;end if (v275==2) then for v473=v276,v94 do v279=v279 + 1 ;v99[v473]=v277[v279];end break;end if (v275==1) then v94=(v278 + v276) -1 ;v279=0;v275=2;end end end elseif (v102==75) then v99[v101[2]]=v101[3]~=0 ;else local v281=0;local v282;local v283;local v284;while true do if (1==v281) then v284=v99[v282 + 2 ];if (v284>0) then if (v283>v99[v282 + 1 ]) then v93=v101[3];else v99[v282 + 3 ]=v283;end elseif (v283<v99[v282 + 1 ]) then v93=v101[3];else v99[v282 + 2 + 1 ]=v283;end break;end if (0==v281) then v282=v101[2];v283=v99[v282];v281=1;end end end elseif (v102<=79) then if (v102<=77) then local v160=0;local v161;local v162;local v163;while true do if (v160==0) then v161=v101[2];v162=v99[v161 + 2 ];v160=1;end if (v160==2) then if (v162>0) then if (v163<=v99[v161 + 1 ]) then local v504=0;while true do if (v504==0) then v93=v101[3];v99[v161 + 3 ]=v163;break;end end end elseif (v163>=v99[v161 + 1 ]) then v93=v101[3];v99[v161 + 3 ]=v163;end break;end if (v160==1) then v163=v99[v161] + v162 ;v99[v161]=v163;v160=2;end end elseif (v102==78) then v74[v101[3]]=v99[v101[887 -(261 + 624) ]];elseif (v99[v101[2]]~=v99[v101[4]]) then v93=v93 + 1 ;else v93=v101[3];end elseif (v102<=81) then if (v102==80) then do return v99[v101[2]]();end elseif v99[v101[2]] then v93=v93 + 1 ;else v93=v101[3];end elseif (v102>(145 -63)) then local v287=0;local v288;while true do if (v287==0) then v288=v101[2];v99[v288]=v99[v288](v99[v288 + 1 ]);break;end end else v99[v101[2]]=v101[3]~=0 ;v93=v93 + 1 ;end elseif (v102<=97) then if (v102<=90) then if (v102<=(1166 -(1020 + 60))) then if (v102<=84) then v99[v101[2]]=v99[v101[3]][v99[v101[4]]];elseif (v102==85) then local v290=0;local v291;local v292;local v293;while true do if (v290==0) then v291=v101[2];v292={v99[v291](v99[v291 + (1424 -(630 + 793)) ])};v290=1;end if (v290==1) then v293=0;for v476=v291,v101[4] do v293=v293 + 1 ;v99[v476]=v292[v293];end break;end end else do return;end end elseif (v102<=88) then if (v102>(294 -207)) then local v294=0;local v295;while true do if (v294==0) then v295=v101[9 -7 ];v99[v295]=v99[v295](v99[v295 + 1 ]);break;end end else v99[v101[2]][v101[3]]=v99[v101[4]];end elseif (v102==89) then v99[v101[2]][v99[v101[3]]]=v99[v101[4]];elseif (v101[1 + 1 ]<=v99[v101[13 -9 ]]) then v93=v93 + 1 ;else v93=v101[3];end elseif (v102<=93) then if (v102<=91) then local v166=v101[2];local v167=v101[4];local v168=v166 + (1749 -(760 + 987)) ;local v169={v99[v166](v99[v166 + 1 ],v99[v168])};for v172=1,v167 do v99[v168 + v172 ]=v169[v172];end local v170=v169[1];if v170 then local v300=0;while true do if (v300==0) then v99[v168]=v170;v93=v101[769 -(745 + 21) ];break;end end else v93=v93 + 1 ;end elseif (v102==92) then local v301=0;local v302;while true do if (v301==0) then v302=v101[2];v99[v302](v99[v302 + 1 ]);break;end end else local v303=0;local v304;local v305;local v306;local v307;while true do if (v303==1) then v94=(v306 + v304) -1 ;v307=0;v303=2;end if (v303==2) then for v479=v304,v94 do v307=v307 + 1 ;v99[v479]=v305[v307];end break;end if (v303==0) then v304=v101[2];v305,v306=v92(v99[v304](v21(v99,v304 + 1 ,v94)));v303=1;end end end elseif (v102<=95) then if (v102==(33 + 61)) then local v308=0;local v309;local v310;local v311;while true do if (1==v308) then v311=0;for v482=v309,v101[4] do local v483=0;while true do if (v483==0) then v311=v311 + 1 ;v99[v482]=v310[v311];break;end end end break;end if (v308==0) then v309=v101[2];v310={v99[v309](v21(v99,v309 + 1 ,v101[3]))};v308=1;end end else v99[v101[2]]=v99[v101[3]]%v101[4] ;end elseif (v102>96) then local v313=0;local v314;while true do if (v313==0) then v314=v101[2];v99[v314]=v99[v314](v21(v99,v314 + 1 ,v94));break;end end else local v315=0;local v316;while true do if (v315==0) then v316=v101[2];do return v21(v99,v316,v94);end break;end end end elseif (v102<=104) then if (v102<=100) then if (v102<=98) then if  not v99[v101[2]] then v93=v93 + 1 ;else v93=v101[3];end elseif (v102>99) then local v318=0;local v319;local v320;local v321;local v322;while true do if (1==v318) then v94=(v321 + v319) -1 ;v322=0;v318=2;end if (v318==0) then v319=v101[2];v320,v321=v92(v99[v319](v99[v319 + 1 ]));v318=1;end if (v318==2) then for v484=v319,v94 do v322=v322 + 1 ;v99[v484]=v320[v322];end break;end end else local v323=0;local v324;local v325;local v326;local v327;while true do if (v323==0) then v324=v101[5 -3 ];v325,v326=v92(v99[v324](v99[v324 + 1 ]));v323=1;end if (2==v323) then for v487=v324,v94 do local v488=0;while true do if (v488==0) then v327=v327 + 1 ;v99[v487]=v325[v327];break;end end end break;end if (v323==1) then v94=(v326 + v324) -1 ;v327=0;v323=2;end end end elseif (v102<=102) then if (v102>101) then v99[v101[2]]=v99[v101[3]] -v99[v101[4]] ;elseif (v101[2]==v99[v101[4]]) then v93=v93 + 1 ;else v93=v101[11 -8 ];end elseif (v102>103) then local v329=0;local v330;local v331;while true do if (v329==1) then for v489=1, #v98 do local v490=0;local v491;while true do if (v490==0) then v491=v98[v489];for v550=0, #v491 do local v551=0;local v552;local v553;local v554;while true do if (v551==0) then v552=v491[v550];v553=v552[1];v551=1;end if (v551==1) then v554=v552[2];if ((v553==v99) and (v554>=v330)) then local v564=0;while true do if (v564==0) then v331[v554]=v553[v554];v552[1 + 0 ]=v331;break;end end end break;end end end break;end end end break;end if (0==v329) then v330=v101[2];v331={};v329=1;end end else local v332=v101[2];local v333=v99[v332];for v376=v332 + 1 ,v94 do v15(v333,v99[v376]);end end elseif (v102<=108) then if (v102<=106) then if (v102>105) then local v334=v101[2 + 0 ];do return v99[v334],v99[v334 + 1 ];end else local v335=0;local v336;local v337;local v338;while true do if (v335==1) then v338=v99[v336 + 2 ];if (v338>0) then if (v337>v99[v336 + 1 ]) then v93=v101[3];else v99[v336 + 3 ]=v337;end elseif (v337<v99[v336 + (1056 -(87 + 968)) ]) then v93=v101[3];else v99[v336 + 3 ]=v337;end break;end if (0==v335) then v336=v101[2];v337=v99[v336];v335=1;end end end elseif (v102==107) then v99[v101[2]]=v99[v101[3]][v101[4]];else local v341=v101[2];v99[v341]=v99[v341](v21(v99,v341 + (4 -3) ,v101[3]));end elseif (v102<=110) then if (v102==109) then local v343=0;local v344;local v345;local v346;local v347;while true do if (v343==0) then v344=v101[2];v345,v346=v92(v99[v344](v21(v99,v344 + 1 ,v94)));v343=1;end if (v343==2) then for v492=v344,v94 do local v493=0;while true do if (v493==0) then v347=v347 + 1 ;v99[v492]=v345[v347];break;end end end break;end if (v343==1) then v94=(v346 + v344) -1 ;v347=0;v343=2;end end elseif (v99[v101[2]]<v99[v101[4]]) then v93=v93 + 1 ;else v93=v101[3];end elseif (v102==(101 + 10)) then local v348=0;local v349;local v350;local v351;local v352;while true do if (v348==2) then for v494=v349,v94 do local v495=0;while true do if (v495==0) then v352=v352 + 1 ;v99[v494]=v350[v352];break;end end end break;end if (v348==0) then v349=v101[2];v350,v351=v92(v99[v349](v21(v99,v349 + 1 ,v101[3])));v348=1;end if (v348==1) then v94=(v351 + v349) -1 ;v352=0;v348=2;end end else v99[v101[2]]=v74[v101[3]];end v93=v93 + 1 ;break;end if (v112==0) then v101=v89[v93];v102=v101[1];v112=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012703Q00013Q00206B5Q0002001270000100013Q00206B000100010003001270000200013Q00206B000200020004001270000300053Q00063C0003000A000100010004403Q000A0001001270000300063Q00206B000400030007001270000500083Q00206B000500050009001270000600083Q00206B00060006000A00060800073Q000100062Q00333Q00064Q00338Q00333Q00044Q00333Q00014Q00333Q00024Q00333Q00053Q001270000800013Q00206B00080008000B0012700009000C3Q001270000A000D3Q000608000B0001000100052Q00333Q00074Q00333Q00094Q00333Q00084Q00333Q000A4Q00333Q000B4Q0047000C000B4Q0039000C00016Q000C6Q00013Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q002800025Q002Q12000300014Q004400045Q002Q12000500013Q00044C0003002100012Q003800076Q0047000800024Q0038000900014Q0038000A00024Q0038000B00034Q0038000C00044Q0047000D6Q0047000E00063Q002049000F000600012Q006F000C000F4Q002C000B3Q00022Q0038000C00034Q0038000D00044Q0047000E00014Q0044000F00014Q0018000F0006000F001048000F0001000F2Q0044001000014Q00180010000600100010480010000100100020490010001000012Q006F000D00104Q005D000C6Q002C000A3Q000200205F000A000A00022Q00640009000A4Q002100073Q000100044D0003000500012Q0038000300054Q0047000400024Q003E000300046Q00036Q00013Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006085Q000100012Q002E8Q0038000100014Q0038000200024Q0038000300024Q002800046Q0038000500034Q004700066Q001E000700074Q006F000500074Q003100043Q000100206B000400040001002Q12000500024Q0026000300050002002Q12000400034Q006F000200044Q002C00013Q000200260600010018000100040004403Q001800012Q004700016Q002800026Q003E000100026Q00015Q0004403Q001B00012Q0038000100044Q0039000100016Q00016Q00013Q00013Q00013Q00123Q0003093Q00776F726B737061636503083Q002Q5F5448494E4753030A3Q00427265616B61626C657303103Q0052616E646F6D436F696E4E756D626572030A3Q00506C6179657250657473030F3Q0070617274756E646572706C6179657203083Q004973496E5A6F6E6503143Q00476574436C6F73657374427265616B61626C6573030C3Q00636C6F73657374636F696E7303043Q007469636B03073Q0067657467656E7603053Q005253436F6E03043Q0067616D65030B3Q00F5417E548A1BD5427917BC03063Q007EA7341074D9030D3Q0052656E6465725374652Q70656403073Q00436F2Q6E656374026Q00F03F01313Q0006513Q002F00013Q0004403Q002F0001001270000100013Q00206B00010001000200206B0001000100032Q002800026Q002800036Q002800045Q00020D00055Q00124E000500043Q00060800050001000100022Q002E8Q00333Q00033Q00124E000500053Q00060800050002000100012Q002E7Q00124E000500063Q00060800050003000100012Q002E7Q00124E000500073Q00060800050004000100032Q00333Q00024Q00333Q00014Q002E7Q00124E000500083Q00060800050005000100022Q00333Q00044Q002E7Q00124E000500093Q0012700005000A4Q001C0005000100020012700006000B4Q001C0006000100020012700007000D4Q003800085Q002Q120009000E3Q002Q12000A000F4Q00260008000A00022Q005400070007000800206B00070007001000203700070007001100060800090006000100012Q00333Q00054Q00260007000900020010170006000C00072Q000E00015Q0004403Q0030000100206B00013Q00122Q00013Q00013Q00073Q00043Q00028Q00026Q00F03F03043Q006D61746803063Q0072616E646F6D011F3Q002Q12000100014Q001E000200033Q00260600010018000100020004403Q0018000100260600020012000100010004403Q001200012Q004400045Q0026060004000B000100010004403Q000B00012Q001E000400044Q0005000400023Q001270000400033Q00206B000400040004002Q12000500024Q004400066Q00260004000600022Q0047000300043Q002Q12000200023Q00260600020004000100020004403Q000400012Q005400043Q00032Q0005000400023Q0004403Q000400010004403Q001E000100260600010002000100010004403Q00020001002Q12000200014Q001E000300033Q002Q12000100023Q0004403Q000200012Q00013Q00017Q000D3Q00028Q00026Q00F03F03053Q007061697273030B3Q004765744368696C6472656E2Q033Q0049734103053Q001A16AECE3003083Q00EB5779CAAB5C478603053Q007461626C6503063Q00696E7365727403053Q00636C65617203093Q00776F726B737061636503083Q002Q5F5448494E475303043Q005065747300403Q002Q123Q00014Q001E000100023Q0026063Q0007000100010004403Q00070001002Q12000100014Q001E000200023Q002Q123Q00023Q0026063Q0002000100020004403Q00020001002Q12000300013Q0026060003000A000100010004403Q000A0001000E6500020028000100030004403Q00280001002Q12000400013Q0026060004000F000100010004403Q000F0001001270000500033Q0020370006000200042Q0064000600074Q003600053Q00070004403Q00230001002037000A000900052Q0038000C5Q002Q12000D00063Q002Q12000E00074Q006F000C000E4Q002C000A3Q0002000651000A002300013Q0004403Q00230001001270000A00083Q00206B000A000A00092Q0038000B00014Q0047000C00094Q003B000A000C000100062D00050016000100020004403Q001600012Q0038000500014Q0005000500023Q0004403Q000F000100260600030009000100010004403Q00090001002Q12000400013Q0026060004002F000100020004403Q002F0001002Q12000300023Q0004403Q000900010026060004002B000100010004403Q002B0001001270000500083Q00206B00050005000A2Q0038000600014Q00220005000200010012700005000B3Q00206B00050005000C00206B00020005000D002Q12000400023Q0004403Q002B00010004403Q000900010004403Q000A00010004403Q000900010004403Q003F00010004403Q000200012Q00013Q00017Q000E3Q00028Q00026Q00F03F03093Q0043686172616374657203043Q0067616D6503093Q00576F726B7370616365030D3Q0046696E64506172744F6E52617903073Q00566563746F72332Q033Q006E6577025Q00407FC02Q033Q0052617903083Q00506F736974696F6E030E3Q0046696E6446697273744368696C6403103Q00A03CCC2D3E115B8C1BCE23242E539A3D03073Q0032E849A14C507E014B3Q002Q12000100014Q001E000200033Q00260600010045000100020004403Q004500010006513Q004200013Q0004403Q0042000100206B00043Q00030006510004004200013Q0004403Q00420001002Q12000400014Q001E000500063Q00260600040036000100020004403Q003600010006510006004200013Q0004403Q00420001002Q12000700014Q001E000800093Q0026060007001C000100020004403Q001C0001001270000A00043Q00206B000A000A0005002037000A000A00062Q0047000C00094Q0047000D00054Q005E000A000D000B2Q00470003000B4Q00470002000A3Q0004403Q0042000100260600070011000100010004403Q00110001002Q12000A00013Q002606000A0023000100020004403Q00230001002Q12000700023Q0004403Q00110001000E650001001F0001000A0004403Q001F0001001270000B00073Q00206B000B000B0008002Q12000C00013Q002Q12000D00093Q002Q12000E00014Q0026000B000E00022Q00470008000B3Q001270000B000A3Q00206B000B000B000800206B000C0006000B2Q0047000D00084Q0026000B000D00022Q00470009000B3Q002Q12000A00023Q0004403Q001F00010004403Q001100010004403Q004200010026060004000B000100010004403Q000B000100206B00053Q000300203700070005000C2Q003800095Q002Q12000A000D3Q002Q12000B000E4Q006F0009000B4Q002C00073Q00022Q0047000600073Q002Q12000400023Q0004403Q000B00012Q0047000400024Q0047000500034Q006A000400033Q000E6500010002000100010004403Q000200012Q001E000200033Q002Q12000100023Q0004403Q000200012Q00013Q00017Q00083Q00028Q00026Q00F03F030F3Q0070617274756E646572706C6179657203043Q004E616D6503063Q006A54ADE503D603083Q00B9223DD9876CAE3E030A3Q0055C1925F5CCC8D5159D603043Q001E1793D7012A3Q002Q12000100014Q001E000200033Q000E6500020023000100010004403Q0023000100260600020004000100010004403Q00040001002Q12000400013Q00260600040007000100010004403Q00070001001270000500034Q004700066Q00530005000200022Q0047000300053Q00063A0005001F000100030004403Q001F000100206B0005000300042Q003800065Q002Q12000700053Q002Q12000800064Q00260006000800020006300005001E000100060004403Q001E000100206B0005000300042Q003800065Q002Q12000700073Q002Q12000800084Q00260006000800020006300005001E000100060004403Q001E00012Q005200056Q004B000500014Q0005000500023Q0004403Q000700010004403Q000400010004403Q0029000100260600010002000100010004403Q00020001002Q12000200014Q001E000300033Q002Q12000100023Q0004403Q000200012Q00013Q00017Q001A3Q00028Q00026Q00F03F027Q0040026Q00594003053Q007061697273030B3Q004765744368696C6472656E2Q033Q0049734103053Q00C425CF1DA203073Q00D6894AAB78CE5303053Q007461626C6503063Q00696E7365727403043Q004E616D65030A3Q00576F726C645069766F7403083Q00506F736974696F6E03093Q004D61676E697475646503093Q00776F726B737061636503083Q002Q5F5448494E475303143Q002Q5F494E5354414E43455F434F4E5441494E455203063Q00416374697665030E3Q0046696E6446697273744368696C64030A3Q00ACE23B53FBAFB9F13B5903063Q00C7EB90523D98025Q00E0754003053Q00636C65617203093Q0043686172616374657203103Q0048756D616E6F6964522Q6F745061727401533Q002Q12000100014Q001E000200043Q0026060001004C000100020004403Q004C00012Q001E000400043Q00260600020009000100030004403Q000900012Q003800056Q0005000500023Q00260600020040000100020004403Q00400001002Q12000400043Q001270000500054Q0038000600013Q0020370006000600062Q0064000600074Q003600053Q00070004403Q003D0001002037000A000900072Q0038000C00023Q002Q12000D00083Q002Q12000E00094Q006F000C000E4Q002C000A3Q0002000651000A003D00013Q0004403Q003D0001002Q12000A00014Q001E000B000B3Q000E65000200260001000A0004403Q0026000100066E000B003D000100040004403Q003D0001001270000C000A3Q00206B000C000C000B2Q0038000D5Q00206B000E0009000C2Q003B000C000E00010004403Q003D0001000E650001001C0001000A0004403Q001C000100206B000C0009000D00206B000C000C000E2Q002B000C000C000300206B000B000C000F001270000C00103Q00206B000C000C001100206B000C000C001200206B000C000C0013002037000C000C00142Q0038000E00023Q002Q12000F00153Q002Q12001000164Q006F000E00104Q002C000C3Q0002000651000C003A00013Q0004403Q003A0001002Q12000400173Q0004403Q003B0001002Q12000400043Q002Q12000A00023Q0004403Q001C000100062D00050012000100020004403Q00120001002Q12000200033Q00260600020005000100010004403Q000500010012700005000A3Q00206B0005000500182Q003800066Q002200050002000100206B00053Q001900206B00050005001A00206B00030005000E002Q12000200023Q0004403Q000500010004403Q0052000100260600010002000100010004403Q00020001002Q12000200014Q001E000300033Q002Q12000100023Q0004403Q000200012Q00013Q00017Q00133Q00028Q00026Q00F03F030A3Q00506C617965725065747303053Q00706169727303103Q0052616E646F6D436F696E4E756D62657203043Q004E616D65027Q004003053Q007461626C6503053Q00636C65617203143Q00476574436C6F73657374427265616B61626C6573026Q00084003043Q0067616D65030A3Q004765745365727669636503113Q003513A9270E15B83F02128A3F0804B82C0203043Q004B6776D903073Q004E6574776F726B03163Q00427265616B61626C65735F4A6F696E50657442756C6B030A3Q004669726553657276657203063Q00756E7061636B01513Q002Q12000100014Q001E000200043Q002Q12000500013Q0026060005002B000100020004403Q002B00010026060001001F000100020004403Q001F0001002Q12000600013Q0026060006001A000100010004403Q001A0001001270000700034Q001C0007000100022Q0047000300073Q001270000700044Q0047000800034Q00550007000200090004403Q00170001001270000C00054Q0047000D00024Q0053000C000200022Q0038000D5Q00206B000E000B00062Q001B000D000E000C00062D00070011000100020004403Q00110001002Q12000600023Q00260600060008000100020004403Q00080001002Q12000100073Q0004403Q001F00010004403Q0008000100260600010002000100010004403Q00020001001270000600083Q00206B0006000600092Q003800076Q00220006000200010012700006000A4Q004700076Q00530006000200022Q0047000200063Q002Q12000100023Q0004403Q0002000100260600050003000100010004403Q00030001002606000100300001000B0004403Q003000012Q0005000200023Q000E650007004D000100010004403Q004D0001002Q12000600013Q00260600060037000100020004403Q00370001002Q120001000B3Q0004403Q004D000100260600060033000100010004403Q003300012Q002800073Q00012Q003800085Q0010170007000200082Q0047000400073Q0012700007000C3Q00203700070007000D2Q0038000900013Q002Q12000A000E3Q002Q12000B000F4Q006F0009000B4Q002C00073Q000200206B00070007001000206B000700070011002037000700070012001270000900134Q0047000A00044Q00640009000A4Q002100073Q0001002Q12000600023Q0004403Q00330001002Q12000500023Q0004403Q000300010004403Q000200012Q00013Q00017Q00063Q0003043Q007469636B029A5Q99C93F030C3Q00636C6F73657374636F696E7303043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C61796572000F3Q0012703Q00014Q001C3Q000100022Q003800016Q002B5Q0001000E0A0002000E00013Q0004403Q000E00010012703Q00014Q001C3Q000100022Q002A7Q0012703Q00033Q001270000100043Q00206B00010001000500206B0001000100062Q00223Q000200012Q00013Q00017Q00",v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--
