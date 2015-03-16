<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="No-Cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="viewport" content="width=1024" />
    <meta name="keywords" content="CGV, ��������, ��ȭ��, ����, ��ȭ, Ƽ��, �ڽ����ǽ�, ����, Movie, Theater, Cinema, Cgv, cgv, ����, ����" />
    <meta name="description" content="CGV�� ����ȭ�� ������ȭ�� �ְ��� ���񽺷� ������ ���� �� ���� ������ �����մϴ�. CGVȨ�������� ���� ��ȭ ���ŻӸ� �ƴ϶� �� �̻��� ���񽺿� ������ �����ϰ�, �پ��� ��ſ�� Ư���� ������ �����ϰ��� �մϴ�." />
    <meta property="og:site_name" content="��ȭ �� �̻��� ����. CGV"/>
    <meta id="ctl00_og_title" property="og:title" content="ȸ������ &lt; ȸ������ | ��ȭ �� �̻��� ����. CGV"></meta>
	<meta id="ctl00_og_description" property="og:description" content=""></meta> 
    <meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/common/cgv_200x200.jpg"></meta>

    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">ȸ������ &lt; ȸ������ | ��ȭ �� �̻��� ����. CGV</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="print" type="text/css" href="http://img.cgv.co.kr/R2014/css/print.css" />
    <link rel="stylesheet" type="text/css" href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.utils.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.init.js"></script>
    <!--[if lte IE 9]><script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
    
    <!-- �������� Header Start--> 
    

    <!--/�������� Header End--> 
   	<jsp:include page="script.jsp" />
    
</head>
<body class="">

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">���� ������ �ٷΰ���</a>
</div>
<div id="cgvwrap">
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	<!-- Header -->
	<div id="header">
		<jsp:include page="../layout/header.jsp" />
	</div>
	<!-- /Header -->
	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- ���� ����̹��� ��� �� class="bg-bricks" ���� / ����̹����� ���� ��� class ����  -->

        <!-- LineMap -->

        <div id="ctl00_navigation_line" class="linemap-wrap">
            <jsp:include page="linemap.jsp" />
		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			

<!-- �������� ���� -->
<div class="wrap-join">
    <div class="sect-join">
        <div class="h-join">
            <h3 class="hidden">��ȭ �� �̻��� ����! CGV�� ���Ű� ȯ���մϴ�. </h3>
            <p>���� ���ʷ� ��Ƽ�÷��� ������ �����Ͽ� ��ȭ������ ���ο� Ʈ���带 �̲��� �� CGV�� <br />
			���� ���� �¸� �� ���񽺿� �ְ��� ����Ͽ�� �۷ι� ��ȭ, �������θ�Ʈ �÷������� �����ϰ� �ֽ��ϴ�. </p>
        </div>
        <div class="box-joininfo">
            <div class="box-inner">
                <h4>CGV + CJ ONE ����ȸ�����Ծȳ� <a href="http://www.cjone.com/cjmportal/hpmf01Q2Form.do?coopco_cd=7010&brnd_cd=1000" target="_blank" title="��â" class="round gray"><span>���û󼼺���</span></a></h4>
                <p>CGV�� CJ ONE�� ���� �귣���̸�, CJ ONE ���� ȸ������ �����Ͻø� CGV�� CJ ONE�� ���񽺸� ��� �̿��Ͻ� �� �ֽ��ϴ�.  <br />
                CJ ONE ���� ȸ���� CJ ONE ���� �귣�� ��ǰ/���� ���� �� 0.1% ~ 5% CJ ONE ����Ʈ ���������� ������ �� �ֽ��ϴ�. <br />
                ������ CJ ONE ����Ʈ�� ��� CJ ONE ���� �귣�� ���忡�� ����ó�� ��� �����մϴ�. </p>
            </div>
        </div>
        <a href="#" target="_blank" title="��â" class="link-join">CGV + CJONE ����ȸ�� ����</a>
    </div>
    <div class="sect-alliance">
        <h4>�ֿ� ���� �귣�� �ȳ� <em>(2013�� 6�� ����)</em></h4>
        <p>CGV, �ѷ��긣, ����, CJ������, CJmall, tving, ��θ����, Mnet, �ø��꿵, CJ�¸�Ʈ,�����÷��̽�, ����, �ݵ彺��ũ���Ӹ�, ���̳����丮, ��Ǫ�����, <br />
        �ǼŽ�����, ���÷��̽�, ����Ŀ��, ���������,���� ����, MPub, CJǪ�����, �� ������ũ �Ͽ콺 ���� ����, <br />
        CJ THE KITCHEN, CJ E&amp;M, ���̳����丮 ������Ʈ, ���� ĳġ��, CJ����, <br />
        CJ�������̼��� ���»���,  CJ E&amp;M ���� ���� ����, ������� <br />
        </p>
        <dl class="box-operationguide">
            <dt>�̿�ȳ�</dt>
            <dd>������ ���� ȸ�� ���� �ȳ�</dd>
            <dd>- CJ ONE ȸ�� ���� �� ������ ȸ�������� ������ �� �ֽ��ϴ�.</dd>
            <dd>-  ������ ���� ȸ�� ������ ���, The CJī�� ���ü���(������ ����, �������� �ٿ�ε�)�� �Ұ��մϴ�.   </dd>
            <dd><a href="/user/login/ipin-guide.aspx" class="round black"><span>������ȸ�� �ȳ�</span></a></dd>
        </dl>
    </div>
