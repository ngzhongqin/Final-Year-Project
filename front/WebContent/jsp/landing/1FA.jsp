<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr">



      <head>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"/> 
            <META HTTP-EQUIV="Expires" CONTENT="-1"/> 
            <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE,NO-STORE"/>




<title>UOB Personal Internet Banking</title><link rel="stylesheet" type="text/css" href="/front/PIBCust/framework/skins/PIBMass/assets/css/reset.css"><link rel="stylesheet" type="text/css" href="/front/PIBCust/framework/skins/PIBMass/assets/css/global_en.css"><link rel="stylesheet" type="text/css" href="/front/PIBCust/framework/skins/PIBMass/assets/css/mass_en.css"><link rel="stylesheet" type="text/css" href="/front/PIBCust/framework/skins/PIBMass/assets/css/thickbox.css"><link rel="stylesheet" type="text/css" href="/front/PIBCust/framework/skins/PIBMass/assets/css/calendar.css"><script src="/front/PIBCust/framework/skins/PIBMass/assets/js/jquery-1.3.2.min.js" type="text/javascript"></script><script src="/front/PIBCust/framework/skins/PIBMass/assets/js/swfobject.js" type="text/javascript"></script><script src="/front/PIBCust/framework/skins/PIBMass/assets/js/ddaccordion.js" type="text/javascript"></script><script src="/front/PIBCust/framework/skins/PIBMass/assets/js/PIBValidation.js" type="text/javascript"></script><script src="/front/PIBCust/framework/skins/PIBMass/assets/js/pib_tooltip.js" type="text/javascript"></script>





<!--[if IE]>

<link href="/front/PIBCust/framework/skins/PIBMass/assets/css/ie.css" rel="stylesheet" type="text/css" />

<![endif]-->

<!--[if IE 6]>

<link href="/front/PIBCust/framework/skins/PIBMass/assets/css/ie6.css" rel="stylesheet" type="text/css" />

<![endif]-->
<!--[if IE 8]>

<link href="/front/PIBCust/framework/skins/PIBMass/assets/css/ie8.css" rel="stylesheet" type="text/css" />

<![endif]-->
<script type="text/javascript">
function Version() { return "v1.1" };

function E2EApplet(){var I=E2EApplet.ERR_INVALID_RSA_KEY;var C="";this.addParameter=function(tag,value){if(value!=null||value!=""){value=value.replace(/^\s+|\s+$/g,"")}if(C==null||C==""){C+=(tag+"%7D="+value)}else{C+=("%7B&"+tag+"%7D="+value)}return 0};var B="";var A="";this.doFinal=function(x509keyStr,challengeStr){try{F(x509keyStr)}catch(L){throw I}var M=new DES_EDE3KeyGenerator();var Q=M.generateKey();var N=Util.fromHexString(sha256Hash(C));var T=N.concat(Util.getByteArray(C));var U=Util.cByteArrayToNString(T);var K=String.fromCharCode(0,0,0,0,0,0,0,0);var P=Util.cByteArrayToNString(Q);var S=Util.getByteArray(des(P,U,1,1,K,1));var R=Util.getByteArray(challengeStr);var J=R.concat(Q);var O=new RSAKey();O.setPublic(B,A);var V=O.encryptB(J);return V.concat(Util.toHexString(S))};function G(){this.value=[]}function F(L){L=L.toUpperCase();var J="06092A864886F70D010101".toUpperCase();var K=L.substr(L.search(J)+J.length);if(K.length==-1){throw"err"}if(K.substring(0,4)!="0500"){throw"err"}var N=Util.fromHexString(K.substr(4));var M=new G();if(H(N,0,M)!=null){throw"err"}if(H(M.value,0,M)!=null){throw"err"}B=Util.toHexString(H(M.value,0,M));if(B==null){throw"err"}A=Util.toHexString(H(M.value,0,M));if(A==null){throw"err"}}function H(Q,N,O){var J=3,K=48,R=2;var S=Q[N++],P=0,L;if(D(Q[N])){var M=Q[N++]&127;P=E(Q.slice(N,N+M));N+=M}else{P=Q[N++]}switch(S){case J:if(Q[N++]!=0){throw"err"}P-=1;case K:O.value=Q.slice(N,N+P);return null;case R:O.value=Q.slice(N+P);return Q.slice(N,N+P);default:throw"err"}}function D(K){var J=128;if((K&J)==J){return true}else{return false}}function E(L){var J;for(var K=0;K<L.length;K++){J|=((L[K]&255)<<(K*8))}return J}}E2EApplet.RSA_EXPONENT_3="3";E2EApplet.RSA_EXPONENT_65537="10001";E2EApplet.ERR_INVALID_RSA_KEY=42;

/* Util.js */
function Util(){}Util.toHexString=function(D){var C="";for(var A=0;A<D.length;A++){var B;if(typeof D[A]=="number"){B=(D[A]).toString(16)}else{if(typeof D[A]=="string"){B=D.charCodeAt(A).toString(16)}}if(B.length==1){B="0"+B}C+=B}return C};Util.fromHexString=function(D){D=(D.length%2==0)?D:"0"+D;var A=D.length/2;var E=[];for(var C=0,B=0;C<A;C++,B++){var F=C*2;E[B]=parseInt("0x"+D.substring(F,F+2))}return E};Util.getByteArray=function(B){a=new Array();for(var A=0;A<B.length;A++){a[A]=B.charCodeAt(A)}return a};Util.cByteArrayToNString=function(C){var A="";for(var B=0;B<C.length;B++){A+=String.fromCharCode(C[B])}return A};

/* DES_EDE3KeyGenerator.js */
function DES_EDE3KeyGenerator(){this.generateKey=function(){var G="";do{G=B(24);G=D(G)}while(C(G));return G};var E=[[1,1,1,1,1,1,1,1],[31,31,31,31,14,14,14,14],[224,224,224,224,241,241,241,241],[254,254,254,254,254,254,254,254]];var A=[[1,254,1,254,1,254,1,254],[31,224,31,224,14,241,14,241],[1,224,1,224,1,241,1,241],[31,254,31,254,14,254,14,254],[1,31,1,31,1,14,1,14],[224,254,224,254,241,254,241,254],[254,1,254,1,254,1,254,1],[224,31,224,31,241,14,241,14],[224,1,224,1,241,1,241,1],[254,31,254,31,254,14,254,14],[31,1,31,1,14,1,14,1],[254,224,254,224,254,241,254,241]];function B(J){var G=new Array(J),H=new Date().getSeconds();for(var I=0;I<J;I++){G[I]=Math.ceil(Math.random(H)*255)}return G}function C(G){if(F(G,0)||F(G,8)||F(G,24)){return true}var J=G.slice(0,8),I=G.slice(8,16),H=G.slice(16,24);if(J.compare(I)||I.compare(H)||J.compare(H)){return true}return false}function F(J,K){var H=J.slice(K,K+8);var I=E.concat(A);for(var G=0;G<I.length;G++){if(H.compare(I[G])){return true}}return false}function D(J){for(var H=0;H<J.length;H++){var I=0;for(var G=7;G>0;G--){if(((J[H]>>>G)&1)==1){I++}}if(I%2==0){J[H]=J[H]&254|1}else{J[H]=J[H]&254|0}}return J}}Array.prototype.compare=function(B){if(this.length!=B.length){return false}for(var A=0;A<B.length;A++){if(this[A].compare){if(!this[A].compare(B[A])){return false}}if(this[A]!==B[A]){return false}}return true};

/*
 * This package includes cryptographic code written by Paul Tero(http://www.tero.co.uk/des/),
 * Michael Hayworth(http://www.netdealing.com) and Eric Young(eay@cryptsoft.com).
 * bmdes.js
 */
