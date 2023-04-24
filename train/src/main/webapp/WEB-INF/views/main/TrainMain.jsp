<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TrainMain</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/select.css">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/route_search.css">
  
</head>
<body onload="setDateTime()">
    <div id="wrapper">
        <header id="header" class="role-header">
            <div class="head">
            </div>
            
        </header>
        <!-- start page title -->
        <div id="main" class="role-main">
            <div class="main_heading head_ticket">
                <div class="page_title">
                    <div class="head_ttl container">
                        <h1>チケット予約</h1>
                    </div>
                </div>
            </div>
            <!-- end page title -->
            <div class="container">
                <div class="panel_default">
                    <div class="panel_heading">
                        <h2 class="panel_title">
                            列車選択
                            <br class="sm">
                        </h2>
                    </div>
                    <div class="panel_body">
                        <p>
                            お知らせ
                        </p>
                        <div class="form-block">
                            <form action="process.jsp" method="post" onsubmit="return validateForm()">
                                
                                <section class="route-search-block">
                                    <h3 class="heading">
                                        <span>日時選択</span>
                                    </h3>
                                    <div class="route-search-block__form1">
                                        <div class="route-search-block__form1-heading">日程</div>
                                        <div class="route-search-block__form1-content">
                                            
                                            <div class="form-select form-select__ss date-block">
                                                <input class="js-select-year" type="date" id="date" name="date" required min="<%= java.time.LocalDate.now().toString() %>" max="<%= java.time.LocalDate.now().plusDays(7).toString() %>">               
                                            </div>
                                            
                                        </div>
                                        <div class="route-search-block__form1-heading">時間</div>
                                        <div class="route-search-block__form1-content">
                                            <div class="form-select form-select__ss">
                                                <input type="time" id="time" name="time" required><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <section class="route-search-block">
                                    <h3 class="heading">
                                        <span>出発・到着駅指定</span>
                                    </h3>
                                    <div class="route-search-block__form4">
                                        <div class="route-search-block__form4-1">
                                            <div class="route-search-block__form4-heading">出発</div>
                                            <div class="route-search-block__form4-content">
                                                <div class="form-select form-select__m">
                                                    <select name="departure" id="departure"
                                                    class="route-station1 error" required>
                                                    <option value="">出発駅選択</option>
                                                    <option value="1" data-route="1">浅草駅</option>
                                                    <option value="2" data-route="2">田原町駅</option>
                                                    <option value="3" data-route="3">稲荷町駅</option>
                                                    <option value="4" data-route="4">上野駅</option>
                                                    <option value="5" data-route="5">上野広小路駅</option>
                                                    <option value="6" data-route="6">末広町駅</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="route-search-block__form4-2">
                                        <div class="route-search-block__form4-heading">到着</div>
                                        <div class="route-search-block__form4-content">
                                            <div class="form-select form-select__m">
                                                <select name="arrival" id="arrival"
                                                class="route-station2 error" required>  
                                                <option>到着駅選択</option>
                                                <option value="1" data-route="1">浅草駅</option>
                                                <option value="2" data-route="2">田原町駅</option>
                                                <option value="3" data-route="3">稲荷町駅</option>
                                                <option value="4" data-route="4">上野駅</option>
                                                <option value="5" data-route="5">上野広小路駅</option>
                                                <option value="6" data-route="6">末広町駅</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </section>
                            <section class="route-search-block">
                                <h3 class="heading">
                                    <span>列車指定</span>
                                </h3>
                                <div class="route-search-block">
                                    <div class="form-select form-select__l">
                                        <select name="train" id="train" class="error" required>
                                            <option value data-route="0">選択してください。</option>
                                            <option value="a1" data-route="1">A1</option>
                                            <option value="a1" data-route="2">A2</option>
                                            <option value="a1" data-route="3">A3</option>
                                            <option value="a1" data-route="4">A4</option>
                                            <option value="a1" data-route="5">A5</option>
                                            <option value="a1" data-route="6">A6</option>
                                            <option value="b2" data-route="6">B1</option>
                                            <option value="b2" data-route="6">B2</option>
                                            <option value="b2" data-route="6">B3</option>
                                            <option value="b2" data-route="6">B4</option>
                                            <option value="b2" data-route="6">B5</option>
                                            <option value="b2" data-route="6">B6</option>
                                        </select>
                                    </div>
                                </div>
                            </section>
                            <div class="submit-area">
                                <input name="inputReturnUrl" value="" type="hidden">
                                <button class="submit_btn submit-area__btn" onclick="sve()">
                                    <span>
                                        検索
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/Train_main.js"></script>
    </body>
</html>