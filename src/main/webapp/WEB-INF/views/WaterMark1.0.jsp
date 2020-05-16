<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