function des(h,Q,V,R,G,U){var N=new Array(16843776,0,65536,16843780,16842756,66564,4,65536,1024,16843776,16843780,1024,16778244,16842756,16777216,4,1028,16778240,16778240,66560,66560,16842752,16842752,16778244,65540,16777220,16777220,65540,0,1028,66564,16777216,65536,16843780,4,16842752,16843776,16777216,16777216,1024,16842756,65536,66560,16777220,1024,4,16778244,66564,16843780,65540,16842752,16778244,16777220,1028,66564,16843776,1028,16778240,16778240,0,65540,66560,0,16842756);var M=new Array(-2146402272,-2147450880,32768,1081376,1048576,32,-2146435040,-2147450848,-2147483616,-2146402272,-2146402304,-2147483648,-2147450880,1048576,32,-2146435040,1081344,1048608,-2147450848,0,-2147483648,32768,1081376,-2146435072,1048608,-2147483616,0,1081344,32800,-2146402304,-2146435072,32800,0,1081376,-2146435040,1048576,-2147450848,-2146435072,-2146402304,32768,-2146435072,-2147450880,32,-2146402272,1081376,32,32768,-2147483648,32800,-2146402304,1048576,-2147483616,1048608,-2147450848,-2147483616,1048608,1081344,0,-2147450880,32800,-2147483648,-2146435040,-2146402272,1081344);var L=new Array(520,134349312,0,134348808,134218240,0,131592,134218240,131080,134217736,134217736,131072,134349320,131080,134348800,520,134217728,8,134349312,512,131584,134348800,134348808,131592,134218248,131584,131072,134218248,8,134349320,512,134217728,134349312,134217728,131080,520,131072,134349312,134218240,0,512,131080,134349320,134218240,134217736,512,0,134348808,134218248,131072,134217728,134349320,8,131592,131584,134217736,134348800,134218248,520,134348800,131592,8,134348808,131584);var K=new Array(8396801,8321,8321,128,8396928,8388737,8388609,8193,0,8396800,8396800,8396929,129,0,8388736,8388609,1,8192,8388608,8396801,128,8388608,8193,8320,8388737,1,8320,8388736,8192,8396928,8396929,129,8388736,8388609,8396800,8396929,129,0,0,8396800,8320,8388736,8388737,1,8396801,8321,8321,128,8396929,129,1,8192,8388609,8193,8396928,8388737,8193,8320,8388608,8396801,128,8388608,8192,8396928);var J=new Array(256,34078976,34078720,1107296512,524288,256,1073741824,34078720,1074266368,524288,33554688,1074266368,1107296512,1107820544,524544,1073741824,33554432,1074266112,1074266112,0,1073742080,1107820800,1107820800,33554688,1107820544,1073742080,0,1107296256,34078976,33554432,1107296256,524544,524288,1107296512,256,33554432,1073741824,34078720,1107296512,1074266368,33554688,1073741824,1107820544,34078976,1074266368,256,33554432,1107820544,1107820800,524544,1107296256,1107820800,34078720,0,1074266112,1107296256,524544,33554688,1073742080,524288,0,1074266112,34078976,1073742080);var H=new Array(536870928,541065216,16384,541081616,541065216,16,541081616,4194304,536887296,4210704,4194304,536870928,4194320,536887296,536870912,16400,0,4194320,536887312,16384,4210688,536887312,16,541065232,541065232,0,4210704,541081600,16400,4210688,541081600,536870912,536887296,16,541065232,4210688,541081616,4194304,16400,536870928,4194304,536887296,536870912,16400,536870928,541081616,4210688,541065216,4210704,541081600,0,541065232,16,16384,541065216,4210704,16384,4194320,536887312,0,541081600,536870912,4194320,536887312);var F=new Array(2097152,69206018,67110914,0,2048,67110914,2099202,69208064,69208066,2097152,0,67108866,2,67108864,69206018,2050,67110912,2099202,2097154,67110912,67108866,69206016,69208064,2097154,69206016,2048,2050,69208066,2099200,2,67108864,2099200,67108864,2099200,2097152,67110914,67110914,69206018,69206018,2,2097154,67108864,67110912,2097152,69208064,2050,2099202,69208064,2050,67108866,69208066,69206016,2099200,0,2,69208066,0,2099202,69206016,2048,67108866,67110912,2048,2097154);var D=new Array(268439616,4096,262144,268701760,268435456,268439616,64,268435456,262208,268697600,268701760,266240,268701696,266304,4096,64,268697600,268435520,268439552,4160,266240,262208,268697664,268701696,4160,0,0,268697664,268435520,268439552,266304,262144,266304,262144,268701696,4096,64,268697664,4096,266304,268439552,64,268435520,268697600,268697664,268435456,262144,268439616,0,268701760,262208,268435520,268697600,268439552,268439616,0,268701760,266240,266240,4160,4160,262208,268435456,268701696);var T=des_createKeys(h);var X=0,c,a,e,g,C,B,E,f,W;var O,Z,A,I;var S,Y;var d=Q.length;var P=0;var b=T.length==32?3:9;if(b==3){W=V?new Array(0,32,2):new Array(30,-2,-2)}else{W=V?new Array(0,32,2,62,30,-2,64,96,2):new Array(94,62,-2,32,64,2,30,-2,-2)}if(U==2){Q+="        "}else{if(U==1){e=8-(d%8);Q+=String.fromCharCode(e,e,e,e,e,e,e,e);if(e==8){d+=8}}else{if(!U){Q+="\0\0\0\0\0\0\0\0"}}}result="";tempresult="";if(R==1){O=(G.charCodeAt(X++)<<24)|(G.charCodeAt(X++)<<16)|(G.charCodeAt(X++)<<8)|G.charCodeAt(X++);A=(G.charCodeAt(X++)<<24)|(G.charCodeAt(X++)<<16)|(G.charCodeAt(X++)<<8)|G.charCodeAt(X++);X=0}while(X<d){E=(Q.charCodeAt(X++)<<24)|(Q.charCodeAt(X++)<<16)|(Q.charCodeAt(X++)<<8)|Q.charCodeAt(X++);f=(Q.charCodeAt(X++)<<24)|(Q.charCodeAt(X++)<<16)|(Q.charCodeAt(X++)<<8)|Q.charCodeAt(X++);if(R==1){if(V){E^=O;f^=A}else{Z=O;I=A;O=E;A=f}}e=((E>>>4)^f)&252645135;f^=e;E^=(e<<4);e=((E>>>16)^f)&65535;f^=e;E^=(e<<16);e=((f>>>2)^E)&858993459;E^=e;f^=(e<<2);e=((f>>>8)^E)&16711935;E^=e;f^=(e<<8);e=((E>>>1)^f)&1431655765;f^=e;E^=(e<<1);E=((E<<1)|(E>>>31));f=((f<<1)|(f>>>31));for(a=0;a<b;a+=3){S=W[a+1];Y=W[a+2];for(c=W[a];c!=S;c+=Y){C=f^T[c];B=((f>>>4)|(f<<28))^T[c+1];e=E;E=f;f=e^(M[(C>>>24)&63]|K[(C>>>16)&63]|H[(C>>>8)&63]|D[C&63]|N[(B>>>24)&63]|L[(B>>>16)&63]|J[(B>>>8)&63]|F[B&63])}e=E;E=f;f=e}E=((E>>>1)|(E<<31));f=((f>>>1)|(f<<31));e=((E>>>1)^f)&1431655765;f^=e;E^=(e<<1);e=((f>>>8)^E)&16711935;E^=e;f^=(e<<8);e=((f>>>2)^E)&858993459;E^=e;f^=(e<<2);e=((E>>>16)^f)&65535;f^=e;E^=(e<<16);e=((E>>>4)^f)&252645135;f^=e;E^=(e<<4);if(R==1){if(V){O=E;A=f}else{E^=Z;f^=I}}tempresult+=String.fromCharCode((E>>>24),((E>>>16)&255),((E>>>8)&255),(E&255),(f>>>24),((f>>>16)&255),((f>>>8)&255),(f&255));P+=8;if(P==512){result+=tempresult;tempresult="";P=0}}return result+tempresult}function des_createKeys(H){pc2bytes0=new Array(0,4,536870912,536870916,65536,65540,536936448,536936452,512,516,536871424,536871428,66048,66052,536936960,536936964);pc2bytes1=new Array(0,1,1048576,1048577,67108864,67108865,68157440,68157441,256,257,1048832,1048833,67109120,67109121,68157696,68157697);pc2bytes2=new Array(0,8,2048,2056,16777216,16777224,16779264,16779272,0,8,2048,2056,16777216,16777224,16779264,16779272);pc2bytes3=new Array(0,2097152,134217728,136314880,8192,2105344,134225920,136323072,131072,2228224,134348800,136445952,139264,2236416,134356992,136454144);pc2bytes4=new Array(0,262144,16,262160,0,262144,16,262160,4096,266240,4112,266256,4096,266240,4112,266256);pc2bytes5=new Array(0,1024,32,1056,0,1024,32,1056,33554432,33555456,33554464,33555488,33554432,33555456,33554464,33555488);pc2bytes6=new Array(0,268435456,524288,268959744,2,268435458,524290,268959746,0,268435456,524288,268959744,2,268435458,524290,268959746);pc2bytes7=new Array(0,65536,2048,67584,536870912,536936448,536872960,536938496,131072,196608,133120,198656,537001984,537067520,537004032,537069568);pc2bytes8=new Array(0,262144,0,262144,2,262146,2,262146,33554432,33816576,33554432,33816576,33554434,33816578,33554434,33816578);pc2bytes9=new Array(0,268435456,8,268435464,0,268435456,8,268435464,1024,268436480,1032,268436488,1024,268436480,1032,268436488);pc2bytes10=new Array(0,32,0,32,1048576,1048608,1048576,1048608,8192,8224,8192,8224,1056768,1056800,1056768,1056800);pc2bytes11=new Array(0,16777216,512,16777728,2097152,18874368,2097664,18874880,67108864,83886080,67109376,83886592,69206016,85983232,69206528,85983744);pc2bytes12=new Array(0,4096,134217728,134221824,524288,528384,134742016,134746112,16,4112,134217744,134221840,524304,528400,134742032,134746128);pc2bytes13=new Array(0,4,256,260,0,4,256,260,1,5,257,261,1,5,257,261);var C=H.length>8?3:1;var J=new Array(32*C);var G=new Array(0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,0);var F,A,D=0,B=0,I;for(var E=0;E<C;E++){left=(H.charCodeAt(D++)<<24)|(H.charCodeAt(D++)<<16)|(H.charCodeAt(D++)<<8)|H.charCodeAt(D++);right=(H.charCodeAt(D++)<<24)|(H.charCodeAt(D++)<<16)|(H.charCodeAt(D++)<<8)|H.charCodeAt(D++);I=((left>>>4)^right)&252645135;right^=I;left^=(I<<4);I=((right>>>-16)^left)&65535;left^=I;right^=(I<<-16);I=((left>>>2)^right)&858993459;right^=I;left^=(I<<2);I=((right>>>-16)^left)&65535;left^=I;right^=(I<<-16);I=((left>>>1)^right)&1431655765;right^=I;left^=(I<<1);I=((right>>>8)^left)&16711935;left^=I;right^=(I<<8);I=((left>>>1)^right)&1431655765;right^=I;left^=(I<<1);I=(left<<8)|((right>>>20)&240);left=(right<<24)|((right<<8)&16711680)|((right>>>8)&65280)|((right>>>24)&240);right=I;for(i=0;i<G.length;i++){if(G[i]){left=(left<<2)|(left>>>26);right=(right<<2)|(right>>>26)}else{left=(left<<1)|(left>>>27);right=(right<<1)|(right>>>27)}left&=-15;right&=-15;F=pc2bytes0[left>>>28]|pc2bytes1[(left>>>24)&15]|pc2bytes2[(left>>>20)&15]|pc2bytes3[(left>>>16)&15]|pc2bytes4[(left>>>12)&15]|pc2bytes5[(left>>>8)&15]|pc2bytes6[(left>>>4)&15];A=pc2bytes7[right>>>28]|pc2bytes8[(right>>>24)&15]|pc2bytes9[(right>>>20)&15]|pc2bytes10[(right>>>16)&15]|pc2bytes11[(right>>>12)&15]|pc2bytes12[(right>>>8)&15]|pc2bytes13[(right>>>4)&15];I=((A>>>16)^F)&65535;J[B++]=F^I;J[B++]=A^(I<<16)}}return J};