</div>
<!-- �������� �� --> 


            <!--/ Contents End -->

		</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->
	<!-- Footer -->
	<div id="footer">
		<jsp:include page="../layout/bottom.jsp" />
	</div>
	<!-- /Footer -->

    <!-- Aside Banner :  -->
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/" onclick="setClickLog('/����/����ũ/CGV����');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="CGV THEATER" /></a>
				<a href="/arthouse/" onclick="setClickLog('/����/����ũ/CGV�̺�Ʈ');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="CGV arthouse" /></a>
				<a href="/theaters/special/" onclick="setClickLog('/����/����ũ/CGVƯ����');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="CGV SPECIAL" /></a>
				<a href="http://phototicket.cgv.co.kr/" target="_blank"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif" alt="CGV ����Ƽ��" /></a>
				<a href="/user/mycgv/reserve/" class="required-login" data-url="/user/mycgv/reserve/" onclick="setClickLog('/����/����ũ/CGV���ų���');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="CGV TICKET INFO" /></a>
				<a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx" onclick="setClickLog('/����/����ũ/CGV��������');"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="CGV DISCOUNT INFO" /></a>
			</div>
		</div>
		<div class="btn-top">
			<a href="#" onclick="scrollTo(0,0);return false;" onclick="setClickLog('/����/����ũ/TOP��ư);"><span>�ֻ������ �̵�</span></a>
		</div>
	</div>
	<!-- //Aside Banner -->
    
</div>


