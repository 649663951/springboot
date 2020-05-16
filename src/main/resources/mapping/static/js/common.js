$(function() {
	 setTimeout(setInterval(checkPopover,5000), 5000);	
});

/*
 * 基于bootstrap modal；自定义confirm 和 alert 弹出框。
 */
(function($) {
	window.Common = function() {
		var html = '<div id="[Id]" class="modal fade" role="dialog" aria-labelledby="modalLabel">'
				+ '<div class="modal-dialog modal-sm">'
				+ '<div class="modal-content">'
				+ '<div class="modal-header">'
				+ '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>'
				+ '<h4 class="modal-title" id="modalLabel">[Title]</h4>'
				+ '</div>'
				+ '<div class="modal-body">'
				+ '<p>[Message]</p>'
				+ '</div>'
				+ '<div class="modal-footer">'
				+ '<button type="button" class="btn btn-default cancel" data-dismiss="modal">[BtnCancel]</button>'
				+ '<button type="button" class="btn btn-primary ok" data-dismiss="modal">[BtnOk]</button>'
				+ '</div>' + '</div>' + '</div>' + '</div>';

		var dialogdHtml = '<div id="[Id]" class="modal fade" role="dialog" aria-labelledby="modalLabel">'
				+ '<div class="modal-dialog">'
				+ '<div class="modal-content">'
				+ '<div class="modal-header">'
				+ '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>'
				+ '<h4 class="modal-title" id="modalLabel">[Title]</h4>'
				+ '</div>'
				+ '<div class="modal-body">'
				+ '</div>'
				+ '</div>'
				+ '</div>' + '</div>';
		var reg = new RegExp("\\[([^\\[\\]]*?)\\]", 'igm');
		var generateId = function() {
			var date = new Date();
			return 'mdl' + date.valueOf();
		}
		var init = function(options) {
			options = $.extend({}, {
				title : "操作提示",
				message : "提示内容",
				btnok : "确定",
				btncl : "取消",
				width : 200,
				auto : false
			}, options || {});
			var modalId = generateId();
			var content = html.replace(reg, function(node, key) {
				return {
					Id : modalId,
					Title : options.title,
					Message : options.message,
					BtnOk : options.btnok,
					BtnCancel : options.btncl
				}[key];
			});
			$('body').append(content);
			$('#' + modalId).modal({
				width : options.width,
				backdrop : 'static',
			});
			$('#' + modalId).on('hide.bs.modal', function(e) {
				$('body').find('#' + modalId).remove();
			});
			return modalId;
		}

		return {
			/* 自定义alert */
			alert : function(options) {
				if (typeof options == 'string') {
					options = {
						message : options
					};
				}
				var id = init(options);
				var modal = $('#' + id);
				/* 变色效果 */
				/* modal.find('.ok').removeClass('btn-success').addClass('btn-primary'); */
				modal.find('.cancel').hide();

				return {
					id : id,
					on : function(callback) {
						if (callback && callback instanceof Function) {
							modal.find('.ok').click(function() {
								callback(true);
							});
						}
					},
					hide : function(callback) {
						if (callback && callback instanceof Function) {
							modal.on('hide.bs.modal', function(e) {
								callback(e);
							});
						}
					}
				};
			},
			/* 自定义confirm */
			confirm : function(options) {
				var id = init(options);
				var modal = $('#' + id);
				/* 变色效果 */
				/* modal.find('.ok').removeClass('btn-primary').addClass('btn-success'); */
				modal.find('.cancel').show();
				return {
					id : id,
					on : function(callback) {
						if (callback && callback instanceof Function) {
							modal.find('.ok').click(function() {
								callback(true);
							});
							modal.find('.cancel').click(function() {
								callback(false);
							});
						}
					},
					hide : function(callback) {
						if (callback && callback instanceof Function) {
							modal.on('hide.bs.modal', function(e) {
								callback(e);
							});
						}
					}
				};
			},
			/* 自定义dialog */
			dialog : function(options) {
				/*自定义option*/
				options = $.extend({}, {
					title : 'title',
					url : '',
					width : 800,
					height : 550,
					onReady : function() {
					},
					onShown : function(e) {
					}
				}, options || {});
				var modalId = generateId();

				var content = dialogdHtml.replace(reg, function(node, key) {
					return {
						Id : modalId,
						Title : options.title
					}[key];
				});
				$('body').append(content);
				var target = $('#' + modalId);
				target.find('.modal-body').load(options.url);
				if (options.onReady())
					options.onReady.call(target);
				target.modal();
				target.on('shown.bs.modal', function(e) {
					if (options.onReady(e))
						options.onReady.call(target, e);
				});
				target.on('hide.bs.modal', function(e) {
					$('body').find(target).remove();
				});
			}
		}
	}();
})(jQuery);


/**
 * 格式化时间
 */
Date.prototype.Format = function(fmt)   
{ //author: meizz   
  var o = {   
    "M+" : this.getMonth()+1,                 //月份   
    "d+" : this.getDate(),                    //日   
    "h+" : this.getHours(),                   //小时   
    "m+" : this.getMinutes(),                 //分   
    "s+" : this.getSeconds(),                 //秒   
    "q+" : Math.floor((this.getMonth()+3)/3), //季度   
    "S"  : this.getMilliseconds()             //毫秒   
  };   
  if(/(y+)/.test(fmt))   
    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
  for(var k in o)   
    if(new RegExp("("+ k +")").test(fmt))   
  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
  return fmt;   
}


