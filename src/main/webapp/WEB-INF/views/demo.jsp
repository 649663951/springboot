<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="http://" type="images/x-ico" />
<title>Manager</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->

<!-- Bootstrap -->
<%@ include file="/WEB-INF/views/common.jsp"%>
</head>
<body class="nav-md">

	<div class="container body">
		<div class="main_container">
			<%@ include file="/WEB-INF/views/menu.jsp"%>

			<!-- top navigation -->
			<%@ include file="/WEB-INF/views/navigation.jsp"%>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
					</div>

					<div class="clearfix"></div>

					<div class="row">

						<div class="col-md-12 col-sm-6 col-xs-12">
							<div class="x_panel">

								<div class="x_content">
									<ul class="breadcrumb">
										<li><a href="#">样式演习</a></li>
									</ul>
		
									<!-- form -->
									<form id="myform" name="form1" data-parsley-validate class="form-horizontal form-label-left" action="<%=request.getContextPath()%>/heros/info" method="post">
										
										<div class="form-group">
							
											<label class="control-label col-md-1 col-sm-3 col-xs-12" for="first-name">双选框：</label>
											<div class="form-group col-md-2 col-sm-6 col-xs-12">
												<input type='text' id='subSystemName' name='subSystemName' readOnly onclick="selectSubSystem();" placeholder="请选择" class="form-control col-md-7 col-xs-12">
												<input type='HIDDEN' id='subSystemCode' name='subSystemCode' />
											 </div>						
						                     <label class="control-label col-md-1 col-sm-3 col-xs-12" for="first-name">城市：</label>
						                     <div class="form-group col-md-2 col-sm-6 col-xs-12">
						                     <select class="singleSelect" name="position" id="position" style="width: 200px">
                                                 <option value="" selected="selected">--请选择--</option>
                                                 <option value="北京">北京</option>
                                                 <option value="上海">上海</option>
                                                 <option value="深圳">深圳</option>
                                                 <option value="杭州">杭州</option>
                                                 <option value="天津">天津</option>
                                                 <option value="西安">西安</option>
                                                 <option value="长沙">长沙</option>
                                                 <option value="郑州">郑州</option>
                                                 <option value="武汉">武汉</option>
                                                 <option value="哈尔滨">哈尔滨</option>
                                                 <option value="太原">太原</option>
                                                 <option value="洛阳">洛阳</option>
                                                 <option value="成都">成都</option>
                                                 <option value="温州">温州</option>
                                                 <option value="石家庄">石家庄</option>
                                                 <option value="苏州">苏州</option>
                                                 <option value="合肥">合肥</option>
                                                 <option value="南昌">南昌</option>
                                                 <option value="兰州">兰州</option>
                                                 <option value="银川">银川</option>
                                                 <option value="昆明">昆明</option>
                                                 <option value="重庆">重庆</option>
                                                 <option value="南京">南京</option>
                                                 <option value="拉萨">拉萨</option>
                                             </select>
										   </div>
                                       </div> 

										<div class="ln_solid"></div>
									</form>
									</br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static"aria-hidden="true"></div>
			<!-- /page content -->
			<!-- footer content -->
			<footer> <!-- jQuery --> 
				<%@ include file="/WEB-INF/views/footer.jsp"%> 
			</footer>
			<!-- /footer content -->
		</div>
	</div>	
</body>
</html>
<script language="javascript">
$(document).ready(function() {
	$('.singleSelect').select2();
});
function selectSubSystem() {
	var url = "<%=request.getContextPath()%>/select";
	window.open(url,"","height=500, width=700, top=150, left=200, toolbar=no, menubar=no,scrollbars =yes, resizable =yes,location=no");
}

</script>