<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type"/>
<title>(주)제로데이시큐리티</title>
<link href="/css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
   background-color: #1d1d1d;
   margin-left: 0px;
   margin-top: 0px;
   margin-right: 0px;
   margin-bottom: 0px;
}
.style15 {color: #666666} -->

</style>
<script type="text/javascript" src="./jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="./jquery.cookie.js"></script>
<script type="text/javascript">
<!--
w = 420;    //팝업창의 너비
h = 430;    //팝업창의 높이

LeftPosition=(screen.width-w)/2; //현재 운영체제의 너비
TopPosition=(screen.height-h)/2; //현재 운영체제의 높이
   function f_form1(f){
      if( !f.id.value ){
         alert("아이디를 입력해 주세요.");
         f.id.focus();
         return false;
      }
      if( !f.passwd.value ){
         alert("비밀번호를 입력해 주세요.");
         f.passwd.focus();
         return false;
      }
      
      document.frm.submit();
   }
   
   function pop(){
      window.open('/mgr/member/mem_form.jsp','popup', 'width=520, height=500,left=0,top=0,toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no'); 
   }
    function systemInse(seq){
      window.open("/mgr/gesi/pop_view.jsp?bd_uid="+seq,"popup2", "width="+w+", height="+h+",left="+LeftPosition+",top="+TopPosition+",toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=yes, copyhistory=no");
    }
   function focus() {
      document.frm.id.focus();
   }
      
   
//-->
   
   
   //id 저장기능 부분
   $(document).ready(function(){
      if($.cookie('backofficeid')!=null && $.cookie('backofficeid')!=''){
         $('#idsave').attr("checked",true);
         $('#id').val($.cookie('backofficeid'));
         $('#passwd').focus();
      }
   });
   
   function cookieSave(){
      if($('#idsave').is(":checked")){
         $.cookie('backofficeid', $('#id').val(),{ expires: 7, secure: false });   
      }else{
         $.cookie('backofficeid',"");
      }
   }
</script>
</head>
<body onload="focus();">
        <form name="frm" method="post" action="/mgr/admin_login.jsp" onSubmit="f_form1(this);return false;">
        <input type="hidden" name="mode" value="login1"/>
        <input type="hidden" name="preURL" value=""/>
        </form>        
<table width="50%" align="center">
  <tr>
    <td height="200">&nbsp;</td>
  </tr>
  <tr>
    <td height="100" align="center"><img src="/img/logo.gif" width="290" height="70" /></td>
  </tr>
  <tr>
    <td align="center"><table width="764" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="/img/box_top.gif" width="764" height="14" /></td>
      </tr>
      <tr>
        <td align="center" background="/img/box_bg.gif" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="48%" valign="top"  style="padding-top:20px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="9%" height="35">&nbsp;</td>
                <td colspan="3" valign="top" align="left"><img src="/img/title_notice_02.gif" width="84" height="16" /></td>
              </tr>
              
             <tr>
                <td height="20">&nbsp;</td>
                <td width="5%" align="center"><img src="/img/arrow_02.gif" width="3" height="3" /></td>
                <td width="58%" align="left" onclick="systemInse('2')" style="cursor:pointer"><span class="style15">벤처기업인증이 완료되었습니다.</span></td>
                <td width="28%" align="center"><span class="style15">2013-10-25</span></td>
             </tr>      
      
             <tr>
                <td height="20">&nbsp;</td>
                <td width="5%" align="center"><img src="/img/arrow_02.gif" width="3" height="3" /></td>
                <td width="58%" align="left" onclick="systemInse('1')" style="cursor:pointer"><span class="style15">동부권 BI센타 우수기업으로 선정...</span></td>
                <td width="28%" align="center"><span class="style15">2013-07-20</span></td>
             </tr>      
      
              
 
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>              
            </table></td>
            <td width="2%" align="center"><img src="/img/line.gif" width="1" height="139" /></td>
            <td align="center" valign="top" style="padding-top:10px;"><table width="350" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="35" align="left"><img src="/img/title_login.gif" width="96" height="16" /></td>
              </tr>
              <tr>
                <td><table width="350" border="0"  cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="165"><table width="100%" cellpadding="0" cellspacing="0">
                        <!-- <tr>
                          <td width="5%">&nbsp;</td>
                          <td width="28%">&nbsp;</td>
                          <td width="2%">&nbsp;</td>
                          <td width="65%">&nbsp;</td>
                        </tr> -->
                        <tr>
                          <td align="left"><img src="/img/arrow_02.gif" width="3" height="3" /></td>
                          <td align="left"><img src="/img/txt_id.gif" width="32" height="11" /></td>
                          <td align="right">&nbsp;</td>
                          <td align="left">
                             <input type="text" class="INPUT2" name="id" id="id" style="width:100px"/>
                          </td>
                        </tr>
                        <tr>
                          <td height="5" colspan="4"></td>
                        </tr>
                        <tr>
                          <td align="left"><img src="/img/arrow_02.gif" width="3" height="3" /></td>
                          <td align="left"><img src="/img/txt_pw.gif" width="43" height="11" /></td>
                          <td align="right">&nbsp;</td>
                          <td align="left"><input name="passwd" type="password" class="INPUT2" id="passwd"  style="width:100px"/></td><td align="right"></td>
                        </tr>
                        <!-- <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr> -->
                    </table></td>
                    <td width="173"><table width="95%">
                        <tr>
                          <td><input type="image" src="/img/btn_login.gif" width="77" height="47" style="cursor:pointer;border:0px" onclick="cookieSave()"/></td>
                          <td><a href ="javascript:pop()"><img src="/img/btn_join.gif" name="searchBtn" width="77" height="47"border="0"/></a></td>
                        </tr>
                    </table></td>
                    </tr>
                    <tr>
                    <td colspan="2" style="text-align:left;padding-left:10px"><input type="checkbox" name="idsave" id="idsave" style="background-color: #000000"/>아이디저장</td>
                    </tr>
                
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="/img/box_bottom.gif" width="764" height="13" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>