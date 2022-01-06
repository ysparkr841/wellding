<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
 	<%@ include file="/WEB-INF/views/include/head.jsp" %>
 	<%@ include file="/WEB-INF/views/include/head2.jsp" %>
 <style>
 #prod{width:250px;}
 </style>
</head>
<body>
	  <%@ include file="/WEB-INF/views/include/navigation.jsp" %>

<section class="top">
	<div class="back"></div>
</section>

    <!-- ***** About Us Page ***** -->
    <div class="page-heading-shows-events6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>My wishlist</h2>
                    <!-- span>Check out upcoming and past shows & events and grab your ticket right now.</span -->
                </div>
            </div>
        </div>
    </div>

    <section class="cart-section">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>Image</th>
						        <th>Product</th>
						        <th>Price</th>
						        <th>Discount</th>
						        <th>Total</th>
						        <th>Cancel</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						    
						        <td class="image-prod"><img src="/resources/images/hallrepimage/H01.jpg" id="prod"></td>
						        
						        <td class="product-name">
						        	<h3>Nike Free RN 2019 iD</h3>
						        	<p>Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td class="price">$10,000</td>
						        
						        <td class="discount_rate"></td>
						        
						        <td class="total">$10,000</td>
						        
						        <td class="product-remove"><a href="#"><span>X</span></a></td>
						      </tr><!-- END TR-->
							
						      <tr class="text-center">
						       
						         <td class="image-prod"><img src="/resources/images/studio/${wdRez.sImgName}" id="prod"></td>
						       
						        <td class="product-name">
						        	<h3>Show Free RN 2020 iD</h3>
						        	<p>Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td class="price">$11,000</td>
						        
						        <td class="discount_rate"></td>
						        
						        <td class="total">$11,000</td>
						        
						        <td class="product-remove"><a href="#"><span>X</span></a></td>
						      </tr><!-- END TR-->
						   
						      <tr class="text-center">
						       
						         <td class="image-prod"><img src="/resources/images/event-03.jpg" id="prod"></td>
						        
						        <td class="product-name">
						        	<h3>Show Free RN 2022 iD</h3>
						        	<p>Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td class="price">$12,000</td>
						        
						        <td class="discount_rate"></td>
						        
						        <td class="total">$12,000</td>
						        
						        <td class="product-remove"><a href="#"><span>X</span></a></td>
						      </tr><!-- END TR-->
						      
						      <tr class="text-center">
						       
						         <td class="image-prod"><img src="/resources/images/event-01.jpg" id="prod"></td>
						        
						        <td class="product-name">
						        	<h3>Show Free RN 2020 iD</h3>
						        	<p>Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td class="price">$11,000</td>
						        
						        <td class="discount_rate"></td>
						        
						        <td class="total">$11,000</td>
						        
						        <td class="product-remove"><a href="#"><span>X</span></a></td>
						      </tr><!-- END TR-->
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		
    		<div class="row justify-content-start">
    			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>Subtotal</span>
    						<span>$20.60</span>
    					</p>
    					<p class="d-flex">
    						<span>Delivery</span>
    						<span>$0.00</span>
    					</p>
    					<p class="d-flex">
    						<span>Discount</span>
    						<span>$3.00</span>
    					</p>
    					<hr>
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span>$17.60</span>
    					</p>
    				</div>
    				<p class="text-center"><a href="/checkout" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
    			</div>
    		</div>
    	</div>
    </section>		
    		
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <%@ include file="/WEB-INF/views/include/footer2.jsp" %>
    </body>	
</html>