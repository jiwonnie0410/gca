<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=0, user-scalable=no, target-densitydpi=medium-dpi" />
<title>Insert title here</title>
	<style>
		.mobile-bottom-bar {
		  width: 100%;
		  height: 3.778rem;
		  background: #1779ba;
		  display: -webkit-flex;
		  display: -ms-flexbox;
		  display: flex;
		  -webkit-justify-content: center;
		      -ms-flex-pack: center;
		          justify-content: center;
		  -webkit-align-items: center;
		      -ms-flex-align: center;
		          align-items: center;
		}
		
		.mobile-bottom-bar .footer-link {
		  -webkit-flex: 1 1 auto;
		      -ms-flex: 1 1 auto;
		          flex: 1 1 auto;
		  text-align: center;
		  color: #0c3e5f;
		  text-transform: uppercase;
		  font-size: 0.8125rem;
		  font-weight: bold;
		  padding: 0.907rem 1rem;
		}
		
		.mobile-bottom-bar .footer-link i.fa {
		  opacity: 0.8;
		  margin-right: 0.625rem;
		  font-size: 1.5rem;
		  vertical-align: middle;
		}
		
		.mobile-bottom-bar .footer-link:focus, .mobile-bottom-bar .footer-link:active {
		  color: #0c3e5f;
		}
		
		.mobile-bottom-bar .footer-text {
		  position: relative;
		  top: 2px;
		  font-weight: bold;
		  font-size: 0.875rem;
		  color: #0c3e5f;
		}
	</style>
</head>
<body>
<div class="container">
<div class="mobile-bottom-bar">
  <a href="#" class="footer-link">
    <i class="fa fa-cog"></i> <span class='footer-text'>Settings</span>
  </a>
  <a href="#" class="footer-link">
    <i class="fa fa-sign-out"></i> <span class='footer-text'>Log out</span>
  </a>
</div>
</div>
</body>
</html>