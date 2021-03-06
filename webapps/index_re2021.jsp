<%@ page import="com.cntt.base.Const"%>
<%@ page import="com.cntt.util.JspUtils"%>
<%@ page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<% 	
	Calendar now = Calendar.getInstance();						
	String year = String.valueOf(now.get(Calendar.YEAR));
	String month = String.valueOf(now.get(Calendar.MONTH)+1);
	String date = String.valueOf(now.get(Calendar.DATE));
	String hour = String.valueOf(now.get(Calendar.HOUR_OF_DAY));
	String week = String.valueOf(now.get(Calendar.DAY_OF_WEEK));
	String min = String.valueOf(now.get(Calendar.MINUTE));
	String sec = String.valueOf(now.get(Calendar.SECOND));
	
	if(month.length() <= 1)
		month = '0'+month;
	
	if(date.length() <= 1)
		date = '0'+date;

	if(hour.length() <= 1)
		hour = '0'+hour;
	
	if(min.length() <= 1)
		min = '0'+min;

	if(sec.length() <= 1)
		sec = '0'+sec;	
	
	int nowDate = Integer.parseInt(year+month+date);
	int nowDateHour = Integer.parseInt(year+month+date+hour);
	String nowDateTime = year+month+date+hour+min+sec;
	
	//System.out.println("["+nowDate+"]");
%>

<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>AniJS - A ScrollReveal Demo</title>

    <link rel="shortcut icon" type="assets/image/x-icon" href="/scrollreveal/img/favicon.png">

    <!-- Bootstrap Core CSS -->
    <link href="/scrollreveal/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/scrollreveal/css/freelancer.css" rel="stylesheet" type="text/css">

    <!-- Animate CSS library -->
    <link href="/scrollreveal/css/anicollection.css" rel="stylesheet" type="text/css">


    <!-- Custom -->
    <link href="/scrollreveal/css/custom.css" rel="stylesheet" type="text/css">

    <!-- Syntax Highlight -->
    <link rel="stylesheet" href="/scrollreveal/css/markdown-highligth.css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- IE8 support for HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

