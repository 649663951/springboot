<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>
element.style {
	padding-bottom: 9px;
	width: calc(100% - 190px);
	min-height: 1049px;
}

.nav-md .container.body .right_col {
	margin-left: 190px !important;
}

footer {
	margin-left: 190px !important;
}

.site_title_img {
	background: #FFF
}

.site_title i {
	border: 0px solid #EAEAEA;
	padding: 0;
	border-radius: 50%;
	width: 48px;
	height: 48px;
}
</style>

<div class="col-md-3 left_col" style="width: 190px">
	<div class="left_col scroll-view" style="width: 190px">
		<div class="navbar nav_title" style="border: 0; width: 190px">
			<a href="<%=request.getContextPath()%>/index" class="site_title">
				<i> <img src="<%=request.getContextPath()%>/images/team.jpg"
					width="35px" height="33.5px">
			</i> <span>联盟管家</span> 
			</a>
		</div>

		<div class="clearfix"></div>

		<br />

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
			<div class="menu_section">
				<ul class="nav side-menu">
					<li><a><i class="fa fa-home"></i>主页 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<%=request.getContextPath()%>/index">Dashboard</a></li>
						</ul>
					</li>

					<li><a><i class="fa fa-laptop"></i> 英雄信息<span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="<%=request.getContextPath()%>/heros/infos">人物设置</a></li>
						</ul>
					</li>
				</ul>
			</div>

		</div>

	</div>
</div>
