<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.1.3.min.js"></script>

	<!-- Bootstrap -->
    <link href="<%=request.getContextPath() %>/gentelella/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=request.getContextPath() %>/gentelella/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath() %>/gentelella/vendors/bootstrap/dist/css/bootstrap-select.css" rel="stylesheet">
    <!-- Bootstrap -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/gentelella/vendors/bootstrap/dist/js/bootstrap-select.js"></script>
    <!-- NProgress -->
    <link href="<%=request.getContextPath() %>/gentelella/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<%=request.getContextPath() %>/gentelella/build/css/custom.min.css" rel="stylesheet"> 
    <!-- iCheck -->
    <link href="<%=request.getContextPath() %>/gentelella/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    
    <!-- 时间控件css -->
    <link href="<%=request.getContextPath() %>/gentelella/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- table分页css -->
    <link href="<%=request.getContextPath() %>/gentelella/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
    <!-- 下拉框支持搜索 -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/lib/jquery/1.9.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/lib/select2/4.0.4/css/select2.min.css"  rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath() %>/lib/select2/4.0.4/js/select2.min.js" ></script>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <!-- 附件上传相关css 、JS -->
    <!-- webupload -->
    <link rel="stylesheet" type="text/css" 	href="<%=request.getContextPath() %>/gentelella/vendors/dropzone/dist/min/dropzone.min.css" />

<script>
	var localObj = window.location;
	var contextPath = localObj.pathname.split("/")[1];
	var basePath = "";
	if(contextPath == "springboot"){
		basePath = localObj.protocol + "//" + localObj.host+"/"+contextPath;
	}else{
		basePath = localObj.protocol + "//" + localObj.host;
	}
</script>
<style>

.dataTables_wrapper>.row {
    overflow: unset !important;
}
table.table-bordered.dataTable tbody th, table.table-bordered.dataTable tbody td{
	word-break: break-all;
}

.nav-sm .container.body .right_col ,.nav-md .container.body .right_col ,.nav-lg .container.body .right_col {
   margin-left: 180px !important;
}   
 .select2-container--default .select2-selection--single .select2-selection__rendered {
    color: #444;
    line-height: 31px;
    border-radius: 0px;
    border: 1px solid #ddd;
}


</style>