<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="top_nav" style="margin-left: 180px;">
  <div class="nav_menu">
    <nav>
    
      <div class="nav toggle">
        <a id="menu_toggle">
          <i class="fa fa-bars"></i>
        </a>
      </div>

      <ul class="nav navbar-nav navbar-right">
        <li class="">
          <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            <img src="<%=request.getContextPath() %>/images/img.jpg" alt="">
            andy
            <span class=" fa fa-angle-down"></span>
          </a>
          <ul class="dropdown-menu dropdown-usermenu pull-right">
         
            <li>
              <a href="<%=request.getContextPath() %>/logout">
                <i class="fa fa-sign-out pull-right"></i>
                Log Out
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
  
  <div class="clearfix"></div>
  
</div>
