<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.1.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/WaterMark.js"></script>
<style>
html, body {
  height: 100%;
  width: 100%;
  margin: 0;
  padding: 0;
}
</style>


<script>
    var waterMark = new WaterMark(document.getElementsByTagName('body')[0], {
	text : 'andy',
	color : "#000000",
	text2 : "team syetem"
    });
</script>