/**
 * 去空格工厂
 * @param elementArray  目标元素Id
 */
function removeBlackFactory(elementIdArray){
	if((elementIdArray != null) && (elementIdArray.length >0)){
		for(var i= 0; i < elementIdArray.length; i++){
			if(($("#" + elementIdArray[i]) == undefined) || ($("#" + elementIdArray[i]).val() == null) && $("#" + elementIdArray[i]).val() == "" ){
				continue;
			}
			$("#" + elementIdArray[i]).val(Trim($("#" + elementIdArray[i]).val(),"g"));
		}
	}
}

/**
 * 去除字符串中间两边的空格
 * @param str 字符串
 * @param is_global 默认为"g"
 * @returns
 */
function Trim(str,is_global){
	var result = str;
	if(str){
	    result = str.replace(/(^\s+)|(\s+$)/g,"");
	    if(is_global.toLowerCase()=="g")
	    {
	        result = result.replace(/\s/g,"");
	     }
	}
	return result;
    
}

/**
 * 重置Form框
 */
function resetForm(){
	//去除红色
	$(".has-error").removeClass("has-error");
	//去除提示
	$(".help-block").remove();
	//重置select框
	$("select option").removeAttr("selected");
	//$("select option:first").attr("selected","selected"); 
}

/*
 * 基于bootstrap3 dialog; 自定义confirm 和 alert 弹出框。
 */
var Modal = {
	/**
	 * 
	 * @param message 提示信息  
	 * @param callback 回调函数数名  点击确定后的操作
	 */
	alert : function(message, callback) {

		BootstrapDialog.alert({
			title : "系统提示",
			message : message,
			type : BootstrapDialog.TYPE_PRIMARY,
			closable : true,
			draggable : false,
			buttonLabel : '确定',
			btnOKClass : 'btn-primary',
			callback : function(result) {
				if (result) {
					callback();
				}
			}
		});
	},

	/**
	 * 简单弹框设置
	 */
	alertContent : function(title, message) {
		BootstrapDialog.alert({
			title : title,
			message : message,
			type : BootstrapDialog.TYPE_PRIMARY,
			closable : true,
			draggable : false,
			buttonLabel : '确定',
			btnOKClass : 'btn-primary',
		});
	},
	
	/**
	 * 简单弹框设置
	 */
	alertMessage : function(message) {
		BootstrapDialog.alert({
			title : "系统提示",
			message : message,
			type : BootstrapDialog.TYPE_PRIMARY,
			closable : true,
			draggable : false,
			buttonLabel : '确定',
			btnOKClass : 'btn-primary',
		});
	}
	
	//todo bootstrap3 dialog 中还有 warning success等
}

/**
 * 
 * @param filePath 验证是否是正确URL
 * @returns
 */
function isfilePath(filePath){
	var pattern = new RegExp("http://.*\.war|http://.*\.ear|http://.*\.jar");
	return pattern.test(filePath);
}




/**
 * 弹框设置
 */
var alertModal = function(title, message) {
	BootstrapDialog.alert({
		title : title,
		message : message,
		type : BootstrapDialog.TYPE_PRIMARY,
		closable : true,
		draggable : false,
		buttonLabel : '确定',
		btnOKClass : 'btn-primary',
	});
}


/**
 * 弹框设置成功
 */
var alertModalSuccess = function(message) {
	BootstrapDialog.alert({
		title: '<font color="green" style="font-size: 1.5em;"><i class="fa fa-check"></i>&nbsp;成功</font>',
		message : message,
		type : BootstrapDialog.TYPE_PRIMARY,
		closable : true,
		draggable : false,
		buttonLabel : '确定',
		btnOKClass : 'btn-primary',
	});
}


/**
 * 弹框设置成功 刷新页面表格
 * fromId 为页面表单id
 */
var alertModalByRefresh = function(message,fromId) {
	BootstrapDialog.alert({
		title: '<font color="green" style="font-size: 1.5em;"><i class="fa fa-check"></i>&nbsp;成功</font>',
		message : message,
		type : BootstrapDialog.TYPE_PRIMARY,
		closable : true,
		draggable : false,
		buttonLabel : '确定',
		btnOKClass : 'btn-primary',
		 callback: function(result) {
		      	$("#"+fromId).submit();
		  }
	});
	
}


/**
 * 弹框设置失败
 */
var alertModalFail = function(message) {
	BootstrapDialog.alert({
		title: '<font color="red" style="font-size: 1.5em;"><i class="fa fa-warning"></i>&nbsp;警告</font>',
		message : message,
		type : BootstrapDialog.TYPE_PRIMARY,
		closable : true,
		draggable : false,
		buttonLabel : '确定',
		btnOKClass : 'btn-primary',
	});
}

/**
 * 弹框设置操作中提示
 */
var alertModalWarn = function(message) {
	BootstrapDialog.alert({
		title: '<font color="#fac400" style="font-size: 1.5em;"><i class="fa fa-warning"></i>&nbsp;提示：&nbsp;操作进行中...</font>',
		message : message,
		type : BootstrapDialog.TYPE_PRIMARY,
		closable : true,
		draggable : false,
		buttonLabel : '确定',
		btnOKClass : 'btn-primary',
	});
}

function checkPopover(){
	$(".popover-options a").popover({html : true});
}

