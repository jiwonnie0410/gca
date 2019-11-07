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

<link rel="stylesheet" href="${pageContext.request.contextPath /css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/magnific-popup.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/aos.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ionicons.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
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
            .mouseOverHighlight {
                   border-bottom: 1px solid blue;
                   cursor: pointer !important;
                   color: blue;
                   pointer-events: auto;
                }
        </style>
    </head>
    <body>
        <form class="form-inline" id="frmSearch" action="/board/list">
            <input type="hidden" id="startPage" name="startPage" value=""><!-- 페이징을 위한 hidden타입 추가 -->
            <input type="hidden" id="visiblePages" name="visiblePages" value=""><!-- 페이징을 위한 hidden타입 추가 -->
            <div align="center">
                <table width="1200px">
                    <tr>
                        <td align="right">
                            <button type="button" id="write" name="write">글 작성</button>
                        </td>
                    </tr>
                </table>
                <table border="1" width="1200px">
                    <tr>
                        <th width="50px">
                            No
                        </th>
                        <th width="850px">
                            제목
                        </th>
                        <th width="100px">
                            작성자
                        </th>
                        <th width="200px">
                            작성일
                        </th>
                    </tr>
                    <c:choose>
                        <c:when test="${fn:length(boardList) == 0}">
                            <tr>
                                <td colspan="4" align="center">
                                    조회결과가 없습니다.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="boardList" items="${boardList}" varStatus="status">
                                <tr>
                                    <td align="center">${boardList.id}</td>
                                    <td>
                                        <a name="subject" class="mouseOverHighlight" content_id="${boardList.id}">${boardList.subject}</a>
                                    </td>
                                    <td align="center">${boardList.writer}</td>
                                    <td align="center">${boardList.register_datetime}</td>
                                </tr>
                            </c:forEach>
                        </c:otherwise> 
                    </c:choose>
                </table>
                <br>
                <div id="pagination"></div>
            </div>
        </form>
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
</html>