/*
 * This package includes code written by Chris Veness.
 * 
 * Copyright (c) 2005-2009  Chris Veness
 * http://www.movable-type.co.uk/scripts/sha256.html 
 * sha256.js
 */
function sha256Hash(B){var E=[1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298];var F=[1779033703,3144134277,1013904242,2773480762,1359893119,2600822924,528734635,1541459225];B+=String.fromCharCode(128);var L=B.length/4+2;var C=Math.ceil(L/16);var D=new Array(C);for(var P=0;P<C;P++){D[P]=new Array(16);for(var O=0;O<16;O++){D[P][O]=(B.charCodeAt(P*64+O*4)<<24)|(B.charCodeAt(P*64+O*4+1)<<16)|(B.charCodeAt(P*64+O*4+2)<<8)|(B.charCodeAt(P*64+O*4+3))}}D[C-1][14]=((B.length-1)*8)/Math.pow(2,32);D[C-1][14]=Math.floor(D[C-1][14]);D[C-1][15]=((B.length-1)*8)&4294967295;var A=new Array(64);var Y,X,V,U,T,S,R,Q;for(var P=0;P<C;P++){for(var I=0;I<16;I++){A[I]=D[P][I]}for(var I=16;I<64;I++){A[I]=(sigma1(A[I-2])+A[I-7]+sigma0(A[I-15])+A[I-16])&4294967295}Y=F[0];X=F[1];V=F[2];U=F[3];T=F[4];S=F[5];R=F[6];Q=F[7];for(var I=0;I<64;I++){var J=Q+Sigma1(T)+Ch(T,S,R)+E[I]+A[I];var G=Sigma0(Y)+Maj(Y,X,V);Q=R;R=S;S=T;T=(U+J)&4294967295;U=V;V=X;X=Y;Y=(J+G)&4294967295}F[0]=(F[0]+Y)&4294967295;F[1]=(F[1]+X)&4294967295;F[2]=(F[2]+V)&4294967295;F[3]=(F[3]+U)&4294967295;F[4]=(F[4]+T)&4294967295;F[5]=(F[5]+S)&4294967295;F[6]=(F[6]+R)&4294967295;F[7]=(F[7]+Q)&4294967295}return F[0].toHexStr()+F[1].toHexStr()+F[2].toHexStr()+F[3].toHexStr()+F[4].toHexStr()+F[5].toHexStr()+F[6].toHexStr()+F[7].toHexStr()}function ROTR(B,A){return(A>>>B)|(A<<(32-B))}function Sigma0(A){return ROTR(2,A)^ROTR(13,A)^ROTR(22,A)}function Sigma1(A){return ROTR(6,A)^ROTR(11,A)^ROTR(25,A)}function sigma0(A){return ROTR(7,A)^ROTR(18,A)^(A>>>3)}function sigma1(A){return ROTR(17,A)^ROTR(19,A)^(A>>>10)}function Ch(A,C,B){return(A&C)^(~A&B)}function Maj(A,C,B){return(A&C)^(A&B)^(C&B)}Number.prototype.toHexStr=function(){var C="",A;for(var B=7;B>=0;B--){A=(this>>>(B*4))&15;C+=A.toString(16)}return C};
    
/*
 * This package includes code written by Tom Wu.
 * 
 * Copyright (c) 2003-2005  Tom Wu
 * All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * jsbn.js
 */
