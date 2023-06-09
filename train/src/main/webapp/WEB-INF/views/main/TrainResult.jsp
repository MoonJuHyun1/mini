<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ReservationResult</title>
</head>
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
                        <h1>予約情報</h1>
                    </div>
                </div>
            </div>
            <main>
                <section>
                    <h3 class="page-lev2-heading">
                        予約番号 :
                    </h3>
                    <ul class="reservation-header">
                        <li class="reservation-header__date">予約日 :</li>
                    </ul>
                    <table class="condition-table condition-table--4cols-1">
                        <colgroup>
                            <col>
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">11</th>
                                <th scope="col">22</th>
                                <th scope="col">33</th>
                                <th scope="col">44</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>1</th>
                                <th>2</th>
                                <th>3</th>
                                <th>4</th>
                            </tr>
                        </tbody>
                    </table>
                </section>
                <section>
                    <h4 class="bordered-heading">
                        乗車列車・経路確認
                    </h4>
                    <div class="route-train-list inbound">
                        <section>
                            <div class="route-train-list__header">
                                <div class="route-train-list__header-inner">
                                    <p class="route-train-list__station-icon">
                                        <span class="departure-station-icon">出発</span>
                                    </p>
                                    <p class="route-train-list__time">時間</p>
                                    <h4 class="route-train-list__heading">駅</h4>
                                </div>
                            </div>
                            <div class="route-train-list__section-body">
                                <div class="route-train-list__train-name express">
                                    <p>列車名</p>
                                </div>
                            </div>
                        </section>
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
                    </div>
                </section>
                <section>
                    <div class="bordered-heading-container inbound">
                        <h4 class="bordered-heading">
                            購入金額
                        </h4>
                    </div>
                    <div>
                        <p class="bordered-heading-container__price">
                            <strong>price</strong>
                            円
                        </p>
                    </div>
                </section>
                <div class="page-moving-navigation">
                    <div class="find-btn">
                        <button type="button" class="btn-css find-btn1" onclick="">予約を取消す</button>
                        <button type="button" class="btn-css find-btn1" onclick="">ホームページ</button>
                </div>
            </main>
</body>
</html>