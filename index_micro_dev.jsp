<head>
<jsp:include page="/include/header_doc.jsp" flush="false"/>  
<link rel="stylesheet" type="text/css" href="/onepage_fullscreen/full-page-scroll.css">
<!---S: 20220214부터 마이크로페이지 변경----->
<script>
$(document).ready(function() {

if (new Date() >= new Date('02/07/2022 16:20:00')            // *신버전 언제부터
            && new Date() < new Date('02/14/2022 08:59:59')) {        // 언제까지 실행하기 
            //alert('test');
            //$('container').addClass('a')
           $(document).ready(function () {
                $('.open_div').load("/index_bak_div.jsp");
            }); 
        } else if (new Date() >= new Date('02/14/2022 09:00:00')            // *구버전 언제부터
            && new Date() < new Date('02/14/2922 19:00:00')) {      // 언제까지 실행하기 
            $(document).ready(function () {
                $('.open_div').load("/index_open_div.jsp");
            }); 
        }
    });
</script>
<!---E: 20220214부터 마이크로페이지 변경----->


</head>
<body id="page-top" class="index darkBg">
	
     <div class="open_div"></div>
	
</body>

<script src="/onepage_fullscreen/full-page-scroll.js"></script>
	<script type="text/javascript">
		new fullScroll({
			displayDots: false,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease'
		});
	</script>