var dbits;var j_lm=(((244837814094590)&16777215)==15715070);function BigInteger(B,A,C){if(B!=null){if(typeof B=="number"){this.fromNumber(B,A,C)}else{if((A==null)&&(typeof B!="string")){this.fromString(B,256)}else{this.fromString(B,A)}}}}function nbi(){return new BigInteger(null)}function am1(E,A,B,D,G,F){while(--F>=0){var C=A*this[E++]+B[D]+G;G=Math.floor(C/67108864);B[D++]=C&67108863}return G}function am2(E,J,K,D,H,A){var G=J&32767,I=J>>15;while(--A>=0){var C=this[E]&32767;var F=this[E++]>>15;var B=I*C+F*G;C=G*C+((B&32767)<<15)+K[D]+(H&1073741823);H=(C>>>30)+(B>>>15)+I*F+(H>>>30);K[D++]=C&1073741823}return H}function am3(E,J,K,D,H,A){var G=J&16383,I=J>>14;while(--A>=0){var C=this[E]&16383;var F=this[E++]>>14;var B=I*C+F*G;C=G*C+((B&16383)<<14)+K[D]+H;H=(C>>28)+(B>>14)+I*F;K[D++]=C&268435455}return H}if(navigator.appName=="Nokia"){BigInteger.prototype.am=am3;dbits=28}else{if(j_lm&&(navigator.appName=="Microsoft Internet Explorer")){BigInteger.prototype.am=am2;dbits=30}else{if(j_lm&&(navigator.appName!="Netscape")){BigInteger.prototype.am=am1;dbits=26}else{if((4294967295==-1)&&(navigator.appName=="Netscape")){BigInteger.prototype.am=am1;dbits=26}else{BigInteger.prototype.am=am1;dbits=26}}}}BigInteger.prototype.DB=dbits;BigInteger.prototype.DM=((1<<dbits)-1);BigInteger.prototype.DV=(1<<dbits);var BI_FP=52;BigInteger.prototype.FV=Math.pow(2,BI_FP);BigInteger.prototype.F1=BI_FP-dbits;BigInteger.prototype.F2=2*dbits-BI_FP;var BI_RM="0123456789abcdefghijklmnopqrstuvwxyz";var BI_RC=new Array();var rr,vv;rr="0".charCodeAt(0);for(vv=0;vv<=9;++vv){BI_RC[rr++]=vv}rr="a".charCodeAt(0);for(vv=10;vv<36;++vv){BI_RC[rr++]=vv}rr="A".charCodeAt(0);for(vv=10;vv<36;++vv){BI_RC[rr++]=vv}function int2char(A){return BI_RM.charAt(A)}function intAt(B,A){var C=BI_RC[B.charCodeAt(A)];return(C==null)?-1:C}function bnpCopyTo(B){for(var A=this.t-1;A>=0;--A){B[A]=this[A]}B.t=this.t;B.s=this.s}function bnpFromInt(A){this.t=1;this.s=(A<0)?-1:0;if(A>0){this[0]=A}else{if(A<-1){this[0]=A+DV}else{this.t=0}}}function nbv(A){var B=nbi();B.fromInt(A);return B}function bnpFromString(G,B){var D;if(B==16){D=4}else{if(B==8){D=3}else{if(B==256){D=8}else{if(B==2){D=1}else{if(B==32){D=5}else{if(B==4){D=2}else{this.fromRadix(G,B);return}}}}}}this.t=0;this.s=0;var F=G.length,C=false,E=0;while(--F>=0){var A=(D==8)?G[F]&255:intAt(G,F);if(A<0){if(G.charAt(F)=="-"){C=true}continue}C=false;if(E==0){this[this.t++]=A}else{if(E+D>this.DB){this[this.t-1]|=(A&((1<<(this.DB-E))-1))<<E;this[this.t++]=(A>>(this.DB-E))}else{this[this.t-1]|=A<<E}}E+=D;if(E>=this.DB){E-=this.DB}}if(D==8&&(G[0]&128)!=0){this.s=-1;if(E>0){this[this.t-1]|=((1<<(this.DB-E))-1)<<E}}this.clamp();if(C){BigInteger.ZERO.subTo(this,this)}}function bnpClamp(){var A=this.s&this.DM;while(this.t>0&&this[this.t-1]==A){--this.t}}function bnToString(B){if(this.s<0){return"-"+this.negate().toString(B)}var C;if(B==16){C=4}else{if(B==8){C=3}else{if(B==2){C=1}else{if(B==32){C=5}else{if(B==4){C=2}else{return this.toRadix(B)}}}}}var E=(1<<C)-1,H,A=false,F="",D=this.t;var G=this.DB-(D*this.DB)%C;if(D-->0){if(G<this.DB&&(H=this[D]>>G)>0){A=true;F=int2char(H)}while(D>=0){if(G<C){H=(this[D]&((1<<G)-1))<<(C-G);H|=this[--D]>>(G+=this.DB-C)}else{H=(this[D]>>(G-=C))&E;if(G<=0){G+=this.DB;--D}}if(H>0){A=true}if(A){F+=int2char(H)}}}if(B==16&&F.length%2>0){F="0"+F}return A?F:"0"}function bnAbs(){return(this.s<0)?this.negate():this}function bnCompareTo(A){var C=this.s-A.s;if(C!=0){return C}var B=this.t;C=B-A.t;if(C!=0){return C}while(--B>=0){if((C=this[B]-A[B])!=0){return C}}return 0}function nbits(A){var C=1,B;if((B=A>>>16)!=0){A=B;C+=16}if((B=A>>8)!=0){A=B;C+=8}if((B=A>>4)!=0){A=B;C+=4}if((B=A>>2)!=0){A=B;C+=2}if((B=A>>1)!=0){A=B;C+=1}return C}function bnBitLength(){if(this.t<=0){return 0}return this.DB*(this.t-1)+nbits(this[this.t-1]^(this.s&this.DM))}function bnpDLShiftTo(C,B){var A;for(A=this.t-1;A>=0;--A){B[A+C]=this[A]}for(A=C-1;A>=0;--A){B[A]=0}B.t=this.t+C;B.s=this.s}function bnpDRShiftTo(C,B){for(var A=C;A<this.t;++A){B[A-C]=this[A]}B.t=Math.max(this.t-C,0);B.s=this.s}function bnpLShiftTo(H,D){var B=H%this.DB;var A=this.DB-B;var F=(1<<A)-1;var E=Math.floor(H/this.DB),G=(this.s<<B)&this.DM,C;for(C=this.t-1;C>=0;--C){D[C+E+1]=(this[C]>>A)|G;G=(this[C]&F)<<B}for(C=E-1;C>=0;--C){D[C]=0}D[E]=G;D.t=this.t+E+1;D.s=this.s;D.clamp()}function bnpRShiftTo(G,D){D.s=this.s;var E=Math.floor(G/this.DB);if(E>=this.t){D.t=0;return}var B=G%this.DB;var A=this.DB-B;var F=(1<<B)-1;D[0]=this[E]>>B;for(var C=E+1;C<this.t;++C){D[C-E-1]|=(this[C]&F)<<A;D[C-E]=this[C]>>B}if(B>0){D[this.t-E-1]|=(this.s&F)<<A}D.t=this.t-E;D.clamp()}function bnpSubTo(B,D){var C=0,E=0,A=Math.min(B.t,this.t);while(C<A){E+=this[C]-B[C];D[C++]=E&this.DM;E>>=this.DB}if(B.t<this.t){E-=B.s;while(C<this.t){E+=this[C];D[C++]=E&this.DM;E>>=this.DB}E+=this.s}else{E+=this.s;while(C<B.t){E-=B[C];D[C++]=E&this.DM;E>>=this.DB}E-=B.s}D.s=(E<0)?-1:0;if(E<-1){D[C++]=this.DV+E}else{if(E>0){D[C++]=E}}D.t=C;D.clamp()}function bnpMultiplyTo(B,D){var A=this.abs(),E=B.abs();var C=A.t;D.t=C+E.t;while(--C>=0){D[C]=0}for(C=0;C<E.t;++C){D[C+A.t]=A.am(0,E[C],D,C,0,A.t)}D.s=0;D.clamp();if(this.s!=B.s){BigInteger.ZERO.subTo(D,D)}}function bnpSquareTo(C){var A=this.abs();var B=C.t=2*A.t;while(--B>=0){C[B]=0}for(B=0;B<A.t-1;++B){var D=A.am(B,A[B],C,2*B,0,1);if((C[B+A.t]+=A.am(B+1,2*A[B],C,2*B+1,D,A.t-B-1))>=A.DV){C[B+A.t]-=A.DV;C[B+A.t+1]=1}}if(C.t>0){C[C.t-1]+=A.am(B,A[B],C,2*B,0,1)}C.s=0;C.clamp()}function bnpDivRemTo(J,G,F){var P=J.abs();if(P.t<=0){return}var H=this.abs();if(H.t<P.t){if(G!=null){G.fromInt(0)}if(F!=null){this.copyTo(F)}return}if(F==null){F=nbi()}var D=nbi(),A=this.s,I=J.s;var O=this.DB-nbits(P[P.t-1]);if(O>0){P.lShiftTo(O,D);H.lShiftTo(O,F)}else{P.copyTo(D);H.copyTo(F)}var L=D.t;var B=D[L-1];if(B==0){return}var K=B*(1<<this.F1)+((L>1)?D[L-2]>>this.F2:0);var S=this.FV/K,R=(1<<this.F1)/K,Q=1<<this.F2;var N=F.t,M=N-L,E=(G==null)?nbi():G;D.dlShiftTo(M,E);if(F.compareTo(E)>=0){F[F.t++]=1;F.subTo(E,F)}BigInteger.ONE.dlShiftTo(L,E);E.subTo(D,D);while(D.t<L){D[D.t++]=0}while(--M>=0){var C=(F[--N]==B)?this.DM:Math.floor(F[N]*S+(F[N-1]+Q)*R);if((F[N]+=D.am(0,C,F,M,0,L))<C){D.dlShiftTo(M,E);F.subTo(E,F);while(F[N]<--C){F.subTo(E,F)}}}if(G!=null){F.drShiftTo(L,G);if(A!=I){BigInteger.ZERO.subTo(G,G)}}F.t=L;F.clamp();if(O>0){F.rShiftTo(O,F)}if(A<0){BigInteger.ZERO.subTo(F,F)}}function Classic(A){this.m=A}function cConvert(A){if(A.s<0||A.compareTo(this.m)>=0){return A.mod(this.m)}else{return A}}function cRevert(A){return A}function cReduce(A){A.divRemTo(this.m,null,A)}function cMulTo(A,C,B){A.multiplyTo(C,B);this.reduce(B)}function cSqrTo(A,B){A.squareTo(B);this.reduce(B)}Classic.prototype.convert=cConvert;Classic.prototype.revert=cRevert;Classic.prototype.reduce=cReduce;Classic.prototype.mulTo=cMulTo;Classic.prototype.sqrTo=cSqrTo;function bnpInvDigit(){if(this.t<1){return 0}var A=this[0];if((A&1)==0){return 0}var B=A&3;B=(B*(2-(A&15)*B))&15;B=(B*(2-(A&255)*B))&255;B=(B*(2-(((A&65535)*B)&65535)))&65535;B=(B*(2-A*B%this.DV))%this.DV;return(B>0)?this.DV-B:-B}function Montgomery(A){this.m=A;this.mp=A.invDigit();this.mpl=this.mp&32767;this.mph=this.mp>>15;this.um=(1<<(A.DB-15))-1;this.mt2=2*A.t}function montConvert(A){var B=nbi();A.abs().dlShiftTo(this.m.t,B);B.divRemTo(this.m,null,B);if(A.s<0&&B.compareTo(BigInteger.ZERO)>0){this.m.subTo(B,B)}return B}function montRevert(A){var B=nbi();A.copyTo(B);this.reduce(B);return B}function montReduce(A){while(A.t<=this.mt2){A[A.t++]=0}for(var C=0;C<this.m.t;++C){var B=A[C]&32767;var D=(B*this.mpl+(((B*this.mph+(A[C]>>15)*this.mpl)&this.um)<<15))&A.DM;B=C+this.m.t;A[B]+=this.m.am(0,D,A,C,0,this.m.t);while(A[B]>=A.DV){A[B]-=A.DV;A[++B]++}}A.clamp();A.drShiftTo(this.m.t,A);if(A.compareTo(this.m)>=0){A.subTo(this.m,A)}}function montSqrTo(A,B){A.squareTo(B);this.reduce(B)}function montMulTo(A,C,B){A.multiplyTo(C,B);this.reduce(B)}Montgomery.prototype.convert=montConvert;Montgomery.prototype.revert=montRevert;Montgomery.prototype.reduce=montReduce;Montgomery.prototype.mulTo=montMulTo;Montgomery.prototype.sqrTo=montSqrTo;function bnpIsEven(){return((this.t>0)?(this[0]&1):this.s)==0}function bnpExp(F,G){var E=nbi(),A=nbi(),D=G.convert(this),C=nbits(F)-1;D.copyTo(E);while(--C>=0){G.sqrTo(E,A);if((F&(1<<C))>0){G.mulTo(A,D,E)}else{var B=E;E=A;A=B}}return G.revert(E)}function bnModPowInt(B,A){var C;if(B<256||A.isEven()){C=new Classic(A)}else{C=new Montgomery(A)}return this.exp(B,C)}function bnpToRadix(A){if(A==null){A=10}if(this.signum()==0||A<2||A>36){return"0"}var C=this.chunkSize(A);var B=Math.pow(A,C);var F=nbv(B),G=nbi(),E=nbi(),D="";this.divRemTo(F,G,E);while(G.signum()>0){D=(B+E.intValue()).toString(A).substr(1)+D;G.divRemTo(F,G,E)}return E.intValue().toString(A)+D}function bnpBitwiseTo(B,F,D){var C,E,A=Math.min(B.t,this.t);for(C=0;C<A;++C){D[C]=F(this[C],B[C])}if(B.t<this.t){E=B.s&this.DM;for(C=A;C<this.t;++C){D[C]=F(this[C],E)}D.t=this.t}else{E=this.s&this.DM;for(C=A;C<B.t;++C){D[C]=F(E,B[C])}D.t=B.t}D.s=F(this.s,B.s);D.clamp()}function op_xor(A,B){return A^B}function bnXor(A){var B=nbi();this.bitwiseTo(A,op_xor,B);return B}function lbit(A){if(A==0){return -1}var B=0;if((A&65535)==0){A>>=16;B+=16}if((A&255)==0){A>>=8;B+=8}if((A&15)==0){A>>=4;B+=4}if((A&3)==0){A>>=2;B+=2}if((A&1)==0){++B}return B}BigInteger.prototype.copyTo=bnpCopyTo;BigInteger.prototype.fromInt=bnpFromInt;BigInteger.prototype.fromString=bnpFromString;BigInteger.prototype.clamp=bnpClamp;BigInteger.prototype.dlShiftTo=bnpDLShiftTo;BigInteger.prototype.subTo=bnpSubTo;BigInteger.prototype.rShiftTo=bnpRShiftTo;BigInteger.prototype.drShiftTo=bnpDRShiftTo;BigInteger.prototype.invDigit=bnpInvDigit;BigInteger.prototype.isEven=bnpIsEven;BigInteger.prototype.multiplyTo=bnpMultiplyTo;BigInteger.prototype.lShiftTo=bnpLShiftTo;BigInteger.prototype.divRemTo=bnpDivRemTo;BigInteger.prototype.squareTo=bnpSquareTo;BigInteger.prototype.exp=bnpExp;BigInteger.prototype.toRadix=bnpToRadix;BigInteger.prototype.bitwiseTo=bnpBitwiseTo;BigInteger.prototype.toString=bnToString;BigInteger.prototype.abs=bnAbs;BigInteger.prototype.compareTo=bnCompareTo;BigInteger.prototype.bitLength=bnBitLength;BigInteger.prototype.modPowInt=bnModPowInt;BigInteger.prototype.xor=bnXor;BigInteger.ZERO=nbv(0);BigInteger.ONE=nbv(1);

