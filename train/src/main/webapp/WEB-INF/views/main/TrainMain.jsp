<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JR東日本｜列車のきっぷ予約／空席案内</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_1.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_2.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_3.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_4.css">
</head>
<form action="/trainSelect" method="post">
	<input name="__RequestVerificationToken" type="hidden" value="">
	<input id="Token" name="Token" type="hidden" value=""> <input
		name="__MultipleStartUpToken" type="hidden" value="">

	<!-- 検索条件入力 -->
	<section id="top_form" class="top_form">
		<div class="top_formW">
			<div class="top_formW-inner">
				<div class="tmp_w100per progressBar">

					<h2 class="top_formTitle">
						<!--wovn-src:路線から検索-->
						路線から検索
					</h2>
				</div>

				<!-- 入力フォーム -->
				<div class="top_formEntry">
					<div class="top_formEntryStationW">

						<p class="top_formEntryStationNote">
							乗り換えが必要な際は列車ごとに検索する必要があります</p>

						<div class="top_formEntryFreeLineW">
							<div class="top_formEntryFreeInput-text">
								<label for="form_freestation_line"> <!--wovn-src:路線-->路線
								</label> <select id="RouteCode" name="RouteCode">
									<option value="">
										<!--wovn-src:選択-->選択
									</option>
									<option selected value="1203" wovn-ignore="">Joban
										Line（Shinagawa/Ueno - Sendai）</option>
									<input id="HidRoute" name="Route" type="hidden" value="">
								</select>
							</div>
						</div>
					</div>

					<!-- 出発駅＆到着駅枠 -->
					<div class="top_formEntryFreeStationW">

						<div class="top_formEntryFreeGetonW en-id_w">

							<div class="top_formEntryFreeInput-text">
								<label for="form_freestation_geton"> <!--wovn-src:出発駅-->出発駅
								</label> <select id="RideStation" name="RideStation" class="RideStation">
									<option value="" data-routename="">
										<!--wovn-src:選択-->選択
									</option>
						            <option value="Ueno" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ueno</option>
									<option value="Nippori" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Nippori</option>
									<option value="Mikawashima" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Mikawashima</option>
									<option value="Minami-Senju" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Minami-Senju</option>
									<option value="Kita-Senju" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Kita-Senju</option>
									<option value="Matsudo" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Matsudo</option>
									<option value="Kashiwa" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Kashiwa</option>
									<option value="Abiko" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Abiko</option>
									<option value="Tennodai" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Tennodai</option>
									<option value="Toride" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Toride</option>
									<option value="Fujishiro" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Fujishiro</option>
									<option value="Ryugasaki" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ryugasaki</option>
									<option value="Ushiku" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ushiku</option>
									<option value="Hitachinoushiku" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hitachinoushiku</option>
									<option value="Arakawaoki" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Arakawaoki</option>
									<option value="Tsuchiura" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Tsuchiura</option>
									<option value="Kandatsu" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Kandatsu</option>
									<option value="Takahama" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Takahama</option>
									<option value="Ishioka" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ishioka</option>
									<option value="Hatori" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hatori</option>
									<option value="Iwama" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Iwama</option>
									<option value="Uchihara" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Uchihara</option>
									<option value="Akatsuka" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Akatsuka</option>
									<option value="Mito" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Mito</option>
									<option value="Katsuta" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Katsuta</option>
									<option value="Sawa" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Sawa</option>
									<option value="Tokai" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Tokai</option>
									<option value="Omika" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Omika</option>
									<option value="Hitachi-Taga" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hitachi-Taga</option>
									<option value="Hitachi" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hitachi</option>
								</select>
							</div>
						</div>


						<div class="top_formEntryFreeGetoffW en-id_w">
							<div class="top_formEntryFreeInput-text">
								<label for="form_freestation_getoff"> <!--wovn-src:到着駅-->到着駅
								</label> <select id="GetoffStation" name="GetoffStation"
									class="GetoffStation">
									<option value="" data-routename="">
										<!--wovn-src:選択-->選択
									</option>
									<option value="Ueno" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ueno</option>
									<option value="Nippori" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Nippori</option>
									<option value="Mikawashima" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Mikawashima</option>
									<option value="Minami-Senju" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Minami-Senju</option>
									<option value="Kita-Senju" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Kita-Senju</option>
									<option value="Matsudo" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Matsudo</option>
									<option value="Kashiwa" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Kashiwa</option>
									<option value="Abiko" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Abiko</option>
									<option value="Tennodai" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Tennodai</option>
									<option value="Toride" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Toride</option>
									<option value="Fujishiro" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Fujishiro</option>
									<option value="Ryugasaki" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ryugasaki</option>
									<option value="Ushiku" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ushiku</option>
									<option value="Hitachinoushiku" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hitachinoushiku</option>
									<option value="Arakawaoki" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Arakawaoki</option>
									<option value="Tsuchiura" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Tsuchiura</option>
									<option value="Kandatsu" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Kandatsu</option>
									<option value="Takahama" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Takahama</option>
									<option value="Ishioka" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Ishioka</option>
									<option value="Hatori" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hatori</option>
									<option value="Iwama" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Iwama</option>
									<option value="Uchihara" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Uchihara</option>
									<option value="Akatsuka" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Akatsuka</option>
									<option value="Mito" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Mito</option>
									<option value="Katsuta" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Katsuta</option>
									<option value="Sawa" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Sawa</option>
									<option value="Tokai" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Tokai</option>
									<option value="Omika" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Omika</option>
									<option value="Hitachi-Taga" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hitachi-Taga</option>
									<option value="Hitachi" data-routecode="1203"
										data-routename="Joban Line（Shinagawa/Ueno - Hitachi）"
										wovn-ignore="">Hitachi</option>
								</select>
							</div>
						</div>
					</div>

					<!-- //出発駅＆到着駅枠// -->

					<!-- 日時・片道＆往復タブ枠 -->
					<div class="top_formEntryDateW">
						<!-- 片道＆往復タブ -->
						<ul class="top_formEntryDateTabW">
							<li class="top_formEntryDateTabOneway tab">
								<div class="top_formEntryDateTabOnewayInner">
									<h3 class="top_formEntryDateInnerH">
										<!--wovn-src:乗車日-->
										乗車日
									</h3>
									<div class="top_formEntryDateSelectW">
										<div class="top_formEntryDateSelectDate">
											<select class="top_formEntryDateSelectDateInput"
												id="BoardingDate" name="BoardingDate">
											</select>
										</div>
									</div>
									<h3 class="top_formEntryDateInnerH">
										<!--wovn-src:時刻-->
										時刻
									</h3>
									<div class="top_formEntryDateSelectDep">

										<input class="top_formEntryDateSelectDep-radio"
											id="RdiDepartureChoice" name="DepartureArrivalChoice"
											type="radio" value="0"><label
											for="RdiDepartureChoice"
											class="top_formEntryDateSelectDep-label"> <!--wovn-src:出発-->出発
										</label> <input class="top_formEntryDateSelectDep-radio"
											id="RdiArrivalChoice" name="DepartureArrivalChoice"
											type="radio" value="1"><label for="RdiArrivalChoice"
											class="top_formEntryDateSelectDep-label"> <!--wovn-src:到着-->到着
										</label>
									</div>

									<div class="top_formEntryDateSelectTime">
										<select class="top_formEntryDateSelectTimeInput" id="Hour"
											name="Hour">
										</select>
										<p class="top_formEntryDateSelectTimeUnit">
											<!--wovn-src:時-->
											時
										</p>
										<select class="top_formEntryDateSelectTimeInput" id="Minute"
											name="Minute">
										</select>
										<p class="top_formEntryDateSelectTimeUnit">
											<!--wovn-src:分-->
											分
										</p>
									</div>

								</div>
							</li>
						</ul>
						<!-- //片道＆往復タブ// -->
					</div>
					<!-- //日時・片道＆往復タブ枠// -->
					<!-- 人数入力枠 -->
					<div class="top_formEntryAcW">
						<h3 class="top_formEntryAcH">
							<!--wovn-src:利用人数-->
							利用人数<span> <!--wovn-src:最大6名まで-->最大6名まで
							</span>
						</h3>
						<ul class="top_formEntryAcInner">
							<li class="top_formEntryAdlut">
								<div class="top_formEntryAdlutLead">
									<label for="top_formEntryAdlutInput"> おとな </label>
								</div>
								<div class="top_formEntryAdlutInputW">
									<select class="top_formEntryAdlutInput" id="AdultCount"
										name="AdultCount">
										<option value="0" wovn-wait="">0</option>
										<option selected value="1" wovn-wait="">1</option>
										<option value="2" wovn-wait="">2</option>
										<option value="3" wovn-wait="">3</option>
										<option value="4" wovn-wait="">4</option>
										<option value="5" wovn-wait="">5</option>
										<option value="6" wovn-wait="">6</option>
									</select>
								</div>
							</li>

						</ul>
					</div>
					<!-- //人数入力枠// -->
					<!-- 列車を検索ボタン枠 -->
					<!-- 					<div class="top_formEntrySubmitW">
						<input id="BtnTrainSearch" name="BtnTrainSearch" type="button"
							class="tmp_btn_h_l-auto pc_w380px" value="検索する"
							data-wovn-src:-original-value="検索する"
							onclick="redirectToTrainSelect()">
					</div> -->
					<div class="top_formEntrySubmitW">
						<input id="BtnTrainSearch" name="BtnTrainSearch" type="button"
							class="tmp_btn_h_l-auto pc_w380px" value="検索する"
							data-wovn-src:-original-value="検索する">
					</div>
				</div>
			</div>
		</div>
	</section>
</form>

<p class="idxFooter_copyTxt_loading" wovn-wait="">Copyright © East
	Japan Railway Company All Rights Reserved.</p>

<!-- jQuery 라이브러리 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	$(document).ready(function() {
		$("#BtnTrainSearch").click(function() {
			redirectToTrainSelect();
		});
	});

	function redirectToTrainSelect() {
		var rideStation = $("#RideStation").val();
		var getoffStation = $("#GetoffStation").val();
		var boardingDate = $("#BoardingDate").val();
		var hour = $("#Hour").val();
		var minute = $("#Minute").val();
		var adultCount = $("#AdultCount").val();

		var url = "/trainSelect?rideStation=" + encodeURIComponent(rideStation)
				+ "&getoffStation=" + encodeURIComponent(getoffStation)
				+ "&boardingDate=" + encodeURIComponent(boardingDate)
				+ "&hour=" + encodeURIComponent(hour) + "&minute="
				+ encodeURIComponent(minute) + "&adultCount="
				+ encodeURIComponent(adultCount);

		window.location.href = url;
	}
</script>

     <script src="${pageContext.request.contextPath}/js/TrainMain.js"></script>
</body>
</html>