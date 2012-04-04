<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv='Content-Type' content='text/html; charset=gb2312' />
		<title>ox travel</title>
		<!--meta name="viewport"  content="initial-scale=0.5; maximum-scale=10;  minimum-scale=0.5;"/-->
		<meta name="viewport"
			content="target-densitydpi=high-dpi;maximum-scale=10;  minimum-scale=0.5;" />
		<link type="text/css" rel="stylesheet" media="screen"
			href="./css/apple.css">
		<link type="text/css" rel="stylesheet" media="screen"
			href="./css/text.css">
		<link type="text/css" rel="stylesheet" media="screen"
			href="./css/dialog.css">
		<link type="text/css" rel="stylesheet" media="screen"
			href="./css/clock_home.css">
		<script type="text/javascript" src="./js/jquery.js"></script>
		<script type="text/javascript" src="./js/clock.js"></script>
		<script type="text/javascript" src="./js/dialog.js"></script>
		<script type="text/javascript" src="./js/notification.js"></script>
		
		<script tyep="text/javascript">
		
		$(document).ready(function () {
		
			$('input[name="ids"]').click(function listenRoomSel(){
			
			});
		});
		function add_group_verify(){
			var groupName = $('#groupName').val();
			if(groupName == null || groupName == ""){
			  alert("你必须填写分组名");
			  return false;
			}
			var rooms = $("input[name='rooms']:checked").val();
			if(rooms == null || rooms == ""){
				alert("请选择至少一个房间");	
				return false;				
			}	
			return true;		
		}
		
		</script>

	</head>
	<body>

		<div class='container'>
			<div id='main'>
				<div id='sub_menu'>
					<div class="menu_item">
						<a href="clock_room_add.do">添加分组</a>
					</div>
					<div class="menu_item">
						<a href="clock_group.do">分组管理</a>
					</div>
					<div class="menu_item menu_item_sel">
						<a href="clock_room.do">房间查看</a>
					</div>

				</div>
					

					<div class='hide_class'>
						全部选择:
						<input type='checkbox'></input>
					</div>
					<div id='list_data'>
						<table class="pn-ltable" style="" width="100%" cellspacing="1"
							cellpadding="0" border="0">
							<thead class="pn-lthead">
								<tr>
									<th width="20">

									</th>
									<th>
										房间号
									</th>
									<th>
										叫醒服务
									</th>
									<th>
										APK管理
									</th>
									<th>
										所属分组
									</th>
								</tr>
							</thead>

							<tbody class="pn-ltbody">
								<c:forEach items="${roomList}" var="room">
									<tr>
										<td>
											<input type='checkbox' name='ids' value='${room.roomNum}' />
										</td>
										<td>
											${room.roomNum}
										</td>
										<td>
											查看分组
										</td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!--<div>
				<smitpage:page pager="${pb}" />
			</div>
			-->
					

				</div>
			</div>
		</div>

	</body>
</html>