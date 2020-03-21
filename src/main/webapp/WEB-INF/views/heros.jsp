<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="http://" type="images/x-ico" />
<title>联盟管家</title>
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
										<li><a href="#">人物设置</a></li>
									</ul>
		
									<!-- form -->
									<form id="myform" data-parsley-validate
										class="form-horizontal form-label-left" action="<%=request.getContextPath()%>/heros/info" method="post">
										
										<div class="form-group">
											
											<label class="control-label col-md-1 col-sm-3 col-xs-12" for="first-name">英雄：</label>
											<div class="form-group col-md-2 col-sm-6 col-xs-12">
												<input type="text" id="name" name="name" autocomplete="off" value="${name}" placeholder="请输入英雄" class="form-control col-md-7 col-xs-12">
											</div>
											
											<label class="control-label col-md-1 col-sm-3 col-xs-12" for="first-name">位置：</label>
											<div class="form-group col-md-2 col-sm-6 col-xs-12">
												<input type="text" id="site" name="site" autocomplete="off" value="${role}" placeholder="请输入角色" class="form-control col-md-7 col-xs-12">
											</div>
										</div>
										

										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="col-md-8 col-sm-6 col-xs-12 col-md-offset-4">
												<button class="btn btn-success" type="submit" id="submitBtn">查询</button>
												<button class="btn btn-primary" type="reset" id="resetBtn">重置</button>
												<button class="btn btn-warning btn-primary" type="button" id="hero_add">新增</button>
											</div>
										</div>
									</form>
									</br>
									
									<!-- table -->
									<div class="col-md-12 col-sm-12 col-xs-12">
										<div class="x_panel">
											<div class="x_content">
												<table id="datatable"
													class="table table-striped table-bordered " style="width: 100%";>
													<thead>
														<tr>
														<th class="column-title text-center">序号</th>
														<th class="column-title text-center">英雄</th>
														<th class="column-title text-center">昵称</th>
														<th class="column-title text-center">定位</th>
														<th class="column-title text-center">位置</th>
														<th class="column-title text-center">创建人</th>
														<th class="column-title text-center">创建日期</th>
														<th class="column-title text-center">是否有效</th>
														<th class="column-title no-link last text-center"><span class="nobr">操作</span></th>
														<th class="bulk-actions" colspan="7"><a class="antoo"
															style="color: #fff; font-weight: 500;">Bulk Actions (<span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i>
													     </a></th>
														</tr>
													</thead>
													<tbody>
											<c:forEach items="${heros}" var="heros" varStatus="status">
												<tr class="even pointer">
													<td class="text-center">${status.index+1}</td>
													<td class="text-center">${heros.name}</td>
													<td class="text-center">${heros.anotherName}</td>
													<td class="text-center">${heros.position}</td>
													<td class="text-center">${heros.site}</td>
													<td class="text-center">${heros.created_By}</td>
													<td class="text-center">${heros.created_Date}</td>
													<td class="text-center">${heros.is_Vaild}</td>
													<td class="last text-center">
														<div class="btn-group">
														<a href="#" 
																data-toggle="dropdown" aria-expanded="false" style="height: 21.92px;background:none; ">
																<i class="fa fa-ellipsis-h"></i> 
														</a>
													    <ul class="dropdown-menu" role="menu">
													    	<li><a href="<%=request.getContextPath() %>/heros/info/${heros.id}/"><i class="fa fa-search"></i>查看</a></li>
															<li><a href="<%=request.getContextPath() %>/heros/edit/${heros.id}/"><i class="fa fa-edit"></i>编辑</a></li>
															<li><a href="#" onClick="removeHero('${heros.id}')"><i class="fa fa-trash-o"></i>删除</a></li>
                                                        </ul>
														</div>
													</td>
												</tr>
										    </c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>

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
	<script src="<%=request.getContextPath()%>/js/heros.js"></script>

</body>
</html>