

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<% 
	//파라미터 한글처리
	request.setCharacterEncoding("utf-8"); 

		
		 
	 int tot = 0;
	 // Null값일때 형변환 하면 에러가나니.. 체크
	 if(request.getAttribute("tot") != null){
				 
		 tot = (Integer)request.getAttribute("tot");
		 
	 }
	 
	 
	 


%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
<%-- jQuery CDN --%>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<%-- BootStrap CDN --%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
		<div class="jumbotron">
			<h2>홍보</h2>
			<p>* 홍보.</p>
		</div>

		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>ID</th>
					<th>Title</th>
					<th>작성일</th>
				</tr>
			</thead>

			<tbody>
				
				<c:forEach var="review_Bean" items="${requestScope.list}">
				
				<tr class="info">
					<td>${review_Bean.review_num}</td>
					<td>${review_Bean.user_id}</td>
					<td><a data-toggle="modal" data-target="#myModal2" onclick="review_read(${review_Bean.review_num})">${review_Bean.review_title}</a></td>
					<td>${review_Bean.review_goods_name}</td>

					
					<td>${review_Bean.review_regdate}</td>
				</tr>
				
				</c:forEach>
			
			</tbody>
		</table>

		<div class="row">
			<div class="col-sm-6">
			
				<div style="text-align:left">
					<ul class="pagination" id="page_num">
						<li>
									
						
						 <% for(int i = 1 ; i<=tot ; i++){ %>
   						 
   						 <a href="review.credu?Page_num=<%=i%>"><%=i%></a>
  						 
  						 <% } %>
										
						</li>
					</ul>
				</div>
			
			
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-4 text-success" style="text-align: right;"> 
			<button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Write</button>
			</div>
		</div>
		 
		
		 <!-- Modal -->
  	<div class="modal fade" id="myModal" role="dialog">
    	<div class="modal-dialog modal-lg">
    
      	<!-- Modal content-->
      	<div class="modal-content">
	        <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
        
        <div class="modal-body">
          
			<div class="panel-group">
			<div class="panel panel-success" style="margin-top: 10px;">
				<div class="panel-heading">Goods Review</div>
				<div class="panel-body">
					<%-- form --%>
					<form class="form-horizontal" role="form" action="${review_write}" method="post">
						<div class="form-group">
							<label class="control-label col-sm-2">작성자(ID):</label>
							<div class="col-sm-10">
								<input type="hidden" id="board_id" name="board_id" value="${boardView.writer}" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">제목:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="review_title"
									name="review_title" placeholder="Title">
									
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">내용:</label>
							<div class="col-sm-10">
								<textarea class="form-control" id="p_content"></textarea>
									<script type="text/javascript">
									 CKEDITOR.replace('p_content'
									                , {height: 300                                                  
									                 });
									</script>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label><input type="checkbox" value="1"
										id="review_buy_opt" name="review_buy_opt" checked="checked">구매
										여부</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-success">작 성</button>
								<button type="reset" class="btn btn-danger">초기화</button>
							</div>
						</div>
					</form>


				</div>

			</div>
		</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
  <!-- Modal2 _ read review -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Review Detail</h4>
        </div>
        <div class="modal-body">
                   	
          <textarea rows="10" class="form-control" readonly="readonly" id="content"></textarea>	
                    
        </div>
        <div class="modal-footer">
        						
          <button type="button" class="btn btn-danger" onclick="review_delete()">Delete</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        	
        </div>
      </div>
      
    </div>
  </div>
		
	</div>


</body>
</html>