/*
 * This package includes code written by Tom Wu.
 * 
 * Copyright (c) 2003-2005  Tom Wu
 * All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 */
/*
 * Copyright (c) 2003-2005  Tom Wu
 * http://www-cs-students.stanford.edu/~tjw/jsbn/
 * All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS-IS" AND WITHOUT WARRANTY OF ANY KIND, 
 * EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY 
 * WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  
 *
 * IN NO EVENT SHALL TOM WU BE LIABLE FOR ANY SPECIAL, INCIDENTAL,
 * INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND, OR ANY DAMAGES WHATSOEVER
 * RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER OR NOT ADVISED OF
 * THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF LIABILITY, ARISING OUT
 * OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 * In addition, the following condition applies:
 *
 * All redistributions must retain an intact copy of this copyright notice
 * and disclaimer.
 * rsa.js
 */
function parseBigInt(B,A){return new BigInteger(B,A)}function pkcs1pad2B(C,H){var G=C.length;if(G>H-11){throw"104"}var A=[0,2];var B=H-G-3;var F=randomBytes(B);var D=A.concat(F,[0],C);var E=new BigInteger(D);return E}function randomBytes(C){var A=[];var B=0;for(B=0;B<C;B++){A[B]=Math.ceil(Math.random()*255)}return A}function RSAKey(){this.n=null;this.e=0;this.d=null}RSAKey.prototype.setPublic=function(B,A){if(B!=null&&A!=null&&B.length>0&&A.length>0){this.n=parseBigInt(B,16);this.e=parseInt(A,16)}else{alert("Invalid RSA public key")}};RSAKey.prototype.doPublic=function(A){return A.modPowInt(this.e,this.n)};RSAKey.prototype.encryptNativeBytes=function(B){var F=(this.n.bitLength()+7)>>3;if(B.length>F){throw"104"}var A=new BigInteger(B);if(A==null){return null}var E=this.doPublic(A);if(E==null){return null}var D=E.toString(16);if(D.length>256){return null}if(D.length<256){for(var C=0;C<(256-D.length);C++){D="0"+D}}};RSAKey.prototype.encryptB=function(B){var A=pkcs1pad2B(B,(this.n.bitLength()+7)>>3);if(A==null){return null}var E=this.doPublic(A);if(E==null){return null}var D=E.toString(16);if(D.length>256){return null}if(D.length<256){for(var C=0;C<(256-D.length);C++){D="0"+D}}return D};

    
    
