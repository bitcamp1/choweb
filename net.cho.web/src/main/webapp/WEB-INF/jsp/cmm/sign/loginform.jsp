<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<ul class="tab-menu-round">
            <li class="on">
                <a href="/user/login/">�α���</a>
            </li>
            <li>
                <a href="/user/guest/">��ȸ���α���</a>
            </li>
        </ul>
        <div class="box-login">
            <h3 class="hidden">ȸ�� �α���</h3>
            <form id="form1" method="post" action="#" novalidate="novalidate" onsubmit="return false">
            <fieldset>
                <legend>ȸ�� �α���</legend>
                <p>���̵� ��й�ȣ�� �Է��Ͻ� ��, �α��� ��ư�� Ŭ���� �ּ���.</p>
                <div class="login">
                    <input type="text" title="���̵�" id="txtUserId" name="txtUserId" data-title="���̵� " data-message="�Է��ϼ���." required="required" value="" />
                    <input type="password" title="�н�����" id="txtPassword" name="txtPassword" data-title="�н����带 " data-message="�Է��ϼ���." required="required" />
                </div>
                <div class="save-id"><input type="checkbox" id="save_id"/><label for="save_id">���̵� ����</label></div>
                <button type="submit" id="submit" title="�α���"><span>�α���</span></button>
                <div class="login-option">
                    <a href="/user/login/find-account.aspx">���̵� ã��</a>
                    <a href="/user/login/find-pw.aspx?act=pw">��й�ȣ ã��</a>
                </div>
            </fieldset>
            </form>           