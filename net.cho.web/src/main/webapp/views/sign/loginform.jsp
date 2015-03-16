<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<ul class="tab-menu-round">
            <li class="on">
                <a href="/user/login/">로그인</a>
            </li>
            <li>
                <a href="/user/guest/">비회원로그인</a>
            </li>
        </ul>
        <div class="box-login">
            <h3 class="hidden">회원 로그인</h3>
            <form id="form1" method="post" action="#" novalidate="novalidate" onsubmit="return false">
            <fieldset>
                <legend>회원 로그인</legend>
                <p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
                <div class="login">
                    <input type="text" title="아이디" id="txtUserId" name="txtUserId" data-title="아이디를 " data-message="입력하세요." required="required" value="" />
                    <input type="password" title="패스워드" id="txtPassword" name="txtPassword" data-title="패스워드를 " data-message="입력하세요." required="required" />
                </div>
                <div class="save-id"><input type="checkbox" id="save_id"/><label for="save_id">아이디 저장</label></div>
                <button type="submit" id="submit" title="로그인"><span>로그인</span></button>
                <div class="login-option">
                    <a href="/user/login/find-account.aspx">아이디 찾기</a>
                    <a href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a>
                </div>
            </fieldset>
            </form>           