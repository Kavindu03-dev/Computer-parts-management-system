<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Store</title>
        <link rel="stylesheet" href="styleshome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    </head>
    <body>
    <div class="header">
        <div class="container">
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
                    <i class="fa-solid fa-cart-plus" ></i>
                </a></div>   
            </div>
            <div class="row">
                <div class="col-2">
                    <h1>Your Source for<br>Seamless Solutions</h1>
                    <p>We provide our customers with a reliable, affordable, and comprehensive source for high-quality computer spare parts and accessories, while offering exceptional customer service and supporting the local tech community.</p>
                    <a href="" class="btn">Explore Now &#8594;</a>
                </div>
                <div class="col-2">
                    <img src="Images/rob.png">
                </div>
            </div>
        </div>
    </div>

    <!---Categories-->

    <div class="categories">
        <div class="small-container">
        <div class="row">
            <div class="col-3">
                <img src="Images/lap1.png">
            </div>
            <div class="col-3">
                <img src="Images/lap2.png">
            </div>
            <div class="col-3">
                <img src="Images/lap3.png">
            </div>
        </div>
    </div>
    </div>

     <!---Products-->
     <div class="small-container">
        <h2 class="title">Featured Products</h2>
        <div class="row">
            <div class="col-4">
                <img src="Images/ram.png">
                <h4>FURY 8GB DDR4 RAM</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$50.00</p>
            </div>
            
            <div class="col-4">
                <img src="Images/hdd.png">
                <h4>Seagate 2TB Internal Hard Disk</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$150.00</p>
            </div>

            <div class="col-4">
                <img src="Images/proc.png">
                <h4>Intel 12Gen Core i7 12400 Processor</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$100.00</p>
            </div>

            <div class="col-4">
                <img src="Images/mouse.png">
                <h4>Asus TUF M3 RGB Gaming Mouse</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$20.00</p>
            </div>

        </div>

        <h2 class="title">Latest Products</h2>

        <div class="row">
            <div class="col-4">
                <img src="Images/keyboard.png">
                <h4>MSI Forge GK100 US Gaming Keyboard</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$40.00</p>
            </div>
            
            <div class="col-4">
                <img src="Images/mouse.png">
                <h4>MSI Clutch GM20 Elite Gaming Mouse </h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$10.00</p>
            </div>

            <div class="col-4">
                <img src="Images/casing.png">
                <h4>ANTEC P20C Tough RGB Gaming Casing</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$80.00</p>
            </div>

            <div class="col-4">
                <img src="Images/speaker.png">
                <h4>MICROLAB PT802W Bluetooth Party Speaker</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$30.00</p>
            </div>

        </div>

        <div class="row">
            <div class="col-4">
                <img src="Images/monitor.png">
                <h4>Asus TUF Gaming 23.8” Inch FHD  Frameless Monitor</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$200.00</p>
            </div>
            
            <div class="col-4">
                <img src="Images/ups.png">
                <h4>Prolink PRO1201SFC 1200VA Ups (1 Year Warranty )</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$30.00</p>
            </div>

            <div class="col-4">
                <img src="Images/head.png">
                <h4>Razer BlackShark V2 Pro Wireless Gaming Headset</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$150.00</p>
            </div>

            <div class="col-4">
                <img src="Images/cpad.png">
                <h4>Cooler Master Notepal  Laptop Cooling Pad</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa-regular fa-star"></i> 
                </div>
                <p>$50.00</p>
            </div>

        </div>
    </div>


    <!--offer-->
    <div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="Images/lap2.png" class="offer-img">
            </div>
            <div class="col-2">
                <p>Exclusively Available On GigaParts</p>
                <h1>Asus ROG Strix G16  i9</h1>
                <small>Power through any game or project with an Intel Core i9 Processor 14900HX, featuring up to a 65W TDP and a
                    hybrid architecture built from the ground up for Windows 11 Home.</small><br>
                <a href="" class="btn" >Buy Now &#8594;</a>
            </div>

        </div>
    </div>
</div>

    <!--testimonial-->
    <div class="testimonial">
        <div class="small-container">
            <div class="row">
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>I had a great experience at GigaParts. They had exactly the part I needed for my old laptop. The staff was incredibly helpful and knowledgeable. They even gave me some tips on how to install the part myself.</p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa-regular fa-star"></i> 
                    </div>
                    <img src="Images/man1.png">
                    <h3>Sean Parker</h3>
                </div>
                
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>I was in a pinch and needed a new graphics card ASAP. GigaParts had it in stock and I was able to pick it up the same day. The staff was friendly and efficient. I'll definitely recommend this store to my friends.</p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa-regular fa-star"></i> 
                    </div>
                    <img src="Images/man2.png">
                    <h3>Sean Parker</h3>
                </div>

                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>I compared prices at several different stores before coming to GigaParts. They had the best deal on the RAM I was looking for. I was also impressed with their selection of other computer parts and accessories. I'll definitely be back to shop here again.</p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa-regular fa-star"></i> 
                    </div>
                    <img src="Images/man3.png">
                    <h3>Sean Parker</h3>
                </div>
            </div>
        </div>
    </div>

    <!--brands-->

    <div class="brands">
        <div class="small-container">
            <div class="row">
                <div class="col-5">
                    <img src="Images/msi.png">
                </div>
                <div class="col-5">
                    <img src="Images/gig.png">
                </div>
                <div class="col-5">
                    <img src="Images/fan.png">
                </div>
                <div class="col-5">
                    <img src="Images/asus.png">
                </div>
                <div class="col-5">
                    <img src="Images/sam.png">
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="container">
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