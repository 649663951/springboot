<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <%@ include file="/WEB-INF/views/common.jsp"%>
  
</head>
<style type="text/css">
.div {
	width: 100px;
	height: 10px;
	border: 2px;
	position: relative;
	left: 1000px;
	top: 10px
}
</style>

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
                    <li>
                      <a href="<%=request.getContextPath()%>/heros/serviceConfList">人物设置</a>
                    </li>
                    <li class="active">人物介绍</li>
                  </ul>

                  <form class="form-horizontal form-label-left" action="<%=request.getContextPath()%>/heros/edits"  method="post" id="createForm">
                    <div class="container-fluid">
                      <div class="row-fluid">
                        <div class="span12">
                          <div class="tabbable" id="tabs-620775">
                            <ul class="nav nav-tabs">
                              <li class="active">
                                <a href="#deployment" data-toggle="tab">基本信息</a>
                              </li>
                              <li>
                                <a href="#lable" data-toggle="tab">皮肤</a>
                              </li>
                            </ul>
                            <div class="tab-content">
                              <input type="hidden" value="${msg}" id="msg" />
                              <div class="tab-pane active" id="deployment">

                                <br>

                                <legend>人物信息：</legend>
                                
                                 <div class="div">
		                             <img class="double-border"  src="<%=request.getContextPath()%>/images/team.jpg" style="border-radius: 200px; width: 250px; height: 250px"   alt="">
                                </div>

                                <div class="form-group">
                                  <label class="control-label col-md-1 col-sm-3 col-xs-12 appClass" for="name">名称：
                                    <span class="required">*</span>
                                  </label>
                                  <div class="col-md-2 col-sm-6 col-xs-12">
                                    <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="请输入人物名称" autocomplete="off" required="required" type="text" value="${hero.name}" readonly="readonly">
                                  </div>
                                </div>

                                <div id="portDiv">
                                  <div class="form-group">
                                    <div id="ipDiv">
                                      <label class="control-label col-md-1 col-sm-3 col-xs-12 appClass" for="hostIp">中文名称：
                                        <span class="required">*</span>
                                      </label>
                                      <div class="col-md-2 col-sm-6 col-xs-12">
                                        <input type="text" id="anotherName" name="anotherName" class="form-control col-md-7 col-xs-12" value="${hero.anotherName}" placeholder="请输入人物中文名称" readonly="readonly">
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label class="control-label col-md-1 col-sm-3 col-xs-12 appClass">人物定位：
                                    <span class="required">*</span>
                                  </label>
                                  <div class="col-md-2 col-sm-6 col-xs-12">
                                    <select class="form-control" name="position" id="position" disabled="disabled">
                                      <option value="法师" <c:if test="${hero.position == '法师' }">selected</c:if>>法师</option>
                                      <option value="战士" <c:if test="${hero.position ==  '战士'    }">selected</c:if>>战士</option>
                                      <option value="射手" <c:if test="${hero.position == '射手' }">selected</c:if>>射手</option>
                                      <option value="刺客" <c:if test="${hero.position == '刺客' }">selected</c:if>>刺客</option>
                                      <option value="坦克" <c:if test="${hero.position == '坦克' }">selected</c:if>>坦克</option>
                                    </select>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label class="control-label col-md-1 col-sm-3 col-xs-12 appClass">位置：
                                    <span class="required">*</span>
                                  </label>
                                  <div class="col-md-2 col-sm-6 col-xs-12">
                                    <select class="form-control" name="site" id="site" disabled="disabled">
                                      <option value="上单" <c:if test="${hero.site == '上单' }">selected</c:if>>上单</option>
                                      <option value="中单" <c:if test="${hero.site == '中单' }">selected</c:if>>中单</option>
                                      <option value="打野" <c:if test="${hero.site == '打野' }">selected</c:if>>打野</option>
                                      <option value="AD" <c:if test="${hero.site == 'AD' }">selected</c:if>>AD</option>
                                      <option value="辅助" <c:if test="${hero.site == '辅助' }">selected</c:if>>辅助</option>
                                    </select>
                                  </div>
                                </div>

                                  <div class="form-group">
                                  <label class="control-label col-md-1 col-sm-3 col-xs-12 appClass" for="name">定价：
                                    <span class="required">*</span>
                                  </label>
                                  <div class="col-md-2 col-sm-6 col-xs-12">
                                    <input id="price" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="price" placeholder="请输入定价" autocomplete="off" required="required" type="text" value="${hero.price}" readonly="readonly">
                                  </div>
                                </div>
                                
                                      <div class="form-group">
                                  <label class="control-label col-md-1 col-sm-3 col-xs-12 appClass" for="name">座右铭：
                                    <span class="required">*</span>
                                  </label>
                                  <div class="col-md-2 col-sm-6 col-xs-12">
                                    <input id="motto" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="motto" placeholder="请输入座右铭" autocomplete="off" required="required" type="text" value="${hero.motto}" readonly="readonly">
                                  </div>
                                </div>

                                    <br>
                                    
                                 <fieldset>

                                  <legend>技能介绍：</legend>

                                  <div class="form-group">
                                    <label class="control-label col-md-1 col-sm-3 col-xs-12 health" for="rInitial">Q：
                                      <span class="required">*</span>
                                    </label>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                      <input type="text" id="skill_q" name="skill_q" required="required" class="form-control col-md-7 col-xs-12"  placeholder="请输入" value="${hero.skill_q}" readonly="readonly">
                                    </div>

                                    <label class="control-label col-md-1 col-sm-3 col-xs-12 health" for="rPeriod">W：
                                      <span class="required">*</span>
                                    </label>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                      <input type="text" id="skill_w" name="skill_w" required="required" class="form-control col-md-7 col-xs-12"  placeholder="请输入" value="${hero.skill_w}" readonly="readonly">
                                    </div>

                                  </div>

                                  <div class="form-group">
                                    <label class="control-label col-md-1 col-sm-3 col-xs-12 health" for="rSuccess">E：
                                      <span class="required">*</span>
                                    </label>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                      <input type="text" id="skill_e" name="skill_e" required="required" class="form-control col-md-7 col-xs-12"  placeholder="请输入" value="${hero.skill_e}" readonly="readonly">
                                    </div>

                                    <label class="control-label col-md-1 col-sm-3 col-xs-12 health" for="rTimeout">R：
                                      <span class="required">*</span>
                                    </label>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                      <input type="text" id="skill_r" name="skill_r" required="required" class="form-control col-md-7 col-xs-12"  placeholder="请输入"  value="${hero.skill_r}" readonly="readonly">
                                    </div>
                                  </div>

                                  <div class="form-group">
                                    <label class="control-label col-md-1 col-sm-3 col-xs-12 health" for="rFailure">被动：
                                      <span class="required">*</span>
                                    </label>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                      <input type="text" id="unactive" name="unactive" required="required" class="form-control col-md-7 col-xs-12"  placeholder="请输入" value="${hero.unactive}" readonly="readonly">
                                    </div>
                                  </div>
                                </fieldset>
                              </div>
                              
                               <div class="tab-pane" id="lable"><br>
                                 <legend>皮肤信息：</legend>

                                <br>
                                <br>

                                <div id="addlable">
                                  <div class="form-group">
                                    <label class="control-label col-md-1 col-sm-3 col-xs-12">
                                    </label>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                      <input type="text" id="lableList[0].key" name="lableList[0].key" class="form-control col-md-7 col-xs-12" placeholder="（键）">
                                    </div>

                                    <label class="control-label col-md-1 col-sm-3 col-xs-12" style="text-align: center;">
                                    </label>
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                      <input type="text" id="lableList[0].value" name="lableList[0].value" class="form-control col-md-7 col-xs-12" placeholder="（值）">
                                    </div>
                                  </div>
                                  <input id="lableNum" name="lableNum" type="hidden" value="0" />
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="ln_solid"></div>
                    <div class="form-group">
                      <div class="col-md-3 col-md-offset-4">
                        <button id="cancel" type="button" class="btn btn-primary" onclick="addReturn('<%=request.getContextPath()%>/heros/infos')">返回</button>
                      </div>
                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /page content -->

      <!-- footer content -->
      <footer>
        <!-- jQuery -->
        <%@ include file="/WEB-INF/views/footer.jsp"%>
      </footer>
      <!-- /footer content -->
    </div>
  </div>
  <script src="<%=request.getContextPath()%>/js/hero/add.js"></script>
  
</body>
</html>