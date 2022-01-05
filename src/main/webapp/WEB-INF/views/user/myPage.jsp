<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

  	<head>
    	<%@ include file="/WEB-INF/views/include/head.jsp" %>
    </head>
    
    <body>
    <jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    <jsp:param name="userName" value="${wdUser.userNickname}" />
    </jsp:include>
        
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
    <!-- ***** Pre HEader ***** -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <span>Hey! The Show Is Starting In 5 Days.</span>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="text-button">
                        <a href="rent-venue.html">Contact Us Now! <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="index.html" class="logo">Art<em>Xibition</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="rent-venue.html">Rent Venue</a></li>
                            <li><a href="shows-events.html" class="active">Shows & Events</a></li> 
                            <li><a href="tickets.html">Tickets</a></li> 
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** About Us Page ***** -->
    <div class="page-heading-shows-events">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Our Shows & Events</h2>
                    <span>Check out upcoming and past shows & events.</span>
                </div>
            </div>
        </div>
    </div>

    <div class="shows-events-tabs">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row" id="tabs">
                        <div class="col-lg-12">
                            <div class="heading-tabs">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <ul>
                                          <li><a href='#tabs-1'>Upcoming</a></li>
                                          <li><a href='#tabs-2'>Past</a></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4">
                                          <div class="main-dark-button">
                                              <a href="ticket-details.html">Purchase Tickets</a>
                                          </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <section class='tabs-content'>
                                <article id='tabs-1'>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="heading"><h2>Upcoming</h2></div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="sidebar">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="heading-sidebar">
                                                            <h4>Sort The Upcoming Shows & Events By:</h4>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="month">
                                                            <h6>Month</h6>
                                                            <ul>
                                                                <li><a href="#">July</a></li>
                                                                <li><a href="#">August</a></li>
                                                                <li><a href="#">September</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="category">
                                                            <h6>Category</h6>
                                                            <ul>
                                                                <li><a href="#">Pop Music</a></li>
                                                                <li><a href="#">Rock Music</a></li>
                                                                <li><a href="#">Hip Hop Music</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="venues">
                                                            <h6>Venues</h6>
                                                            <ul>
                                                                <li><a href="#">Radio City Musical Hall</a></li>
                                                                <li><a href="#">Madison Square Garden</a></li>
                                                                <li><a href="#">Royce Hall</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-9">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>Tiger Land Festival</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>Sep 24 Friday<br>11:20 AM - 10:20 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>540 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>Super Rock Festival</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>Oct 22 Saturday<br>10:00 AM - 09:00 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>480 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>Rocky Hill Festival</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>Nov 12 Friday<br>11:00 AM - 11:00 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>908Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>920 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>Hip Hop Special</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>Nov 18 Sunday<br>08:00 AM - 09:00 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>785 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="pagination">
                                                        <ul>
                                                            <li><a href="#">Prev</a></li>
                                                            <li><a href="#">1</a></li>
                                                            <li class="active"><a href="#">2</a></li>
                                                            <li><a href="#">3</a></li>
                                                            <li><a href="#">Next</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>                            
                                <article id='tabs-2'>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="heading"><h2>Upcoming</h2></div>
                                        </div>
                                        <div class="col-lg-3">

                                        <div class="col-lg-9">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>Water Splash Festival</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>April 24 Friday<br>12:00 AM - 12:00 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>528 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>Sunny Hill Festival</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>May 31 Friday<br>10:00 AM - 11:00 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>240 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>New Rock Festival</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>June 12 Friday<br>09:00 AM - 09:00 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>360 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="event-item">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="left-content">
                                                                    <h4>Monkey Dance Festival</h4>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur do adipiscing eliterirt sed eiusmod alori...</p>
                                                                    <div class="main-dark-button"><a href="event-details.html">Discover More</a></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="thumb">
                                                                    <img src="" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="right-content">
                                                                    <ul>
                                                                        <li>
                                                                            <i class="fa fa-clock-o"></i>
                                                                            <h6>July 14 Friday<br>08:30 AM - 09:30 PM</h6>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-map-marker"></i>
                                                                            <span>Copacabana Beach, Rio de Janeiro</span>
                                                                        </li>
                                                                        <li>
                                                                            <i class="fa fa-users"></i>
                                                                            <span>450 Total Guests Attending</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="pagination">
                                                        <ul>
                                                            <li><a href="#">Prev</a></li>
                                                            <li><a href="#">1</a></li>
                                                            <li class="active"><a href="#">2</a></li>
                                                            <li><a href="#">3</a></li>
                                                            <li><a href="#">Next</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>    
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- *** Subscribe *** -->
    <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <h4>Subscribe Our Newsletter:</h4>
                </div>
                <div class="col-lg-8">
                    <form id="subscribe" action="" method="get">
                        <div class="row">
                          <div class="col-lg-9">
                            <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email Address" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-3">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button">Submit</button>
                            </fieldset>
                          </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
  </body>

</html>
