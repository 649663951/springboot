<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="http://" type="images/x-ico" />
<title>Manager</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap -->
<%@ include file="/WEB-INF/views/common.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/lib/bootstrap.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/lib/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/lib//jquery.js"></script>
</head>
<body class="nav-md">

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title"></div>

					<div class="clearfix"></div>

					<div class="row">

						<div class="col-md-12 col-sm-6 col-xs-12">
							<div class="x_panel">

								<div class="x_content">
									<ul class="breadcrumb">
										<li><a href="#">双选框案例</a></li>
									</ul>

									<fieldset>
										<form name="selectDepartmentForm" action="selectDepartment.do"
											method="post">
											<%-- <input type="hidden" id="systemCode" value="<c:out value="${systemCode}"/>"> --%>
											<table class="table table-bordered dchannel-table">
												<tbody>
													<tr class="item-default">
														<td align="right" style="width: 50%;">
														<select name='areamodule' multiple="multiple" size="15" style="width: 100%;">
																<option><b>可选列表</b></option>
																<option>＝＝＝＝＝＝＝＝＝</option>
																<option value="1">北京</option>
																<option value="2">上海</option>
																<option value="3">深圳</option>
																<option value="4">西安</option>
																<option value="5">广州</option>
														</select></td>
														<td style="width: 50px;" valign="middle">
															<button type="button" class="btn btn-default btn-small"
																id="btn_select_all_area"
																onClick="javascript:addAllItem(document.forms[0].areamodule,document.forms[0].module,'');">
																<span class="glyphicon glyphicon-forward"></span>
															</button>
															<button type="button" class="btn btn-default btn-small"
																id="btn_choose_selected_area"
																onClick="javascript:addSelectedItem(document.forms[0].areamodule,document.forms[0].module,'');">
																<span class="glyphicon glyphicon-chevron-right"></span>
															</button>
															<button type="button" class="btn btn-default btn-small"
																id="btn_remove_selected_area"
																onClick="javascript:removeSelectedItem(document.forms[0].module);">
																<span class="glyphicon glyphicon-chevron-left"></span>
															</button>
															<button type="button" class="btn btn-default btn-small"
																id="btn_remove_all_area"
																onClick="javascript:removeAllItem(document.forms[0].module);">
																<span class="glyphicon glyphicon-backward"></span>
															</button>
														</td>
														<td style="width: 50%;">
														<select id="module" multiple="multiple" size="15" style="width: 100%;">
																<option><b>已选列表</b></option>
																<option>＝＝＝＝＝＝＝＝＝</option>
														</select></td>
													</tr>
													<table width="100%" align="center">
														<tr align="center">
															<td colspan="20"><input type="button"
																class="tpbutton" value="确   定" onClick="submitSelect();" />&nbsp;&nbsp;&nbsp;
																<input type="button" class="tpbutton" value="关   闭"
																onClick="closeLayer();" /></td>
														</tr>
													</table>
													</form>
													</fieldset>
													</br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

	<script src="<%=request.getContextPath()%>/js/heros.js"></script>

</body>
</html>
<script language="javascript">
	function closeLayer() {
		window.close();
	}

	function submitSelect() {
		var selObj = document.getElementById("module");
		if (selObj.options.length < 3) {
			alert("请选择");
			return;
		}
		var code = "";
		var name = "";
		for (var i = 2; i < selObj.length; i++) {
			var optionVal = selObj.options[i].value.split(";");
			code += optionVal[0] + ";";
			name += selObj.options[i].text + ";"
		}

		if (code != "")
			code = code.substring(0, code.length - 1);
		if (name != "")
			name = name.substring(0, name.length - 1);
		window.parent.setMultiSelect(code, name);
		window.close();
	}
	function selectAll(list) {
		for (i = 0; i < list.options.length; i++) {
			if (i < 2) {
				list.options[i].selected = false;
			} else {
				list.options[i].selected = true;
			}
		}
	}

	function findItem(item, list) {
		for (var i = 2; i < list.options.length; i++) {
			var roleitem = list.options[i].value.substring(0,
					list.options[i].value.indexOf(";"));
			if (roleitem == item) {
				return true;
			}
		}
		return false;
	}

	function addSelectedItem(srclist, destlist, desc) {
		for (var i = 2; i < srclist.options.length; i++) {
			if (srclist.options[i].selected) {
				var blfind = findItem(srclist.options[i].value, destlist);
				if (!blfind) {
					var oOption = document.createElement("OPTION");
					oOption.text = srclist.options[i].text;
					if (desc != "") {
						oOption.text += "(" + desc + ")";
					}
					oOption.value = srclist.options[i].value + ";"
							+ oOption.text;
					destlist.add(oOption);
				}
			}
		}
	}

	function removeSelectedItem(list) {
		var i = list.options.length;
		while (i > 2) {
			i--;
			if (list.options[i].selected) {
				list.options[i] = null;
			}
		}
	}

	function addAllItem(srclist, destlist, desc) {
		for (var i = 2; i < srclist.options.length; i++) {
			var blfind = findItem(srclist.options[i].value, destlist);
			if (!blfind) {
				var oOption = document.createElement("OPTION");
				oOption.text = srclist.options[i].text;
				if (desc != "") {
					oOption.text += "(" + desc + ")";
				}
				oOption.value = srclist.options[i].value + ";" + oOption.text;
				destlist.add(oOption);
			}
		}
	}

	function removeAllItem(list) {
		var i = list.options.length;
		while (i > 2) {
			i--;
			list.options[2] = null;
		}
	}
</script>