var encString='';
var isFirstReq = true;
var e2eSub = false;
var e2eApplet = new E2EApplet();
function checkReset(){
    return false;
}

function doPagination(e2eFlag,actionUrl) {
        e2esubmit(e2eFlag,actionUrl);
    }

    function disableLnk() {
            for (var i=1; i<4; i++) {
                link = document.getElementById("nxtPage"+i);
                if(link != null){
                    link.oldOnClick = link.onclick;
                    link.onclick = cancelLink;
                    link.style.cursor = 'default';
                    link.disabled = true;
                }
            }
            
            for (var i=1; i<4; i++) {
                link = document.getElementById("prvPage"+i);
                if(link != null){
                    link.oldOnClick = link.onclick;
                    link.onclick = cancelLink;
                    link.style.cursor = 'default';
                    link.disabled = true;
                }
            }
      }
      
      function cancelLink () {
            return false;
      }
function e2eValidateSubmit (validateFlag,e2eFlag,actionUrl){
    if(validateFlag)
    {
        e2esubmit(e2eFlag,actionUrl);
    } else {
        return false;
    }
} 
        
function e2esubmit(e2eFlag,actionUrl){
    try{
    if(document.getElementById('favoritesList')){
        document.getElementById('favoritesList').disabled=true;
    }
    if(checkSubmitAction()){
        if(e2eFlag) {
            e2eApplet = new E2EApplet();
            var challenge=document.getElementById('challenge').value;
            var pubKey=document.getElementById('publicKey').value; 
            if(encryptForm(challenge,pubKey)){
            document.forms[1].action=actionUrl;
            
            document.forms[1].submit();
            }else{
                return false;
            }

        
        }else {
            isFirstReq = false;
            document.forms[0].action=actionUrl;
            
            document.forms[0].submit();
        }
    }
    else {
        return false;
    }
    }catch(err){
        
        isFirstReq = true;
        return false;
    }
}

function setSubmitVal(){
    if(document.getElementById('favoritesList')){
        document.getElementById('favoritesList').disabled=true;
    }
    if(!checkSubmitAction()){
        return false;
    }
    else {
        isFirstReq = false;
    }
}



function checkSubmitAction(){
    if(isFirstReq){
        return true;
    }
    else {
        return false;
    }
}


function encryptForm(challenge,pubKey)
{
try{
    
    isFirstReq = false;
    var inputFields=document.forms[0].elements;
    
    for (var i=0;i<inputFields.length;i++) 
    {    
        if (inputFields[i].name)
        {
            
            var key=inputFields[i].name;
            var value=inputFields[i].value;
            
            if((inputFields[i].type == 'checkbox' || inputFields[i].type == 'radio'))
            {
                if(inputFields[i].checked)
                {
                
                    
                    e2eApplet.addParameter(key,value);
                }
            } else {
            
                
                e2eApplet.addParameter(key,value);
            }
        }
    }
    
    
    generateDesKeyandParamString(challenge,pubKey);   
    return true;  
    
    }catch(err){    
        isFirstReq = true;
        return false;
    }

 }
 
 
 function generateDesKeyandParamString(challenge,pubKey)
{

    var inputElm=document.forms[1].elements;

    for(var k=0;k<inputElm.length;k++)
    {
        if(inputElm[k].id=='encData')
        {
            inputElm[k].value = e2eApplet.doFinal(pubKey, challenge);
            
        }
    }
    
 }
 
 

</script>
</head>


<body>







<!-- SiteCatalyst code version: H.16.
Copyright 1997-2008 Omniture, Inc. More info available at http://www.omniture.com -->
<script type="text/javascript" src="/front/PIBCust/framework/skins/PIBMass/assets/js/omniture.js"></script>
<script type="text/javascript"><!--
s.channel="SG:PIB:EN"
s.currencyCode="SGD"
s.eVar19="00000000014001668320120080469866601"
s.pageName="SG:PIB:EN:HomePage:HomePage:PIB Home Page:HomePage"
s.prop1="Singapore"
s.prop2="SG:PIB:EN:HomePage:HomePage"
s.prop3="SG:PIB:EN:HomePage:HomePage:PIB Home Page"

/************* DO NOT ALTER ANYTHING BELOW THIS LINE ! **************/
var s_code=s.t();if(s_code)document.write(s_code)//-->
</script>
<script type="text/javascript">
<!-- if(navigator.appVersion.indexOf('MSIE')>=0)//-->document.write(unescape('\%3C')+'\!-'+'-')</script>
<noscript><a href="http://www.omniture.com" title="Web Analytics">
<img src="http://uob.112.2o7.net/b/ss/uobcomprd/1/H.16--NS/0" height="1" width="1" border="0" alt="" /></a>
</noscript>
<!-- End SiteCatalyst code version: H.16. -->

<script type="text/javascript">
var lgclked = false;
var strErrMessage = "Applet not loaded properly! Please reload the page again";
ddaccordion.init({
    headerclass: "SideMenuHeader",
    contentclass: "thelanguage", 
    collapseprev: true,
    defaultexpanded: [7], 
    animatedefault: false, 
    persiststate: false, 
    toggleclass: ["closedlanguage", "openlanguage"],
    togglehtml: ["prefix", "<img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_collapse.gif'/>", "<img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/close.gif'/>"],
    animatespeed: "fast",
    oninit:function(expandedindices){ 
    
    },
    onopenclose:function(header, index, state, isclicked){ 
    
    }
})

