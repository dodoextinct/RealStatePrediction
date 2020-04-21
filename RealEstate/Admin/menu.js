//----------DHTML Menu Created using AllWebMenus PRO ver 4.2-#662---------------
awmRelativeCorner=8;
var awmMenuName='menu';
var awmLibraryBuild=662;
var awmLibraryPath='/awmdata';
var awmImagesPath='/awmdata';
var awmSupported=(navigator.appName + navigator.appVersion.substring(0,1)=="Netscape5" || document.all || document.layers || navigator.userAgent.indexOf('Opera')>-1 || navigator.userAgent.indexOf('Konqueror')>-1)?1:0;
if (awmAltUrl!='' && !awmSupported) window.location.replace(awmAltUrl);
if (awmSupported){
var nua=navigator.userAgent,scriptNo=(nua.indexOf('Safari')>-1)?7:(nua.indexOf('Gecko')>-1)?2:((document.layers)?3:((nua.indexOf('Opera')>-1)?4:((nua.indexOf('Mac')>-1)?5:1)));
var mpi=document.location,xt="";
var mpa=mpi.protocol+"//"+mpi.host;
var mpi=mpi.protocol+"//"+mpi.host+mpi.pathname;
if(scriptNo==1){oBC=document.all.tags("BASE");if(oBC && oBC.length) if(oBC[0].href) mpi=oBC[0].href;}
while (mpi.search(/\\/)>-1) mpi=mpi.replace("\\","/");
mpi=mpi.substring(0,mpi.lastIndexOf("/")+1);
var e=document.getElementsByTagName("SCRIPT");
for (var i=0;i<e.length;i++){if (e[i].src){if (e[i].src.indexOf(awmMenuName+".js")!=-1){xt=e[i].src.split("/");if (xt[xt.length-1]==awmMenuName+".js"){xt=e[i].src.substring(0,e[i].src.length-awmMenuName.length-3);if (e[i].src.indexOf("://")!=-1){mpi=xt;}else{if(xt.substring(0,1)=="/")mpi=mpa+xt; else mpi+=xt;}}}}}
while (mpi.search(/\/\.\//)>-1) {mpi=mpi.replace("/./","/");}
var awmMenuPath=mpi.substring(0,mpi.length-1);
while (awmMenuPath.search("'")>-1) {awmMenuPath=awmMenuPath.replace("'","&#39;");}
document.write("<SCRIPT SRC='"+awmMenuPath+awmLibraryPath+"/awmlib"+scriptNo+".js'><\/SCRIPT>");
var n=null;
awmzindex=1000;
}

var awmSubmenusFrame='';
var awmSubmenusFrameOffset;
var awmOptimize=0;
var awmUseTrs=0;
var awmSepr=["0","","",""];
function awmBuildMenu(){
if (awmSupported){
awmImagesColl=["main-header.gif",8,29,"main-footer.gif",7,29,"main-button-tile.gif",4,29,"main-button-tile-over.gif",6,28,"main-button-left.gif",6,29,"main-button-left-over.gif",6,28,"main-button-right.gif",6,29,"main-button-right-over.gif",6,28,"spacer.gif",1,1,"sub-footer-tile.gif",2,5,"sub-footer-left.gif",55,5,"sub-footer-right.gif",58,5,"sub-button1-tile.gif",2,23,"sub-button1-left.gif",55,23,"sub-button1-right.gif",58,23];
awmCreateCSS(1,2,1,'#000000',n,n,'14px sans-serif',n,'none',0,'#000000','0px 0px 0px 0',4);
awmCreateCSS(0,2,1,'#000000',n,n,'14px sans-serif',n,'none',0,'#000000','0px 0px 0px 0',4);
awmCreateCSS(1,2,1,'#000000',n,n,'14px sans-serif',n,'none',0,'#000000','0px 0px 0px 0',0);
awmCreateCSS(0,2,1,'#000000',n,n,'14px sans-serif',n,'none',0,'#000000','0px 0px 0px 0',0);
awmCreateCSS(0,1,0,n,n,n,n,n,'none',0,'#000000',0,0);
awmCreateCSS(1,2,1,'#A0DFFF',n,2,'bold 10px Tahoma',n,'none',0,'#000000','2px 4px 0px 4',1);
awmCreateCSS(0,2,1,'#FFFFFF',n,3,'bold 10px Tahoma',n,'none',0,'#000000','2px 4px 0px 4',1);
awmCreateCSS(1,2,1,'#A0DFFF',n,2,'bold 10px Tahoma',n,'none',0,'#000000','2px 4px 0px 4',0);
awmCreateCSS(0,2,1,'#FFFFFF',n,3,'bold 10px Tahoma',n,'none',0,'#000000','2px 4px 0px 4',0);
awmCreateCSS(1,2,1,'#000000',n,9,'14px sans-serif',n,'none',0,'#000000','0px 0px 0px 0',0);
awmCreateCSS(0,2,1,'#FFFFFF',n,9,'14px sans-serif',n,'none',0,'#000000','0px 0px 0px 0',0);
awmCreateCSS(1,2,0,'#000066',n,12,'bold 10px Tahoma',n,'none',0,'#000000','2px 4px 0px 4',1);
awmCreateCSS(0,2,0,'#FFFFFF',n,12,'bold 10px Tahoma',n,'none',0,'#000000','2px 4px 0px 4',1);
var s0=awmCreateMenu(0,0,0,0,1,0,0,0,8,10,10,0,1,4,0,0,1,n,n,100,1,0,0,0,0);
it=s0.addItemWithImages(0,1,1,"","","","",0,0,0,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0);
it=s0.addItemWithImages(5,6,6,"  Home  ",n,n,"",n,n,n,3,3,3,n,n,n,"Admin.aspx",n,n,n,"Admin.aspx",n,0,0,2,4,5,5,6,7,7,0,0,0,0);
it=s0.addItemWithImages(7,8,8,"  Estate  ",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,n,n,0,0,2,4,5,5,6,7,7,0,0,0,0);
var s1=it.addSubmenu(0,0,-1,0,0,0,0,4,0,1,0,n,n,100,0,1,0);
it=s1.addItemWithImages(11,12,12,"  New  ",n,n,"",n,n,n,3,3,3,n,n,n,"NewEstate.aspx",n,n,n,"NewEstate.aspx",n,0,0,2,13,13,13,14,14,14,0,0,0,0);
it=s1.addItemWithImages(11,12,12,"  View/Modify  ",n,n,"",n,n,n,3,3,3,n,n,n,"EstateView.aspx",n,n,n,"EstateView.aspx",n,0,0,2,13,13,13,14,14,14,0,0,0,0);
it=s1.addItemWithImages(9,10,10,"","","","",8,8,8,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,10,10,10,11,11,11,0,0,0,0);
it=s0.addItemWithImages(5,6,6,"  Member List  ",n,n,"",n,n,n,3,3,3,n,n,n,"MemberView.aspx",n,n,n,"MemberView.aspx",n,0,0,2,4,5,5,6,7,7,0,0,0,0);
it=s0.addItemWithImages(5,6,6,"  Request List  ",n,n,"",n,n,n,3,3,3,n,n,n,"AllRequest.aspx",n,n,n,"AllRequest.aspx",n,0,0,2,4,5,5,6,7,7,0,0,0,0);
it=s0.addItemWithImages(5,6,6,"  Change Password  ",n,n,"",n,n,n,3,3,3,n,n,n,"ChngPwd.aspx",n,n,n,"ChngPwd.aspx",n,0,0,2,4,5,5,6,7,7,0,0,0,0);
it=s0.addItemWithImages(5,6,6,"  Help  ",n,n,"",n,n,n,3,3,3,n,n,n,"Help.aspx",n,n,n,"Help.aspx",n,0,0,2,4,5,5,6,7,7,0,0,0,0);
it=s0.addItemWithImages(2,3,3,"","","","",1,1,1,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0);
s0.pm.buildMenu();
}}