<script type="text/template" id="temp_popup_movie_player">
<div class="popwrap">
    <div class="sect-layerplayer">
        <div class="cols-pop-player">
            <h1 class="title" id="movie_player_popup_title"></h1>
            <div class="col-pop-player">
                <div class="warp-pop-player" style="position: relative;">
                    <iframe id="ifrm_movie_player_popup" name="ifrm_movie_player_popup" src="about:blank" style="width:800px;height:450px;" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
					
					<div class="sect-replay" style="display:none" id="pop_player_relation_wrap">
						<button class="btn-replay movie_player_inner_popup" type="button" data-gallery-idx="0" id="btn_movie_replay">�ٽú���</button>
						<!-- �������� ���� -->
						<div class="wrap-relationmovie" id="pop_player_relation_item_wrap">
							<strong class="title">���ÿ���</strong>
							<ul id="pop_player_relation_movie">
                                <li></li>
                            </ul>
						</div><!-- .wrap-relationmovie -->
					</div><!-- .sect-replay -->
					
                </div><!-- .warp-pop-player -->
                <div class="descri-trailer">
                    <strong class="title">���󼳸�</strong>
                    <textarea readonly="readonly" id="movie_player_popup_caption"></textarea>
                </div>
            </div><!-- .col-player -->
            <div class="col-pop-playerinfo">
                <div id="movie_player_popup_movie_info"></div>
                <div class="sect-trailer">
                    <strong class="title">�űԿ���</strong>
                    <ul>
                        
                        <li>
                            <div class="box-image" style="margin-bottom:0px;">
                                <a href="#" title="[�̹����̼� ����]�� ��ٿ� �ٷ� Ʃ�� ���� ���󺸱�" class="movie_player_inner_popup" data-gallery-idx="125762">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/78092/78092125762_148.jpg" 
                                        alt="�̹����̼� ����_Ʈ���Ϸ�" />
                                        <span class="ico-play">���󺸱�</span>
                                    </span>
                                </a>
                            </div>
                            <div class="box-contents">
                                <a href="#" title="[�̹����̼� ����]�� ��ٿ� �ٷ� Ʃ�� ���� ���󺸱�" class="movie_player_inner_popup" data-gallery-idx="125762">
                                    <strong class="title">
                                                                        
                                        [�̹����̼� ����]
                                        �� ��ٿ� �ٷ� Ʃ�� ����
                                    </strong>
                                </a>
                            </div>
                        </li>
                        
                        <li>
                            <div class="box-image" style="margin-bottom:0px;">
                                <a href="#" title="[���󿡸�:���Ĺ��̹�]������ ���󿡸� ��ǳ ���� ���󺸱�" class="movie_player_inner_popup" data-gallery-idx="125793">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/78029/78029125793_148.jpg" 
                                        alt="���󿡸�:���Ĺ��̹�_Ʈ���Ϸ�" />
                                        <span class="ico-play">���󺸱�</span>
                                    </span>
                                </a>
                            </div>
                            <div class="box-contents">
                                <a href="#" title="[���󿡸�:���Ĺ��̹�]������ ���󿡸� ��ǳ ���� ���󺸱�" class="movie_player_inner_popup" data-gallery-idx="125793">
                                    <strong class="title">
                                                                        
                                        [���󿡸�:���Ĺ��̹�]
                                        ������ ���󿡸� ��ǳ ����
                                    </strong>
                                </a>
                            </div>
                        </li>
                        
                        <li>
                            <div class="box-image" style="margin-bottom:0px;">
                                <a href="#" title="[������ �ô�]����/���ϴ� ĳ���� ���� ���󺸱�" class="movie_player_inner_popup" data-gallery-idx="125788">
                                    <span class="thumb-image">
                                        <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/78105/78105125788_148.jpg" 
                                        alt="������ �ô�_Ʈ���Ϸ�" />
                                        <span class="ico-play">���󺸱�</span>
                                    </span>
                                </a>
                            </div>
                            <div class="box-contents">
                                <a href="#" title="[������ �ô�]����/���ϴ� ĳ���� ���� ���󺸱�" class="movie_player_inner_popup" data-gallery-idx="125788">
                                    <strong class="title">
                                                                        
                                        [������ �ô�]
                                        ����/���ϴ� ĳ���� ����
                                    </strong>
                                </a>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </div><!-- .col-playerinfo -->
        </div><!-- .cols-player -->
        <button type="button" class="btn-close">�ݱ�</button>
    </div>
</div>
</script>

<script id="temp_popup_movie_player_movie_info" type="text/x-jquery-tmpl">
<div class="box-image">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} �󼼺��� ��â">
        <span class="thumb-image">
            <img src="${PosterImage.MiddleImage}" alt="${Title} ������" />
            <span class="ico-grade ${MovieGrade.StyleClassName}">${MovieGrade.GradeText}</span>
        </span>
    </a>   
</div>
<div class="box-contents">
    <a href="/movies/detail-view/?midx=${MovieIdx}" title="${Title} �󼼺��� ��â">
        <strong class="title">${Title}</strong>
    </a>
    <span class="txt-info" style="margin-bottom:2px;">
        <em class="genre">${GenreText}</em>
        <span>
            <i>${OpenDate}</i>
            <strong>${OpenText}</strong>
            {{if D_Day > 0}}
                <em class="dday">D-${D_Day}</em>
            {{/if}}
        </span>
    </span>
{{if IsTicketing }}
    <a class="link-reservation" href="/ticket/?MOVIE_CD=${CGVCode}&MOVIE_CD_GROUP=${CGVCode}">����</a> 
{{/if}}
</div>
</script>

