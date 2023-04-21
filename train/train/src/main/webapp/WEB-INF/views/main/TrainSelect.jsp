<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ticketSelect</title>
</head>
<body>
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
                        <h1>チケット選択</h1>
                    </div>
                </div>
            </div>
            <main role="main">
                <section>
                    <div class="page-lev1-heading-container">
                        <h2 class="page-lev1-heading">
                            <strong class="reservation-icon">新規予約</strong>
                            座席と料金選択
                        </h2>
                    </div>
                </section>
                <section>
                    <div class="route-options-header  inbound">
                        <h3 class="route-options-header__heading">経路</h3>
                        <ul>
                            <li>
                                <span class="route-options-header__time">
                                    <div class="parent">
                                        <div class="first">プラットホー番号：</div>
                                        <div class="second">列車番号：</div>
                                        <div class="third">列車位置：</div>
                                    </div>
                                    <!-- 이미지 경로 수정 -->
                                    <img src="/ip/kr/common/images/arrow-direction-right-1.png"
                                        　srcset="/ip/kr/common/images/arrow-direction-right-1-2x.png 2x" width="20"
                                        height="6" alt class="inserted-pict">
                                </span>
                            </li>
                        </ul>
                        <div class="route-options-header__ticket">
                        </div>
                        <form name="formMain1" action="" method="post">
                            <input type="hidden">
                        </form>
                    </div>
                    <div class="route-train-list inbound">
                        <section>
                            <div class="route-train-list__header">
                                <div class="route-train-list__header-inner">
                                    <p class="route-train-list__station-icon">
                                        <span class="departure-station-icon">出発</span>
                                    </p>
                                    <p class="route-train-list__time"> <input name="years" type="month" value=""> 時間</p>

                                    <h4 class="route-train-list__heading">駅</h4>
                                </div>
                            </div>
                            <div class="route-train-list__section-body">
                                <div class="route-train-list__train-name express">
                                    <p>列車名</p>
                                </div>
                                <div class="route-train-list__seat-info js-filfac-scope">
                                    <table class="seat-facility js-filfac-target">
                                        <thead>
                                            <tr>
                                                <th scope="col" data-search-id="" class="seat-facility-none is-current">
                                                    <div>
                                                        <button onclick="selectSeat('A1')">A1</button>
                                                    </div>
                                                    <div>
                                                        <button onclick="selectSeat('B1')">B1</button>
                                                    </div>
                                                </th>
                                                <th scope="col" data-search-id="" class="seat-facility-none is-current">
                                                    <div>
                                                        <button onclick="selectSeat('A2')">A2</button>
                                                    </div>
                                                    <div>
                                                        <button onclick="selectSeat('B2')">B2</button>
                                                    </div>
                                                </th>
                                                <th scope="col" data-search-id="" class="seat-facility-none is-current">
                                                    <div>
                                                        <button onclick="selectSeat('A3')">A3</button>
                                                    </div>
                                                    <div>
                                                        <button onclick="selectSeat('B3')">B3</button>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                            <section>
                                <div class="route-train-list__header">
                                    <div class="route-train-list__header-inner">
                                        <p class="route-train-list__station-icon">
                                            <span class="arrival-station-icon">到着</span>
                                        </p>
                                        <p class="route-train-list__time">時間</p>
                                        <h4 class="route-train-list__heading">駅</h4>
                                    </div>
                                </div>
                            </section>
                            <section>
                                <h3 class="page-lev2-heading">予約内訳確認</h3>
                                <table class="condition-table condition-table--4cols-4">
                                    <colgroup>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">列車番号</th>
                                            <th scope="col">出発/到着</th>
                                            <th scope="col">座席番号</th>
                                            <th scope="col">料金</th>
                                        </tr>
                                    </thead>
                                    <tbody id="seat-list"></tbody>
                                </table>
                            </section>
                        </section>
            </main>

                <ul class="button-navigation">
                    <li>
                        <button type="submit" class="decide-button" onclick="">
                            <span>
                                お支払い
                                <span class="button-note"></span>
                            </span>
                        </button>
                    </li>
                </ul>
        </div>
</body>
</html>