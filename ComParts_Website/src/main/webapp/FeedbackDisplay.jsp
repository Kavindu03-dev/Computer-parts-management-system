<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Blog</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
        
    </head>
    <body>
   
    
                       
           
                      	
	
	
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
                
                <h2>We're Here to Help!</h2>
                <p>At GigaParts, we understand the importance of staying connected. Whether you need assistance with product inquiries, order support, or technical questions about our wide range of computer spare parts, our dedicated team is here to provide the solutions you need. Reach out to us using the methods below, and we'll ensure your experience with GigaParts is nothing short of exceptional. Your satisfaction is our priority, and we look forward to assisting you!</p>
            </div>
            
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><b></b><i class="fa-solid fa-location-dot"></i></div>
                        <div class="text">
                            <h3>Address</h3>
                            <p>57/5,<br>Castle street,<br>Colombo.</p>
                        </div>
                    </div>

                    <div class="box">
                        <div class="icon"><b></b><i class="fa-solid fa-phone"></i></div>
                        <div class="text">
                            <h3>Phone</h3>
                            <p>011-2053937</p>
                        </div>
                    </div>

                    <div class="box">
                        <div class="icon"><b></b><i class="fa-solid fa-envelope"></i></div>
                        <div class="text">
                            <h3>Email</h3>
                            <p>GigabitsFeedbacke@gmail.com</p>
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
                    
                        <h2 style="color: red">Your response has been Recorded!</h2>
                        <br>
                        
                 <c:forEach var="feedbackdetails" items="${feedbackdetails}">
                     
   				<p style="color:white; font-size:20px">Your Feedback is..</p><br>
        	 	<p style="color:white; font-size:20px"><c:out value="${feedbackdetails.feedback}"></c:out></p>
       			 
    			
    			<form action="ContactUs.jsp" method="post">
                       
                        
                        <div class="inputBox">
                            <input type="submit" value="Add New Feedback" >
                            </div>
                       </form>
                        
                	
                        

                    

                </div>
            </div>

			<a href="Update.jsp?id=${feedbackdetails.id}&name=${feedbackdetails.name}&email=${feedbackdetails.email}&feedback=${feedbackdetails.feedback}"><button style=" width: 100%;
								 background: green;
   				 				color: rgb(255, 255, 255);
  								  border: none;
								    cursor: pointer;
								    padding: 10px;
								    font-size: 1.1em;
								    font-weight: 500;
								    border-radius: 12px;
								    text-transform: uppercase;
								    text-decoration: none;">Update Previous Feedback
						</button></a>
						<br>
					<form action="deleteServlet" method="post">
					<input type="hidden" name="fid" id="fid" value="${feedbackdetails.id}"/>
						<button style=" width: 100%;
								 background: red;
   				 				color: rgb(255, 255, 255);
  								  border: none;
								    cursor: pointer;
								    padding: 10px;
								    font-size: 1.1em;
								    font-weight: 500;
								    border-radius: 12px;
								    text-transform: uppercase;
								    text-decoration: none;">Delete Feedback
						</button></form>
						
						</c:forEach>
						
						
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