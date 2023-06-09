<%@page import="java.util.List"%>
<%@page import="com.teco.train.domain.Traininfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Traininfo[] train = new Traininfo[6];
	
	List<Traininfo> list = (List)request.getAttribute("list");
	for(int i =0; i < list.size(); i++){
		for(Traininfo tr : list){
			if(tr != null){
				int num = tr.getTrain_id();
				String name = tr.getStation_name();
				int res = tr.getReser();
				train[i].setTrain_id(num);
				train[i].setStation_name(name);
				train[i].setReser(res);
			}else if (tr == null){
				return;
			}
		}
	}
%>
<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>TrainInformation</title>
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
                        <h1>列車情報</h1>
                    </div>
                </div>
            </div>
           		<main>
                        <section>
                            <table class="condition-table condition-table--4cols-1">
                                <colgroup>
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">No</th>
                                        <th scope="col">1</th>
                                        <th scope="col">2</th>
                                        <th scope="col">3</th>
                                        <th scope="col">4</th>
                                        <th scope="col">5</th>
                                        <th scope="col">6</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>列車番号</th>
                                   	<p><%train[0].getTrain_id(); %> </p>
<%--                                         <th><%list[1]%></th>
                                        <th><%list[2]%></th>
                                        <th><%list[3]%></th>
                                        <th><%list[4]%></th>
                                        <th><%list[5]%></th>
  --%>                                   </tr>
                                    <tr>
<%--                                        <th>停車パターン</th>
                                        <th><%list[0]%></th>
                                        <th><%list[1]%></th>
                                        <th><%list[2]%></th>
                                        <th><%list[3]%></th>
                                        <th><%list[4]%></th>
                                        <th><%list[5]%></th>
 --%>                                    </tr>
                                    <tr>
                                        <th>列車位置</th>
<%--                                         <th><%list[0].station_name %></th>
                                        <th><%list[1].station_name %></th>
                                        <th><%list[2].station_name %></th>
                                        <th><%list[3].station_name %></th>
                                        <th><%list[4].station_name %></th>
                                        <th><%list[5].station_name %></th>
--%>                                    </tr>
                                    <tr>
                                        <th>残席数</th>
<%--                                         <th><%list[0].reser %></th>
                                        <th><%list[1].reser %></th>
                                        <th><%list[2].reser %></th>
                                        <th><%list[3].reser %></th>
                                        <th><%list[4].reser %></th>
                                        <th><%list[5].reser %></th>
--%>                                    </tr>
                                    <tr>
                                        <th>予約状況</th>
                                        <th><a href="/TrainResult">確認</a></th>
                                        <th><a href="/TrainResult">確認</a></th>
                                        <th><a href="/TrainResult">確認</a></th>
                                        <th><a href="/TrainResult">確認</a></th>
                                        <th><a href="/TrainResult">確認</a></th>
                                        <th><a href="/TrainResult">確認</a></th>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                </main>
            </body>
</html>