<script id="temp_popup_movie_player_relation_movie_item" type="text/x-jquery-tmpl">
<li>
    <div class="box-image">
        <a href="#" title="${Title} ���󺸱�" class="movie_player_inner_popup" data-gallery-idx="${GalleryIdx}">
            <span class="thumb-image">
                <img src="${ImageUrl}" 
                alt="${Title}_Ʈ���Ϸ�" />
                <span class="ico-play">���󺸱�</span>
            </span>
        </a>
    </div>
</li>
</script>

<script type="text/javascript">
    //<![CDATA[
    function closeBanner(){        
        $('#cgv_main_ad').remove();     
        for(var i = 0; i < 2; i++) {
            window.setTimeout(function(){
                $(window).resize()                
            }, 30)
        }
    }
    function showPlayEndEvent() {
        $('#pop_player_relation_wrap').show();
        $('#btn_movie_replay').focus();
    }

    (function ($) {
        $(function () {

            /* side menu move script */
            var isBricks = false;
            $('.sect-aside-banner').asideMenu({'isBricks': isBricks });            
            $('.movie_player_popup').moviePlayer();     //�������÷��̾�                       
            //Ư���� Ŭ��
            $('#header a.specialclub').on('click', function() { 
                openSpecialClub();
                return false;
            });

            //Ư���� Ŭ��
            $('.sect-special a.specialclub').on('click', function() {
                openSpecialClub();
                return false;
            });
            

            //������Ÿ��
            $('.special1_pop').on('click', function () {
                openDownTown();
                return false;
            });             
            // �˻� auto validate version.
            $('.btn-go-search').on('click', function () {
                var $frmSearch = $(this).parent().parent('form');
                $frmSearch.submit();
                return false;
            });

            //�˻� �Է�â Ŭ�� �� ���� reset
            $('#header_keyword').on('click', function() {
                $(this).attr('placeholder', '');
                $('#header_ad_keyword').val('');
            });

            //���հ˻� ��� �˻� ��ư
            $('#btn_header_search').on('click', function() {
                if($('#header_ad_keyword').val() != "")
                    goSearch($('#header_ad_keyword'));      //����
                else
                    goSearch($('#header_keyword'));

                return false;
            });


            //���հ˻� �˻��� �Է�â
            $('#header_keyword').keyup(function(e) {
                if (e.keyCode == 13) goSearch($('#header_keyword'));        
            });

            //���հ˻�
            function goSearch($objKeyword) {
                
                if($objKeyword.val() == "") {
                    alert("�˻�� �Է��� �ּ���");
                    $objKeyword.focus();
                    return false;
                }

                location = "/search/?query=" + escape($objKeyword.val());
            }
			
            //���ν�ŵ�׺�
            $('#skipHeader').on('click', function(){
                var $ctn = $('#contents');
                $ctn.attr({
                    tabIndex : -1
                }).focus();				
                return false;
            });

            //���� URL �ش��Ķ���� ��ü
            function updateQueryStringParameter(uri, key, value) {
                var re = new RegExp("([?|&])" + key + "=.*?(&|#|$)", "i");
                if (uri.match(re)) {
                    return uri.replace(re, '$1' + key + "=" + value + '$2');
                } else {
                    var hash =  '';
                    var separator = uri.indexOf('?') !== -1 ? "&" : "?";    
                    if( uri.indexOf('#') !== -1 ){
                        hash = uri.replace(/.*#/, '#');
                        uri = uri.replace(/#.*/, '');
                    }
                    return uri + separator + key + "=" + value + hash;
                }
            }
            //����Ϲ��� ����
            $('.go-mobile').on('click', function() {
                location.replace(updateQueryStringParameter(location.href, "IsMobile", "N"));
                return false;
            });

        });
    })(jQuery);
	
    function goFamilySite() {
        var famulySiteURL = $(familysite).val();
        if (famulySiteURL != "") {
            var win = window.open(famulySiteURL, 'winFamilySite')
            win.focus();
        }
    }
    
    //]]>
</script>



<script language="javascript" type="text/javascript">
    //201402 SYH GA�߰�
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-47126437-1', 'cgv.co.kr');
    ga('send', 'pageview');
</script>

<!-- ������� ����±� -->
<script type="text/javascript" language="javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>

</body>
</html>