ddaccordion.init({ 
    headerclass: "subexpandable",
    contentclass: "subcategoryitems",
    revealtype: "click",
    collapseprev: true,
    defaultexpanded: [],
    onemustopen: false,
    animatedefault: false,
    persiststate: false,
    toggleclass: ["opensubheader", "closedsubheader"],
    togglehtml: ["prefix", "<img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_collapse.gif' alt='ree'/>", "<img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/close.gif' alt='ree'/>"],
    animatespeed: "fast",
    oninit:function(headers, expandedindices){

    },
    onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed

    }
})
function renderSelectedPage(selection,token){
    if(selection=="OTHRUS1"){
        window.open('https://uniservices.uobgroup.com/NASApp/RUS/jsp/login.jsp');
        document.getElementById('favoritesList').selectedIndex=0;
    }else{
        setSubmitVal();
        window.location.href =selection+"&token="+token;
    }
}
function doLogout(){
    window.location.href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f46&token=9669efc3312c464416c2c50f37bb68cc";
}

function logClicked(){
    if(lgclked){
        return false;
    }
    lgclked = true;
    
    window.location.href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f46&token=9669efc3312c464416c2c50f37bb68cc";
    return true;
}


</script>
<script type="text/javascript">
    var flashvars = {};
    var params = {};
    params.wmode = "transparent";
    var attributes = {};
    swfobject.embedSWF('/front/PIBCust/framework/skins/PIBMass/assets/swf/deposit.swf', 'site-flash', '300', '59', '9.0.0', false,flashvars, params, attributes);
</script>

<a name="Top"></a>
<div id="bgtop" class="wrapper">
    <div id="header">
        <div id="header-left">
            <div id="site-logo-container">
                <div id="site-logo">
                    <img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/uob-logo.jpg'/>
                </div>
                <div id="site-welcome">
                    <h3 id="welcome-text">Welcome to UOB</h3>
                </div>
            </div>
            <div id="site-animation">
                <div id="site-flash"> 
                <p><a href="http://get.adobe.com/flashplayer"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p> 
                </div> 
            </div>
        </div>
        
        <div id="header-right">
        You are logged into a secured environment.
            <div class="button-alignR">
                <div>
                        <button type="submit" class="button-alignR btnLogout" value=" " onclick="return logClicked();"> </button>
                </div>
            </div>
        </div>
        
        <div style="clear:both;"></div>
    </div>


        


<div id="menu">




<iframe src="/front/ssi/top_navigation/personal/menu.html" frameborder="0" width="940" scrolling="no" height="65" marginheight="0" marginwidth="0" id="5169450780"/></iframe></div><div id="content"><div id="sidebar">



<input type="hidden" id="publicKey" name="publicKey" value="30819f300d06092a864886f70d010101050003818d0030818902818100a86f2b699b0c70e6b487d6e2c48c17c4ab22e9cd90739cf2f4d5356f857f2efe0487295d4053fda9d6aac7b7932f8243b84f1cbd199face20660d756d2f7c06e9ea76aa661934c1f28c3c5414f71ef50f4df628d71c7fbcdcbc1ef684575827e40b5952c6359d3c5c2782ec466cbfe72dab4eb0d59c4948f2e7b08f38894c8d30203010001"> 
<input type="hidden" id="challenge" name="challenge" value="ygxVHFpsALo="> 

        <h2 id="segmentlogo"></h2>
        
            <h4>Personal Internet Banking</h4>

        <div class="sidebar-panel"> 
            <div class="SideMenuHeader">&nbsp;&nbsp;Account Information</div><div class="thelanguage"><ul><li><table><tr><td valign="top" width="1px"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_arrow_left_1stlevel_light.gif" /></td><td style="text-align:left;"><a onClick="javascript:return setSubmitVal();"   href="/front/AccountEnquiry1FA">Accounts Summary</a></td></tr></table></li><li><div class="subexpandable" >&nbsp;&nbsp;Manage My Accounts</div></li><div class="subcategoryitems"><ul><li><table><tr><td valign="top" width="1px"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_arrow_left_1stlevel_light.gif"/></td><td><a onClick="javascript:return setSubmitVal();"   href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f4a&amp;token=9669efc3312c464416c2c50f37bb68cc">Account Summary View</a></td></tr></table></li></ul></div></ul></div><div class="SideMenuHeader">&nbsp;&nbsp;View Rates</div><div class="thelanguage"><ul><li><table><tr><td valign="top" width="1px"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_arrow_left_1stlevel_light.gif" /></td><td style="text-align:left;"><a onClick="javascript:return setSubmitVal();"   href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f4b&amp;token=9669efc3312c464416c2c50f37bb68cc">View Unit Trust Prices</a></td></tr></table></li><li><table><tr><td valign="top" width="1px"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_arrow_left_1stlevel_light.gif" /></td><td style="text-align:left;"><a onClick="javascript:return setSubmitVal();"   href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f4c&amp;token=9669efc3312c464416c2c50f37bb68cc">View Foreign Exchange Rates</a></td></tr></table></li><li><table><tr><td valign="top" width="1px"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_arrow_left_1stlevel_light.gif" /></td><td style="text-align:left;"><a onClick="javascript:return setSubmitVal();"   href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f4d&amp;token=9669efc3312c464416c2c50f37bb68cc">View Gold & Silver Rates</a></td></tr></table></li></ul></div><div class="SideMenuHeader">&nbsp;&nbsp;Customer Service</div><div class="thelanguage"><ul><li><table><tr><td valign="top" width="1px"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_arrow_left_1stlevel_light.gif" /></td><td style="text-align:left;"><a onClick="javascript:return setSubmitVal();"   href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f4f&amp;token=9669efc3312c464416c2c50f37bb68cc">Change Password</a></td></tr></table></li></ul></div>               
        </div>
        </div><div id="main"><div id="page-actions">











<script type="text/javascript" src="/front/PIBCust/framework/skins/PIBMass/assets/js/thickbox.js"></script>   
<div ><a href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/com/uob/pib/pageflow/common/faq/processSecureEmailPage.do?source=frame&token=9669efc3312c464416c2c50f37bb68cc&keepThis=true&_pageLabel=faq_1&TB_iframe=true&width=650&height=500" id="null" class="thickbox" title="Email Us">
            <img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_secure-email2.gif'  width="23px" height="23px"/>  
        </a>
        
        <a onClick="javascript:return setSubmitVal();" href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f48&token=9669efc3312c464416c2c50f37bb68cc"  style="cursor:pointer" title="Home">
                <img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_home2.gif'  alt="home"  title="Home"  width="23px" height="23px"/>
            </a>
        
        
        
        
            <a href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/com/uob/pib/pageflow/common/faq/processFAQOpenPage.do?source=frame&token=9669efc3312c464416c2c50f37bb68cc&keepThis=true&_pageLabel=faq_1&TB_iframe=true&width=650&height=500" id="null" class="thickbox" title="FAQ">
            <img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_faq2.gif'  width="23px" height="23px"/>  
        </a>
        
        <a href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/com/uob/pib/pageflow/common/faq/processContactUs.do?source=frame&token=9669efc3312c464416c2c50f37bb68cc&keepThis=true&_pageLabel=faq_1&TB_iframe=true&width=650&height=500" id="null" class="thickbox" title="Contact Us">
            <img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_contact2.gif'   width="23px" height="23px"/>  
        </a>
        <a href="https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/com/uob/pib/pageflow/common/faq/processLock.do?source=frame&token=9669efc3312c464416c2c50f37bb68cc&keepThis=true&_pageLabel=faq_1&TB_iframe=true&width=650&height=500" id="null" class="thickbox" title="Secure Site Info">
            <img src='/front/PIBCust/framework/skins/PIBMass/assets/images/common/icon/icon_security.gif'  width="23px" height="23px"/>  
        </a>
        </div></div><div style="clear:both"></div><table id="table-main"><tbody>



 






                    
                
    
     <tr class="row-whitebg">
        <td>
            <div class="main-title"><div  class=main-title><b>Welcome to UOB Personal Internet Banking</b></div>    </div>
        </td>
    </tr> 
    <tr class="row-whitebg">

    </tr>
    
                
                
                    
                
    
    
    <tr class="row-whitebg">
        <td><div><div class=row-greetingmsg>Good Morning </div>    </div></td>
    </tr>
                
                
                    
                
    
    
    <tr class="row-whitebg">
        <td><div><div class=row-greetingmsg>Your Last Log in was on <b>08 Sep 2011 11:48 PM (Singapore Time)</b></div>    </div></td>
    </tr>
                
                
    
    
    
    
    <tr class="row-whitebg">
        <td valign="top"><div><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/line1.gif"/></div></td>
    </tr>
