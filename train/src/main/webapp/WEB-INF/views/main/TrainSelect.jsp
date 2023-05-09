<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JR東日本｜列車の予約＞検索結果</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_1.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_2.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_3.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_4.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/rail_5.css">
</head>
<body>
	<form action="/trainSelect" method="post">
	
	<%@ page import="java.net.URLDecoder" %>
	   <%
	    String rideStation = request.getParameter("rideStation");
	    String getoffStation = request.getParameter("getoffStation");
	    String boardingDate = request.getParameter("boardingDate");
	    String hour = request.getParameter("hour");
	    String minute = request.getParameter("minute");
	    String adultCount = request.getParameter("adultCount");
	
	    // URL 디코딩
	    rideStation = URLDecoder.decode(rideStation, "UTF-8");
	    getoffStation = URLDecoder.decode(getoffStation, "UTF-8");
	    boardingDate = URLDecoder.decode(boardingDate, "UTF-8");
	    hour = URLDecoder.decode(hour, "UTF-8");
	    minute = URLDecoder.decode(minute, "UTF-8");
	    adultCount = URLDecoder.decode(adultCount, "UTF-8");
	%>

		<!-- 検索結果 -->
		<section id="trainSearch_result" class="ts_result">
			<div class="selService_titleW">
				<div class="tmp_w100per progressBar">
					<h2 class="selService_title">
						<!--wovn-src:検索結果-->
						検索結果
					</h2>
				</div>
				<div class="ts_resultGetonGetoffW">
					<ol class="ts_resultGetonGetoffWList" wovn-ignore="">
						<li class="ts_resultGetonGetoffWListItem"><%= rideStation %></li>
						<li class="ts_resultGetonGetoffWListItem"><%= getoffStation %></li>
					</ol>
				</div>
				<div class="ts_resultInfoIconW">
					<dl class="ts_resultDetailedInfo">
						<dt class="ts_resultDetailedInfo_title">
							<!--wovn-src:出発日時：-->
							出発日時：
						</dt>
						<dd class="ts_resultDetailedInfo_contents" wovn-ignore=""><%= boardingDate %>
							<%= hour %> : <%= minute %></dd>
					</dl>
					<dl class="ts_resultDetailedInfo">
						<dt class="ts_resultDetailedInfo_title">
							<!--wovn-src:利用人数：-->
							利用人数：
						</dt>
						<dd class="ts_resultDetailedInfo_contents" wovn-wait="">
							<span>
								<!--wovn-src:おとな-->おとな
							</span> <span>
								<!--wovn-src:名--><%= adultCount %>名</span>
						</dd>
					</dl>
				</div>
			</div>
		</section>
	</form>
	<!-- エラー表示 -->
	<!-- //エラー表示// -->
	</div>
	<div class="ts_resultW">
		<div class="ts_resultDetailWrapper">
			<!-- 検索結果詳細表示 -->
			<div class="ts_resultDetail_heading">

				<h3 class="ts_resultTrainName limitedex" wovn-ignore="">Tokiwa
					73</h3>
				<input type="hidden" id="HidRadioIndex0" value="">
			</div>
			<div class="ts_resultDetail bor_none">
				<div class="ts_resultDetailOutline acd">
					<ul class="ts_resultDetailOutlineW">
						<li class="ts_resultDetailOutlineWItemDep" wovn-ignore="">
							18:51<span class="arrow">→</span>20:23
						</li>
						<li class="ts_resultDetailOutlineWItemTime" wovn-ignore="">(1h32m)</li>
					</ul>
					<button type="button" data-num="1" data-btnnum="1"
						class="ts_DetailTrainCheckBtn active">
						<!--wovn-src:空席状況を非表示にする-->
						좌석 예매 현황 표시하지 않음
					</button>
				</div>
				<div class="ts_resultDetailTrain">

					<ul id="selService_formTrainSeatSelList_1"
						class="selService_formTrainSeatSelList active">
						<li class="selService_formTrainSeatSelListItem"><input
							data-granclasstype="" data-kositufutai="" data-radioindex="1"
							id="ride_0_0" name="ride_0" type="radio" value="0"> <label
							for="ride_0_0" class="selService_formTrainSeatSelListItemLink">
								<span class="selService_formTrainSeatSelListItemLinkSaleW">
									<span
									class="selService_formTrainSeatSelListItemLink-sale normal">
										<!--wovn-src:指定席-->지정석<span wovn-ignore=""></span>
								</span> <span class="selService_formTrainSeatSelListItemLink-rest">
										<!--wovn-src:残席-->남은 좌석<img
										src="/jreast-train-reservation/reserve/wb/img/trainsearch/ts_resulttrainseat_ok-icon.png?ver=13"
										width="23" height="23" alt="있음"
										data-wovn-src:-original-alt="あり">
								</span>
							</span> <span class="selService_formTrainSeatSelSeatAcW"> <span
									class="selService_formTrainSeatSelSeatAcDl"> <span
										class="selService_formTrainSeatSelSeatAcDt-ad"> <!--wovn-src:おとな-->어른
									</span> <span class="selService_formTrainSeatSelSeatAcDd-ad"> <span
											class="price" data-priceref="3890" data-priceunit="1580"
											data-cnt="1"><span wovn-ignore=""></span> <!--wovn-src:円-->엔
										</span>
									</span>
								</span>
							</span>
						</label></li>
						<li class="selService_formTrainSeatSelListItem"><input
							data-granclasstype="" data-kositufutai="" data-radioindex="2"
							id="ride_0_1" name="ride_0" type="radio" value="1"> <label
							for="ride_0_1" class="selService_formTrainSeatSelListItemLink">
								<span class="selService_formTrainSeatSelListItemLinkSaleW">
									<span
									class="selService_formTrainSeatSelListItemLink-sale green">
										<!--wovn-src:グリーン-->그린석<span wovn-ignore=""></span>
								</span> <span class="selService_formTrainSeatSelListItemLink-rest">
										<!--wovn-src:残席-->남은 좌석<img
										src="/jreast-train-reservation/reserve/wb/img/trainsearch/ts_resulttrainseat_few-icon.png?ver=13"
										width="23" height="23" alt="얼마 남지 않음"
										data-wovn-src:-original-alt="残りわずか">
								</span>
							</span> <span class="selService_formTrainSeatSelSeatAcW"> <span
									class="selService_formTrainSeatSelSeatAcDl"> <span
										class="selService_formTrainSeatSelSeatAcDt-ad"> <!--wovn-src:おとな-->어른
									</span> <span class="selService_formTrainSeatSelSeatAcDd-ad"> <span
											class="price" data-priceref="6160" data-priceunit="3850"
											data-cnt="1"><span wovn-ignore=""></span> <!--wovn-src:円-->엔
										</span>
									</span> <span class="selService_formTrainSeatSelSeatAcDt-cl"> <!--wovn-src:こども-->어린이
									</span> <span class="selService_formTrainSeatSelSeatAcDd-cl"> <span
											class="price" data-priceref="4470" data-priceunit="3320"
											data-cnt="0"><span wovn-ignore=""></span> <!--wovn-src:円-->엔
										</span>
									</span>
								</span>
							</span>
						</label></li>

					</ul>

					<ul class="ts_cautionList tmp_mT-15">
						<li>
							<!--wovn-src:※乗車券と特急券等を購入する必要があります。-->※승차권과 특급권 등을 구입하셔야 합니다.
						</li>
						<li>
							<!--wovn-src:
															※表示価格は乗車券と特急券等の両方を含んでいます。特急券等のみを購入したい場合は、以下のボックスにチェックをしてください。
														-->※표시 가격은 승차권과 특급권 등이 함께 포함되어 있습니다. 특급권 등에 한하여 구입하실 경우,
							다음의 체크 박스에 체크해 주십시오.
						</li>
					</ul>
					<div class="ckSeat_formTrainPayselAfterCcCash center">
						<input type="checkbox" name="Tokuke0" id="Tokuke0"
							class="ckSeat_formTrainPayselAfterCcCashInput" value="true">
						<label for="Tokuke0"> <!--wovn-src:特急券等のみを購入する-->특급권 등만
							구입하기
						</label>
					</div>
					<div class="ts_resultDetailReserve">

						<button type="button"
							class="tmp_btn_h_l-auto pc_w380px js_popupModalTrg2 nonselect"
							data-popupwindowname="modal_attention" data-att="False"
							data-day="False" data-routeno="1" id="Select0">
							<!--wovn-src:選択する-->
							선택하기
						</button>
					</div>
				</div>
			</div>
			<!-- //検索結果詳細表示// -->
			<div class="ts_resultDetail_heading">

				<h3 class="ts_resultTrainName limitedex" wovn-ignore="">Tokiwa
					77</h3>
				<input type="hidden" id="HidRadioIndex1" value="">
			</div>
			<div class="ts_resultDetail bor_none">
				<div class="ts_resultDetailOutline acd">
					<ul class="ts_resultDetailOutlineW">
						<li class="ts_resultDetailOutlineWItemDep" wovn-ignore="">
							20:51<span class="arrow">→</span>22:24
						</li>
						<li class="ts_resultDetailOutlineWItemTime" wovn-ignore="">(1h33m)</li>
					</ul>
					<button type="button" data-num="2" data-btnnum="2"
						class="ts_DetailTrainCheckBtn" wovn-wait="">空席状況を表示する</button>
				</div>
				<div class="ts_resultDetailTrain"></div>
			</div>
			<!-- //検索結果詳細表示// -->

		</div>

		<div class="ts_resultW-inner">
			<ul class="ts_resultNextprev">

				<li class="ts_resultNextprevItem"><a href="javascript:void(0);"
					id="PrevSearch"
					class="tmp_btn_sub1_s_green-auto tmp_btn_icon-back-white"> <!--wovn-src:前の列車-->이전
						열차
				</a></li>
				<li class="ts_resultNextprevItem"><a href="javascript:void(0);"
					id="NextSearch"
					class="tmp_btn_sub1_s_green-auto tmp_btn_icon-next-white"> <!--wovn-src:次の列車-->다음
						열차
				</a></li>
			</ul>
		</div>
	</div>
	</section>
	<!-- 隠しパラメタ -->
	<input id="SelectKeiroNo" name="SelectKeiroNo" type="hidden" value="0">
	<input id="RouteNumber" name="SelectRouteNo" type="hidden" value="">
	<input id="OnlyTokkyuTicketPurchase" name="OnlyTokkyuTicketPurchase"
		type="hidden" value="0">
	<input id="HidSeatAvailability" name="SeatAvailability" type="hidden"
		value="">
	</form>
	<input id="imgPath" name="imgPath" type="hidden"
		value="/jreast-train-reservation/reserve/wb/img">
	<input id="cacheBasting" name="cacheBasting" type="hidden" value="13">
	<input id="seatDisp" name="seatDisp" type="hidden" value="あり">


	</div>
	<!-- //背景ブラー用div -->

	<!-- 汎用 ポップアップ枠 -->
	<div id="modal_generalPurpose" class="modal_generalPurpose top_modalW"></div>
	<!-- //汎用 ポップアップ枠// -->
	<!-- 注意喚起 -->


	<!-- 選択決定ボタン(QA134) -->
	<div class="top_puBtnW">
		<div class="top_puBtnW-decide">
			<button type="button" class="tmp_btn_h_l-auto pc_w380px">
				<!--wovn-src:上記の内容を理解した-->
				위의 내용을 이해했습니다
			</button>
		</div>
		<div class="top_puBtnW-clear">
			<button type="button" class="tmp_btn_m_s_green-auto pc_w380px">
				<!--wovn-src:戻る-->
				뒤로 가기
			</button>
		</div>
		<!-- //選択決定ボタン -->
	</div>
	</div>
	</div>



	<div class="idxFooter_copy_loading">
		<p class="idxFooter_copyTxt_loading" wovn-wait="">Copyright © East
			Japan Railway Company All Rights Reserved.</p>
	</div>

	</div>
	<!-- //背景ブラー用div -->
	</div>
</body>
</html>