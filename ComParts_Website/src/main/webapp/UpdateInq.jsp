<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Blog</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
</head>
<body>
		<%
			String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String product = request.getParameter("product");
		String inquiry = request.getParameter("inquiry");
		%>
		
		<div class="header">
            <div class="container1">
                <div class="navbar">
                    <div class="logo">
                        <img src="Images/logo.png" width="150px"  >
                    </div>
                    <nav>
                         <ul>
                            <li><a href="Home.jsp">Home</a></li>          
                        <li><a href="Inquiry.jsp">Inquiry</a></li>
                        <li><a href="ContactUs.jsp">Contact</a></li>
                        <li><a href="Login.jsp">Profile</a></li>
                    </ul>
                </nav>
                <div class="cart"><a href="Cart.jsp">
                        <i class="fa-solid fa-cart-plus" ></i></a>
                    </div>   
                </div>
                
                </div>
            </div>
      
        <section class="contact">
            <div class="content">
                
                <h2>Add your Inquiries here!</h2>
                <p> Welcome to Gigaparts, your trusted source for premium computer spare parts. Whether you're looking for replacement parts, upgrades, or bulk orders for your business, we are here to assist you. Our team of experts is ready to answer any questions you have about our products, availability, or technical specifications. Simply fill out the form below, and we'll get back to you with the information you need. We pride ourselves on offering top-notch customer service and fast, reliable responses to ensure you find the perfect parts for your needs. Let us help keep your systems running smoothly!</p>
            </div>
            
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        
                        <div class="text">
                            <h3></h3>
                            <p><br></p>
                        </div>
                    </div>

                    <div class="box">
                        
                        <div class="text">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>

                    <div class="box">
                        
                        <div class="text">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>

                    <h2 class="txt">Connect with us</h2>
                    <ul class="sci">
                        <li><a href="https://www.facebook.com/"><i class="fa-brands fa-facebook-f"></i></a></li>
                        <li><a href="https://twitter.com/"><i class="fa-brands fa-x-twitter"></i></a></li>
                        <li><a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a></li>
                        <li><a href="https://lk.linkedin.com/"><i class="fa-brands fa-linkedin-in"></i></a></li>

                    </ul>

                </div>
         <div class="contactForm">       
		<form action="InquiryServlet1" method="post"  >
                    	
                    	<h2>Type New Details</h2>
                    	
                    	
                        <div class="inputBox">
                        <span>ID</span><br>
                        <input type="text" name="id" id="id" value="<%=id %>" readonly>
                            
                         </div>
                            <div class="inputBox">
                            <input type="text" name="fullname" id="fullname" value="<%=name %>" required="required">
                            <span>New Full Name</span>
                        </div>

                        <div class="inputBox">
                            <input type="text" name="phone" id="phone" value="<%=phone %>" required="required">
                            <span>New Phone</span>
                        </div>
                        
                        <div class="inputBox">
                            <input type="text" name="product" id="product" value="<%=product %>" required="required">
                            <span>New Product Name</span>
                        </div>
                        
                        <div class="inputBox">
                        
                            <input type="text" name="msg" id="msg" value="<%=inquiry %>" required="required" >
                            <span>Type New Inquiry...</span><br>
                            
                        </div>
						
				
                    
                        <div class="inputBox">
                            <input type="submit" value="Update feedback" >
                            
                        </div>

                    </form>
                    </div>
                   </section> 
                    <div class="footer">
            <div class="container1">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download Our App</h3>
                        <p>Download App for Android and ios mobile phone</p>
                        <div class="app-logo">
                            <img src="Images/apple.png">
                            <img src="Images/play.png">
                        </div>
                    </div>
                    <div class="footer-col-2">
                       <img src="Images/logo.png">
                        <p>We provide our customers with a reliable, affordable, and comprehensive source for high-quality computer spare parts and accessories, while offering exceptional customer service and supporting the local tech community. </p>
                    </div>
                    <div class="footer-col-3">
                       <h3>Useful Links</h3>
                        <ul>
                            <li>Coupons</li>
                            <li>Blog Post</li>
                            <li>Return Policy</li>
                            <li>Join Affiliate</li>
                        </ul>
                    </div>
                    <div class="footer-col-4">
                        <h3>Follow Us</h3>
                         <ul>
                             <li>Facebook</li>
                             <li>Twitter</li>
                             <li>Instagram</li>
                             <li>Youtube</li>
                         </ul>
                     </div>
                </div>
                <hr>
                <p class="copyright">Copyright 2024 - Gigaparts PVT LTD</p>
            </div>
        </div>
</body>
</html>