<style>.vert-align-top {vertical-align:top;}</style><tr class="row-whitebg"><td class="vert-align-top width-765"><table id="table-main2"><tr><td class="vert-align-top width-565">






<div netui:idScope="PERSHOME" > 
<script>
    function setAccountCode(accountCode){
        var elem = document.getElementById(portletName+"viewAccountSumCode");
        elem.value = accountCode;
        return true;
    }  
</script> 
<form name="PERSHOME.accountSummaryForm" id="PERSHOME.accountSummaryForm" action="/front/PIBCust/appmanager/Cust/1FA?_nfpb=true&amp;_windowLabel=PERSHOME&amp;PERSHOME_actionOverride=%2Fcom%2Fuob%2Fpib%2Fpageflow%2Faccenqservices%2Fpersonalizehomepage%2FprocessPreCapture&amp;_pageLabel=HOMEPAGE" method="post" onreset="return checkReset()" onsubmit="return false"><input type="hidden" name="reqActionId" id="reqActionId"  value="1315499742781100a4dbf">
<table><tr> 
<td>
<input type="hidden" id="PERSHOME.viewAccountSumCode" name="PERSHOME{actionForm.accountCode}" value="">  
</td></tr></table>
<table id="table-main">
    
        <tr> 
            <td class="table-header data-group-header shorttextleft">  
                <div class="button-alignL">
                    <a href="#" onclick="e2esubmit(false,'https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f50&amp;token=9669efc3312c464416c2c50f37bb68cc');return false;"><strong>Personalise this page</strong>&nbsp;</a>
                    to display 3 of your favourite accounts at a glance.
                </div>         
            </td>
        </tr>
        <tr> 
            <td>  
                <div class="button-alignL">
                    <a href="#" onclick="e2esubmit(false,'https://pib.uob.com.sg:443/PIBCust/appmanager/Cust/1FA/pib.c?__c=1f50&amp;token=9669efc3312c464416c2c50f37bb68cc');return false;"><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/pib_personalise_account_banner.jpg"  height="120px" width="565px"/></a>                 
                </div>         
            </td>
        </tr>
    
    
</table>     

 
 
 
 


 
 




</form><div id="duplicate" style="position:absolute; visibility:hidden; z-index:1000;"/><form action="dummy" method="post"><input type="hidden" name="PERSHOME{actionForm.encData}" id="encData"></form>
<script language="JavaScript">
    var formName=document.forms[0].name;
    var portletName=formName.replace('accountSummaryForm','');
</script>
</div><script language="JavaScript" type="text/JavaScript">
<!--

// **** Start the NetUI Framework Generated JavaScript ****

// Build the netui_tagIdNameMap table to map the tagId attributes
// to the real name written into the HTML
if (netui_tagIdNameMap == null)
   var netui_tagIdNameMap = new Object();
netui_tagIdNameMap.PERSHOME___accountSummaryForm="PERSHOME.accountSummaryForm"
netui_tagIdNameMap.PERSHOME___viewAccountSumCode="PERSHOME{actionForm.accountCode}"


// lookup by tagId to "real id"
function lookupIdByTagId(id, tag)
{
   var idScope = lookupIdScope(tag,".");
   return (idScope == "") ? id : idScope + id;
}

// lookup by tagId to "real name"
function lookupNameByTagId(id, tag)
{
   var idScope = lookupIdScope(tag,"_");
   if (idScope == "")
      return netui_tagIdNameMap[id];
   else
      return netui_tagIdNameMap[idScope  + "__" + id];
}

//Non-Legacy lookup method creating a fully qualified scope id
function lookupIdScope(tag,sep)
{
   var val = "";
   if (sep == null) sep = "";
   while (tag != null && tag.getAttribute != null) {
      try {
         var attrVal = tag.getAttribute("netui:idScope");
      } catch (e) { /* ignore, in IE6 calling on a table results in an exception */ }
      if (attrVal != null)
         val = attrVal + sep + val;
      tag = tag.parentNode;
   }
   return val;
}
-->
</script></td><td class="vert-align-top width-200">


<table class="vert-align-top table-sub width-140">
    <tr>
    <td  class="vert-align-top width-140">
            <div>
            <script type="text/javascript" src="/front/online_services/pib/promotions/pib_mini_tall_banner.js"></script>
            </div>
        </td>
    </tr> 
</table>
    </td></tr></table></td></tr>
<script src="/front/PIBCust/framework/skins/PIBMass/assets/js/announcements.js" type="text/javascript"></script>



<tr class="row-whitebg">
        <td valign="top">
            <iframe src="/front/online_services/pib/announcements/personal/index.html" frameborder="0" id="630037418" onload="resizeIframe(630037418)"/>
        </iframe>
        </td>
</tr>







    <tr class="row-whitebg">
        <td valign="top"><div><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/hdr_promotion.gif" width="69" height="11"></div></td>
    </tr>   
    <tr class="row-whitebg">
        <td valign="top"><div><img src="/front/PIBCust/framework/skins/PIBMass/assets/images/common/line1.gif" height="2"></div></td>
    </tr>
    <tr class="row-whitebg">
    <td>
        <table id="table-main4">
            <tr>
        <td valign="top"><div><script type="text/javascript" src="/front/online_services/pib/promotions/pib_footnote_banner_1.js"></script></div></td>
        <td valign="top"><div><script type="text/javascript" src="/front/online_services/pib/promotions/pib_footnote_banner_2.js"></script></div></td>
        <td valign="top"><div><script type="text/javascript" src="/front/online_services/pib/promotions/pib_footnote_banner_3.js"></script></div></td>
    </tr>
</table>
</tr>
    </td>

    </tbody></table></div><div style="clear:both;"></div></div>



<div id="footerNbg" class="wrapper">
<div id="footer-links">
        <div id="footer-privacy">
        <a href="http://www.uobgroup.com/privacy/index.html" target="Privacy">Privacy & Security</a>
        </div>
        <div id="footer-moreinfo">
        <a href="http://www.uobgroup.com/important/index.html" target="More">More Information</a> | 
        </div>
        <div id="footer-tnc">
        <a href="http://www.uob.com.sg/assets/pdfs/personal/ebanking/pubtnc.pdf" target="Terms">Terms & Conditions</a> | 
        </div>
        <ul>
            <li><a href="http://www.uobgroup.com/about/careers/why_join_uob/make_your_mark.html" target="Careers">Careers</a> |</li>
            <li><a href="http://www.uobgroup.com/contact/index.html" target="Contact">Contact Us</a> |</li>
            <li><a href="http://www.uobgroup.com/help/index.html" target="Help">Help</a> |</li>
            <li><a href="http://www.uobgroup.com/search/search.html" target="Search">Search</a> |</li>
            <li><a href="http://www.uobgroup.com/sitemap/index.html" target="Sitemap">Sitemap</a> |</li>
            <li><a href="http://www.uobgroup.com/other_uob_sites/index.html" target="Other UOB Sites">Other UOB Sites</a> </li>
        </ul>
    </div>
    <div id="footer-copyright">
        Copyright � 2010 United Overseas Bank Limited Co. Reg. No. 193500026Z. All Rights Reserved.
        
    </div>
</div>
</body></html>