<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>주소로 장소 표시하기</title>
<style>
#container {
	display: flex;
	margin: 0 auto;
	width: 1200px;
}

#map {
	width: 600px;
	height: 400px;
	margin-top: 50px;
	margin-bottom: 50px;
	margin-right: 20px;
}

#table {
	width: 600px;
	text-align: left;
	margin-left: 20px;
}

#table ul li {
	list-style-type: none;
}
</style>
</head>
<body>
	<div id="container">
		<div id="map"></div>
		<div id="table">
			<hr>
			<h4 style="text-align: center;">교통수단별 찾아오는 방법</h4>
			<hr>
			<br><br>
			<table>
				<colgroup>
					<col width="25%">
					<col width="75%">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><img src="img/cart/subway.jpg" width=80px
							height=80px></th>
						<td>
							<ul>
								<br><li>- 1호선 : 중앙로역(1번 출구, 도보 1~2분)</li>
								<li>- 2호선 : 반월당역(14번 출구, 도보 5~7분)</li>
								<br>
								<br>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="row"><img src="img/cart/bus.jpg" width=80px
							height=80px></th>
						<td>
							<ul>
								<br><li>- 약령시앞 :<br> 204, 304, 349, 401, 410-1, 503, 518,
									650, 706, 730, 909, 급행2, 북구2
								</li>
								<li>- 약령시건너(동성로입구) :<br> 204, 304, 349, 401, 410, 503,
									518, 650, 706, 730, 급행2
								</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=34738d4aac928b8aa3635596ab093fdc&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						'대구 중구 중앙대로 403',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">DuckG</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
</body>
</html>
