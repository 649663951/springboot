$(function() {

	//跳转到新增页面
	$("#hero_add").click(function(){
		window.location.href = basePath +  "/heros/add";
	});
	
});

/**
* 
* 删除任务信息
 */
function removeHero(id) {
	 BootstrapDialog.confirm({
         title: '警告', //title内容
         message: '是否确认要删除该人物信息？', //对话框提示的字
         type: BootstrapDialog.TYPE_PRIMARY,  //title的颜色
         closable: true,  //默认false 点击背景弹框不消失 true 点击背景 弹框消失 （右上角X会出现）
         draggable: false, //默认false 不可以拖动弹框  true 可拖动弹框
         btnCancelLabel: '取消', //取消按钮文字
         btnOKLabel: '确认',  //确定按钮文字
         btnOKClass: 'btn-primary',   //确定按钮的颜色
         callback: function(result) { //如果确定 result 有数值
        	 if(result) {
        		 $.ajax({
          			url : basePath + "/heros/delete/" + id,
          			data : {},
          			type : 'delete',
          			cache : false,
          			async:	false,
          			dataType : 'json',
          			success : function(data) {
          				 if(data.code) {
          					BootstrapDialog.alert({
          			            title: '安盛云系统提示',
          			            message: '删除人物信息成功!',
          			            type: BootstrapDialog.TYPE_PRIMARY, 
          			            closable: true, 
          			            draggable: false, 
          			            buttonLabel: '确定', 
          			            btnOKClass: 'btn-primary', 
          			            callback: function(result) {
          			            	window.location.href = basePath +  "/heros/infos";
          			            }
          			        });
          			        }else {
          			        	alertModalFail("删除人物信息失败！");
          			        }
          			},
          			error : function() {
          				alertModalFail("系统异常，删除人物信息失败！");
          			}
          		});
             }else {
            	 //选择取消未执行操作
             }
         }
     });
}