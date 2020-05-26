<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/25
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>后台管理界面</title>
    <link rel="icon" href="${pageContext.request.contextPath}/admin/img/logo.ico" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/img/logo.ico" />
    <!-- semantic ui css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/semantic/dist/semantic.css"/>
    <!-- 一些图标 -->
    <link href="${pageContext.request.contextPath}/admin/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <!-- Sidebar -->
    <link href="${pageContext.request.contextPath}/admin/css/main.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/plugins/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/plugins/chartist/chartist.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/css/chat-page.css" rel="stylesheet" />
</head>
<body>
    <div id="contextWrap">
        <%@ include file="leftbar.jsp"%>


            <!-- 中间主体部分 -->
            <div class="pusher">
                <%@ include file="navbar.jsp"%>
                <!--maincontent-->
                <div class="mainWrap navslide">
                    <div class="ui equal width left aligned padded grid stackable">

                        <div class="row">
                            <div class="sixteen wide tablet four wide computer column">

                                <div class="ui segment left aligned">

                                    <div class="ui  statistic">
                                        <div class="value counter">
                                            100
                                        </div>
                                        <div class="label">
                                            最近7天的订单数量
                                        </div>
                                        <i class="icon ion-ios-cart teal statisticIcon"></i>
                                    </div>
                                    <div id="flot-order" class="flotchart"></div>
                                </div>
                            </div>

                            <div class="sixteen wide tablet four wide computer column">

                                <div class="ui segment left aligned">

                                    <div class="ui  statistic">
                                        <div class="value">
                                            <span class="counter">57.6</span> %
                                        </div>
                                        <div class="label">
                                            网站访问量
                                        </div>
                                        <i class="icon ion-ios-timer blue statisticIcon"></i>
                                    </div>
                                    <div id="flot-avarage" class="flotchart"></div>
                                </div>
                            </div>
                            <div class="sixteen wide tablet four wide computer column">

                                <div class="ui segment left aligned">

                                    <div class="ui  statistic">
                                        <div class="value counter">
                                            3,112
                                        </div>
                                        <div class="label">
                                            待处理订单
                                        </div>
                                        <i class="icon ion-magnet purple statisticIcon"></i>
                                    </div>
                                    <div id="flot-saves" class="flotchart"></div>
                                </div>
                            </div>
                            <div class="sixteen wide tablet four wide computer column">

                                <div class="ui segment left aligned">

                                    <div class="ui  statistic">

                                        <div class="value counter">
                                            9,582
                                        </div>
                                        <div class="label">
                                            已处理的订单
                                        </div>
                                        <i class="icon ion-trophy red statisticIcon"></i>
                                    </div>
                                    <div id="flot-view" class="flotchart"></div>
                                </div>
                            </div>
                        </div>
                        <div class="sixteen wide tablet four wide computer column">

                            <div class="ui segment left aligned">

                                <div class="ui  statistic">

                                    <div class="value counter">
                                        9,582
                                    </div>
                                    <div class="label">
                                        Page Views
                                    </div>
                                    <i class="icon ion-trophy red statisticIcon"></i>
                                </div>
                                <div id="flot-view2" class="flotchart"></div>
                            </div>
                        </div>
                        <div class="sixteen wide tablet four wide computer column">

                            <div class="ui segment left aligned">

                                <div class="ui  statistic">

                                    <div class="value counter">
                                        9,582
                                    </div>
                                    <div class="label">
                                        Page Views
                                    </div>
                                    <i class="icon ion-trophy red statisticIcon"></i>
                                </div>
                                <div id="flot-view3" class="flotchart"></div>
                            </div>
                        </div>
                        <div class="sixteen wide tablet four wide computer column">

                            <div class="ui segment left aligned">

                                <div class="ui  statistic">

                                    <div class="value counter">
                                        9,582
                                    </div>
                                    <div class="label">
                                        Page Views
                                    </div>
                                    <i class="icon ion-trophy red statisticIcon"></i>
                                </div>
                                <div id="flot-view4" class="flotchart"></div>
                            </div>
                        </div>
                        <div class="sixteen wide tablet four wide computer column">

                            <div class="ui segment left aligned">

                                <div class="ui  statistic">

                                    <div class="value counter">
                                        9,582
                                    </div>
                                    <div class="label">
                                        Page Views
                                    </div>
                                    <i class="icon ion-trophy red statisticIcon"></i>
                                </div>
                                <div id="flot-view5" class="flotchart"></div>
                            </div>
                        </div>
                        <div class="sixteen wide tablet four wide computer column">

                            <div class="ui segment left aligned">

                                <div class="ui  statistic">

                                    <div class="value counter">
                                        9,582
                                    </div>
                                    <div class="label">
                                        Page Views
                                    </div>
                                    <i class="icon ion-trophy red statisticIcon"></i>
                                </div>
                                <div id="flot-view6" class="flotchart"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--maincontent-->










            </div>

    </div>
</body>
<!-- script -->
<!-- jquery -->
<script src="${pageContext.request.contextPath}/admin/js/jquery-2.1.4.min.js" charset="utf-8"></script>
<!-- semantic -->
<script src="${pageContext.request.contextPath}/admin/semantic/dist/semantic.js" charset="utf-8"></script>
<!-- <script src="js/semantic.min.js"></script> -->
<!--counter number-->
<script src="${pageContext.request.contextPath}/admin/plugins/counterup/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/counterup/waypoints.min.js"></script>


<!--flot chart弗洛特图-->
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/flot/curvedLines.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/cookie/js.cookie.js"></script>
<!--flot chart-->
<!--chartjs chart图表-->
<script src="${pageContext.request.contextPath}/admin/plugins/chartjs/chart.min.js"></script>

<script src="${pageContext.request.contextPath}/admin/plugins/nicescrool/jquery.nicescroll.min.js"></script>
<script data-pace-options='{ "ajax": false }' src="${pageContext.request.contextPath}/admin/plugins/pacejs/pace.js"></script>



<script src="${pageContext.request.contextPath}/admin/plugins/chartist/chartist.min.js"></script>

<script src="${pageContext.request.contextPath}/admin/js/dashboard2.js"></script>
<!-- main.js -->
<script src="${pageContext.request.contextPath}/admin/js/main.js"></script>
</html>
