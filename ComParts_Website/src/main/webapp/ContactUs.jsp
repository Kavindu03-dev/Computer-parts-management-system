<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                    <form action="ContactServlet" method="post"  >
                        <h2>Type Your Feedback</h2>
                        <div class="inputBox">
                            <input type="text" name="fullname" id="fullname" >
                            <span>Full Name</span>
                        </div>

                        <div class="inputBox">
                            <input type="text" name="email" id="email" >
                            <span>Email</span>
                        </div>

                        <div class="inputBox">
                            <textarea name="msg" id="msg" required="required"></textarea>
                            <span>Type your Message...</span>
                        </div>

                        <div class="inputBox">
                            <input type="submit" value="Send Feedback" >
                            </div>
                            </form>
                            <br>
                            <div class="inputBox">
                            
                        
						
						
                </div>
            </div>
			</div>
			<br>
				
						
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