<style>
@font-face {
    font-family: 'TmoneyRoundWindRegular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'TmoneyRoundWindExtraBold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindExtraBold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body,.navbar,h1, h2, h3, h4, h5, h6,header .intro-text .name{    font-family: TmoneyRoundWindExtraBold,TmoneyRoundWindRegular,Helvetica,Arial,sans-serif;}
</style>
</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">AniJS Demo</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#winners">Winners</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#intro">Intro</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#using">Using</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#source">Source</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="/scrollreveal/img/ball.png" alt="" data-anijs="if: scroll, on: window, do: rollIn animated, before: scrollReveal; if: load, on: window, do: rubberBand animated; if: mouseover, do: rubberBand animated">
                    <div class="intro-text">
                        <span class="name" data-anijs="if: animationend, on:.img-responsive, do: bounce animated, after: removeAnim">Tribute</span>
                        <hr class="star-light" data-anijs="if: animationend, on:span.name, do: rotateIn animated, after: removeAnim">
                        <span class="skills">A ScrollReveal demo, using <a style="color:white; text-decoration:underline;" href="http://anijs.github.io/" target="_blank">AniJS</a></span><br>
                        <iframe class="first-iframe" style="margin-top:10px;" data-anijs="if: animationend, on:.img-responsive, do: hinge animated" src="http://ghbtns.com/github-btn.html?user=anijs&repo=anijs&type=watch&count=true&size=large"
  allowtransparency="true" frameborder="0" scrolling="0" width="152" height="30"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section id="winners">
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>World Cup winners</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: bounceInLeft animated, before: scrollReveal">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/2010.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: rubberBand animated, before: scrollReveal">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/2006.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: fadeInRightBig animated, before: scrollReveal">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/2002.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: bounceInLeft animated, before: scrollReveal">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1998.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: flipInY animated, before: scrollReveal">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1994.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: fadeInRightBig animated, before: scrollReveal">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1990.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: bounceInLeft animated, before: scrollReveal">
                    <a href="#portfolioModal7" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1986.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: bounceInLeft animated, before: scrollReveal">
                    <a href="#portfolioModal8" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1982.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: bounceInLeft animated, before: scrollReveal">
                    <a href="#portfolioModal9" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1978.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: bounceInUp animated, before: scrollReveal">
                    <a href="#portfolioModal10" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1974.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: rotateIn animated, before: scrollReveal">
                    <a href="#portfolioModal11" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1970.png" class="img-responsive" alt="" />
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item" data-anijs="if: scroll, on: window, do: bounceInUp animated, before: scrollReveal">
                    <a href="#portfolioModal12" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="/scrollreveal/img/portfolio/1966.png" class="img-responsive" alt="" />
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section class="success" id="intro" data-anijs="if: scroll, on:window, do: rollIn animated, before: scrollReveal, after: removeAnim">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Intro</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <p class="contrast">
                        ScrollReveal is an <a href="http://anijs.github.io/">AniJS</a> helper function, that allows you to animate several components when they enter the viewport. If you don't now nothing about <a href="http://anijs.github.io/">AniJS</a>, you can find documentation an examples at the <a href="http://anijs.github.io/">official site</a>.
                    </p>

                    <p class="text-center special-sintax">
                    <strong class="anijs-sintax if">If:</strong> scroll, <strong class="anijs-sintax">on:</strong> window, <strong class="anijs-sintax">do:</strong> animation, <strong class="anijs-sintax">to:</strong> any element
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="http://anijs.github.io/" class="btn btn-lg btn-outline">
                        Go to AniJS
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section id="using" data-anijs="if: scroll, on:window, do: bounceInLeft animated, before: scrollReveal, after: removeAnim">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Using</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-9 col-lg-offset-1">
                    <p>1 - Put the ScrollReveal helper file on your page after the AniJS core file.</p>

                <!-- Syntax Highlight -->
 <div class="highlight highlight-xml"><pre><span class="c">&lt;!-- AniJS Core File --&gt;</span>
<span class="nt">&lt;script</span> <span class="na">src=</span><span class="s">"anijs-min.js"</span><span class="nt">&gt;&lt;/script&gt;</span>

<span class="c">&lt;!-- ScrollReveal Helper --&gt;</span>
<span class="nt">&lt;script</span> <span class="na">src=</span><span class="s">"helpers/scrollreveal/anijs-helper-scrollreveal-min.js"</span><span class="nt">&gt;&lt;/script&gt;</span>
</pre></div>                <!-- End Syntax Highlight -->

                    <p>2- Create a declarative sentence with <strong>if</strong> , <strong>on</strong> and <strong>Before</strong> definitions as it is shown in this example:</p>
                <!-- Syntax Highlight -->
<div class="highlight highlight-xml"><pre><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"item"</span> <span class="na">data-anijs=</span><span class="s">"if: scroll, on: window, do: swing animated, before: scrollReveal"</span><span class="nt">&gt;&lt;/div&gt;</span>
</pre></div>
                <!-- End Syntax Highlight -->

                    <p>3 - Don't forget to add the CSS animation styles definition. </p>
                 <!-- Syntax Highlight -->
<div class="highlight highlight-xml"><pre><span class="nt">&lt;head&gt;</span>
    <span class="c">&lt;!-- AniCollection.css library --&gt;</span>
    <span class="nt">&lt;link</span> <span class="na">rel=</span><span class="s">"stylesheet"</span> <span class="na">href=</span><span class="s">"http://anijs.github.io/lib/anicollection/anicollection.css"</span><span class="nt">&gt;</span>
<span class="nt">&lt;/head&gt;</span>
</pre></div>
                 <!-- End Syntax Highlight -->

                    <p>4 - Full initialization code:</p>

                <!-- Syntax Highlight -->
<div class="highlight highlight-xml"><pre><span class="nt">&lt;head&gt;</span>
    <span class="c">&lt;!-- AniCollection.css library --&gt;</span>
    <span class="nt">&lt;link</span> <span class="na">rel=</span><span class="s">"stylesheet"</span> <span class="na">href=</span><span class="s">"http://anijs.github.io/lib/anicollection/anicollection.css"</span><span class="nt">&gt;</span>
<span class="nt">&lt;/head&gt;</span>
<span class="nt">&lt;body&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">id=</span><span class="s">"item"</span> <span class="na">data-anijs=</span><span class="s">"if: scroll, on: window, do: swing animated, before: scrollReveal"</span><span class="nt">&gt;</span>
        Cuba 2022
    <span class="nt">&lt;/div&gt;</span>

    <span class="c">&lt;!-- AniJS Core File --&gt;</span>
    <span class="nt">&lt;script</span> <span class="na">src=</span><span class="s">"bower_components/anijs/dist/anijs-min.js"</span><span class="nt">&gt;&lt;/script&gt;</span>
    <span class="c">&lt;!-- ScrollReveal Helper --&gt;</span>
    <span class="nt">&lt;script</span> <span class="na">src=</span><span class="s">"bower_components/anijs/dist/helpers/scrollreveal/anijs-helper-scrollreveal-min.js"</span><span class="nt">&gt;&lt;/script&gt;</span>
<span class="nt">&lt;/body&gt;</span>
</pre></div>
                <!-- End Syntax Highlight -->

                <p>For more details about how to use AniJS you may go to <a href="http://anijs.github.io/#using">AniJS Official Website</a>. Besides, if yo want to create your own helper functions you may read about it in  <a href="https://github.com/anijs/anijs/wiki/Writing-before-and-after-functions">Writing before and after functions </a>.</p>


               </div>
            </div>
        </div>
    </section>

    <footer id="source" class="text-center" data-anijs="if: scroll, on:window, do: flipInY animated, before: scrollReveal, after: removeAnim">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-8 col-lg-offset-2">
                        <h3>Source</h3>
                            <a href="https://github.com/anijs/examples/tree/gh-pages/scrollreveal" class="btn btn-md btn-outline">
                                Fork on GitHub <i class="fa fa-github"></i>
                            </a>
                            <a href="https://github.com/anijs/examples/archive/gh-pages.zip" class="btn btn-md btn-outline">
                                Download as ZIP <i class="fa fa-floppy-o"></i>
                            </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below" data-anijs="if: scroll, on: window, do: fadeInUp animated, before: scrollReveal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p>
                            Made with <span class="bounceIn animated infinite">♥</span> by <a style="color:#CCB2A3;"href="https://twitter.com/dariel_noel">@dariel_noel</a>.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </footer>

    <div class="scroll-top page-scroll visible-xs visble-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Spain 2010</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/2010.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                            In the final, Spain, the European champions, defeated third-time finalists the Netherlands 1–0 after extra time, with Andrés Iniesta's goal in the 116th minute giving Spain their first world title, becoming the eighth nation to win the tournament, and the first European nation to win the tournament outside its home continent.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>South Africa</strong>
                                </li>
                                <li>Best player: <strong>Diego Forlán</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Italy 2006</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/2006.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                Italy won the tournament, claiming their fourth World Cup title. They defeated France 5–3 in a penalty shootout in the final, after extra time had finished in a 1–1 draw. Germany defeated Portugal 3–1 to finish in third place.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>Germany</strong>
                                </li>
                                <li>Best player: <strong>Zinedine Zidane</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Brazil 2002</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/2002.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                Brazil won the tournament for a record fifth time, beating Germany 2–0 in the final.[1] Turkey beat South Korea 3–2 in the third place match.[2] France were the defending champions but were eliminated in the group stage after earning a single point.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host countrys: <strong>South Korea | Japan</strong>
                                </li>
                                <li>Best player: <strong>Oliver Kahn</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>France 1998</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1998.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                The tournament was won by France, who beat Brazil 3–0 in the final. France won their first title, becoming the seventh nation to win a World Cup, and the sixth (after Uruguay, Italy, England, West Germany and Argentina) to win the tournament on home soil.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>France</strong>
                                </li>
                                <li>Best player: <strong>Ronaldo</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Brazil 1994</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1994.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                Brazil became the first nation to win four World Cup titles when they beat Italy 3–2 in a penalty shootout after the game ended 0–0 after extra time, the first World Cup final to be decided on penalties.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>United States<a href="http://startbootstrap.com"></a></strong>
                                </li>
                                <li>Best player: <strong>Romário</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Germany 1990</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1990.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                The tournament was won by West Germany, who claimed their third World Cup title by defeating reigning champions Argentina 1–0 in the final, a rematch of the previous final four years earlier.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>Italy<a href="http://startbootstrap.com"></a></strong>
                                </li>
                                <li>Best player: <strong>Salvatore Schillaci</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Argentina 1986</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1986.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                It was won by Argentina (their second title, after winning in 1978). Argentina was captained by Diego Maradona who scored the infamous "Hand of God" goal, as well as another voted "Goal of the Century", in the same quarter-final against England. These were two of the five goals that Maradona scored during the tournament, and he also created another five for his team-mates. Argentina beat West Germany 3–2 in the final at Mexico City's Estadio Azteca.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>Mexico<a href="http://startbootstrap.com"></a></strong>
                                </li>
                                <li>Best player: <strong>Diego Maradona</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Italy 1982</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1982.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                The tournament was won by Italy, after defeating West Germany 3–1 in the final. It was Italy's third World Cup win and first since 1938.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>Spain</strong>
                                </li>
                                <li>Best player: <strong>Paolo Rossi</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal9" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Argentina 1978</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1978.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                The 1978 World Cup was won by Argentina who beat the Netherlands 3–1 after extra time in the final. This win was the first World Cup title for Argentina, who became the fifth team (after Uruguay, Italy, England and West Germany), to be both hosts and world champions.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>Argentina</strong>
                                </li>
                                <li>Best player: <strong>Mario Kempes</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal10" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Germany 1974</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1974.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                The host nation won the title beating the Netherlands in the final, 2–1. The victory was the second for West Germany, who had also won in 1954.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>West Germany<a href="http://startbootstrap.com"></a></strong>
                                </li>
                                <li>Best player: <strong>Johan Cruyff</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal11" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Brazil 1970</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1970.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                The tournament was won by Brazil, who claimed their third World Cup title by defeating another two-time former champion, Italy, 4–1 in the final, thereby winning the right to permanently keep the Jules Rimet Trophy. The victorious team led by Carlos Alberto, and featuring players such as Pelé, Gérson, Jairzinho, Rivelino, and Tostão, is often cited as the greatest-ever World Cup team.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>Mexico</strong>
                                </li>
                                <li>Best player: <strong>Pelé</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal12" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>England 1966</h2>
                            <hr class="star-primary">
                            <img src="/scrollreveal/img/portfolio/1966.png" class="img-responsive img-centered" alt="">
                            <p class="text-justify">
                                England beat West Germany 4–2 in the final, winning the World Cup. With this victory, England won their first FIFA World Cup title and became the third World Cup host to win the tournament after Uruguay in 1930 and Italy in 1934.
                            </p>
                            <ul class="list-inline item-details">
                                <li>Host country: <strong>England</strong>
                                </li>
                                <li>Top scorer: <strong>Eusébio</strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="/scrollreveal/js/jquery-1.10.2.js"></script>
    <script src="/scrollreveal/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="/scrollreveal/js/classie.js"></script>
    <script src="/scrollreveal/js/cbpAnimatedHeader.js"></script>
    <script src="/scrollreveal/js/freelancer.js"></script>
    <script src="/scrollreveal/js/anijs/anijs.js"></script>
    <script src="/scrollreveal/js/anijs/helpers/scrollreveal/anijs-helper-scrollreveal.js"></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-44521541-5', 'anijs.github.io');
      ga('send', 'pageview');

    </script>

</body>
</html>

