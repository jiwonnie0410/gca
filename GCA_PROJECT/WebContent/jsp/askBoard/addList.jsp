<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<html>
    <head>
        <title>게시판</title>       
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	
	
	
	  <script type="text/javascript">
            $(document).ready(function(){
                 
                //--페이지 셋팅
                var totalPage = ${totalPage}; //전체 페이지
                var startPage = ${startPage}; //현재 페이지
                 
                var pagination = "";
                 
                //--페이지네이션에 항상 10개가 보이도록 조절
                var forStart = 0;
                var forEnd = 0;
                 
                if((startPage-5) < 1){
                    forStart = 1;
                }else{
                    forStart = startPage-5;
                }
                 
                if(forStart == 1){
                     
                    if(totalPage>9){
                        forEnd = 10;
                    }else{
                        forEnd = totalPage;
                    }
                     
                }else{
                     
                    if((startPage+4) > totalPage){
                         
                        forEnd = totalPage;
                         
                        if(forEnd>9){
                            forStart = forEnd-9
                        }
                         
                    }else{
                        forEnd = startPage+4;
                    }
                }
                //--페이지네이션에 항상 10개가 보이도록 조절
                 
                //전체 페이지 수를 받아 돌린다.
                for(var i = forStart ; i<= forEnd ; i++){
                    if(startPage == i){
                        pagination += ' <button name="page_move" start_page="'+i+'" disabled>'+i+'</button>';
                    }else{
                        pagination += ' <button name="page_move" start_page="'+i+'" style="cursor:pointer;" >'+i+'</button>';
                    }
                }
                 
                //하단 페이지 부분에 붙인다.
                $("#pagination").append(pagination);
                //--페이지 셋팅
                 
                 
                $("a[name='subject']").click(function(){
                     
                    location.href = "/board/view?id="+$(this).attr("content_id");
                     
                });
                 
                $("#write").click(function(){
                    location.href = "/board/edit";
                });
                                 
                $(document).on("click","button[name='page_move']",function(){
                     
                    var visiblePages = 10;//리스트 보여줄 페이지
                     
                    $('#startPage').val($(this).attr("start_page"));//보고 싶은 페이지
                    $('#visiblePages').val(visiblePages);
                     
                    $("#frmSearch").submit();
                     
                });
                 
            });
        </script>

   <style>
    table{
     table-layout:fixed;
}
    .autocut{
     text-overflow:ellipsis;
     overflow:hidden;
     white-space: nowrap;
     align="center"
}
.results tr[visible='false'],
	.no-result{
	  display:none;
	}

	.results tr[visible='true']{
	  display:table-row;
	}
    </style>
    </head>
    <body>
        <!-- <form class="form-inline" id="frmSearch" action="/board/list"> -->
         <form  id="frmSearch" action="/board/list">
            <input type="hidden" id="startPage" name="startPage" value=""><!-- 페이징을 위한 hidden타입 추가 -->
            <input type="hidden" id="visiblePages" name="visiblePages" value=""><!-- 페이징을 위한 hidden타입 추가 -->
            <div  align="center">
              <div class="jumbotron">
				<h2>홍보</h2>
				<p>* 홍보설명글</p>
			 </div>
				<div class="container"  style="padding-right:3%;padding-left:3%;">
				<br>
				 <!--검색  -->
				<div class="form-group pull-right" >
					<input type="text" class="search form-control" placeholder="검색" style="border-color: #FE9191;">
			    </div>
			     <!--검색  -->
				<div class=”table-responsive“>
                <table class="table table-hover results" >
                	<thead>
	                   <tr>
							<th width="20" ><center>#</center></th>
							<th width="20"><center>ID</center></th>
							<th width="60"><center>Title</center></th>
					 </tr>
					 <!-- 검색시 없을경우 -->
					 <tr class="warning no-result">
	                <td colspan="3"><i class="fa fa-warning"></i> No result</td>
	                </tr>
	                <!-- 검색시 없을경우 -->
			       </thead>	
			    <!-- db 목록을 가져와서 뿌려주는 곳 -->
				<!-- db에 목록이 이없으면 empty:비어있다는 뜻임  -->
			     <tbody>		
			      <c:choose>
                         <c:when test="">
                            <tr>
                                <td colspan="4" align="center">조회결과가 없습니다.</td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="boardList" items="" varStatus="status">
                                <tr>
                                    <td align="center">${boardList.id}</td>
                                    <td>
                                        <a name="subject" class="mouseOverHighlight" ></a>
                                    </td>
                                    <td align="center"></td>
                                    <td align="center"></td>
                                </tr>
                            </c:forEach>
                        </c:otherwise> 
                    </c:choose>
                    <!-- 나중에 삭제  -->
                              <tr onclick="location.href='addView.jsp'">
                                    <td align="center">1</td>
                                    <td align="center">진뇽</td>
                                    <td  align="center" class="autocut">진뇽이다진뇽이다진뇽이다진뇽이다</td>
                                </tr>
                                <tr data-toggle="modal" data-target="#myModal2">
                                    <td align="center">2</td>
                                    <td align="center">지원</td>
                                    <td  align="center" class="autocut">지원이다지원이다지원이다지원이다</td>
                                </tr>
                                <tr data-toggle="modal" data-target="#myModal2">
                                    <td align="center">3</td>
                                    <td align="center">미현</td>
                                    <td  align="center" class="autocut">미현이다미현이다미현이다미현이다</td>
                                </tr>
                                 <tr data-toggle="modal" data-target="#myModal2">
                                    <td align="center">4</td>
                                    <td align="center">수림</td>
                                    <td  align="center" class="autocut">수림이다수림이다수림이다수림이다</td>
                                </tr>
                                <tr data-toggle="modal" data-target="#myModal2">
                                    <td align="center">5</td>
                                    <td align="center">은영</td>
                                    <td  align="center" class="autocut">은영이다은영이다은영이다은영이다</td>
                                </tr>
                                 <tr data-toggle="modal" data-target="#myModal2">
                                    <td align="center">6</td>
                                    <td align="center">진뇽</td>
                                    <td  align="center" class="autocut">진뇽이다진뇽이다진뇽이다진뇽이다</td>
                                </tr>
                                <tr data-toggle="modal" data-target="#myModal2">
                                    <td align="center">7</td>
                                    <td align="center">지원</td>
                                    <td  align="center" class="autocut">지원이다지원이다지원이다지원이다</td>
                                </tr>
                           <!--      <tr data-toggle="modal" data-target="#myModal">
                                    <td align="center">8</td>
                                    <td align="center">미현</td>
                                    <td  align="center" class="autocut">미현이다미현이다미현이다미현이다</td>
                                </tr>
                                 <tr data-toggle="modal" data-target="#myModal">
                                    <td align="center">9</td>
                                    <td align="center">수림</td>
                                    <td  align="center" class="autocut">수림이다수림이다수림이다수림이다</td>
                                </tr>
                                <tr>
                                    <td align="center">10</td>
                                    <td align="center">은영</td>
                                    <td  align="center" class="autocut">은영이다은영이다은영이다은영이다</td>
                                </tr>
                                 <tr >
                                    <td align="center">11</td>
                                    <td align="center">진뇽</td>
                                    <td  align="center" class="autocut">진뇽이다진뇽이다진뇽이다진뇽이다</td>
                                </tr>
                                <tr>
                                    <td align="center">12</td>
                                    <td align="center">지원</td>
                                    <td  align="center" class="autocut">지원이다지원이다지원이다지원이다</td>
                                </tr>
                                <tr>
                                    <td align="center">13</td>
                                    <td align="center">미현</td>
                                    <td  align="center" class="autocut">미현이다미현이다미현이다미현이다</td>
                                </tr>
                                 <tr>
                                    <td align="center">14</td>
                                    <td align="center">수림</td>
                                    <td  align="center" class="autocut">수림이다수림이다수림이다수림이다</td>
                                </tr>
                                <tr>
                                    <td align="center">15</td>
                                    <td align="center">은영</td>
                                    <td  align="center" class="autocut">은영이다은영이다은영이다은영이다</td>
                                </tr>
                                 -->
                                
                 <!-- 나중에 삭제  -->
                 
                </table>
                <!-- 페이징 -->
                  <div id="pagination"></div>
                </div>
                </div>
                <br>
                 <!-- 글쓰기 버튼  -->
	            <div align="right"> 
					<button class="btn btn-primary px-4 py-3" type="button" onclick="location.href='addEdit.jsp'"  style="margin-right: 10%">Write</button><!-- data-target="#myModal" -->
				</div>
            </div>
           
        </form>
        

        
        
        
        
        
        <!--검섹  -->
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script>
	$(document).ready(function() {
	  $(".search").keyup(function () {
		var searchTerm = $(".search").val();
		var listItem = $('.results tbody').children('tr');
		var searchSplit = searchTerm.replace(/ /g, "'):containsi('")
		
	  $.extend($.expr[':'], {'containsi': function(elem, i, match, array){
			return (elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
		}
	  });
		
	  $(".results tbody tr").not(":containsi('" + searchSplit + "')").each(function(e){
		$(this).attr('visible','false');
	  });

	  $(".results tbody tr:containsi('" + searchSplit + "')").each(function(e){
		$(this).attr('visible','true');
	  });

	  var jobCount = $('.results tbody tr[visible="true"]').length;
		$('.counter').text(jobCount + ' item');

	  if(jobCount == '0') {$('.no-result').show();}
		else {$('.no-result').hide();}
			  });
	});	
	</script>
        
</body>
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath }/js/aos.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath }/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="${pageContext.request.contextPath }/js/google-map.js"></script>
<script src="${pageContext.request.contextPath }/js/main.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>

<!--ㅡ모달  -->
<%-- jQuery CDN --%>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>

</html>
