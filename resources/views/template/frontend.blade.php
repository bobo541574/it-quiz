<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="IT QUIZ FORWARD. - See m" />
    <meta name="keywords" content="IT TEST, it test, IT QUIZ, it quiz, It Test, It Quiz, IT TEST FORWARD, it test forward, IT QUIZ FORWARD, it quiz forward" />
    <meta name="author" content="metatags generator">
    <meta name="robots" content="index, follow">
    <meta name="revisit-after" content="3 days">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="icon" href="{{asset('frondend/img/main.png')}}">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/bootstrap.min.css')}}">
    <!-- animate CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/animate.css')}}">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/owl.carousel.min.css')}}">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/all.css')}}">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/flaticon.css')}}">
    <link rel="stylesheet" href="{{asset('frondend/css/themify-icons.css')}}">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/magnific-popup.css')}}">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/slick.css')}}">
    <!-- style CSS -->
    <link rel="stylesheet" href="{{asset('frondend/css/style.css')}}">
</head>

<body>


    <!--::header part start::-->
    <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand main_logo" href="http://localhost:8000/"> <img src="frondend/img/main.png" alt="logo"></a>
                        <a class="navbar-brand single_page_logo href="http://localhost:8000/>  <img src="frondend/img/mobile.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="menu_icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('homepage')}}">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('aboutus')}}">About Us</a>
                                </li>
                               
                                <li class="nav-item ">
                                    <a class="nav-link" href="{{route('getNavCourses')}}" >
                                        Courses
                                    </a>
                                  
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('contactus')}}">Contact</a>
                                </li>

                                              
                    <li class="nav-item">
                  
                    
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else


                        <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>

                     





                                    
                                
                           
                        @endguest
                    
                            </li>
                            </ul>
                        </div>
                        

                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!--::Header part end::-->

    <!--::banner part start::-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-5">
                    <div class="banner_img d-none d-lg-block">
                        <img src="frondend/img/banner_img.png" alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h1 style="font-size: 55px;">Join the largest <br>code learners's community!!</h1>
                             <!-- <a href="#" class="btn_2">Start Learning Now</a>   -->
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <img src="frondend/img/animate_icon/Ellipse_7.png" alt="" class="feature_icon_1 custom-animation1">
        <img src="frondend/img/animate_icon/Ellipse_8.png" alt="" class="feature_icon_2 custom-animation2">
        <img src="frondend/img/animate_icon/Ellipse_1.png" alt="" class="feature_icon_3 custom-animation3">
        <img src="frondend/img/animate_icon/Ellipse_2.png" alt="" class="feature_icon_4 custom-animation4">
        <img src="frondend/img/animate_icon/Ellipse_3.png" alt="" class="feature_icon_5 custom-animation5">
        <img src="frondend/img/animate_icon/Ellipse_4.png" alt="" class="feature_icon_6 custom-animation6">
    </section>
    <!--::banner part start::-->

    <!--::use sasu part end::-->
   
    <!--::use sasu part end::-->
     <div class="container-fluid">

            @yield('content')
         
    </div>

    <!--::about_us part start::-->
    
    <!--::about_us part end::-->

    <!--::about_us part start::-->
    <section class="about_us right_time" style="margin-top: 200px;">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-6 col-lg-6">
                    <div class="learning_img">
                        <img src="frondend/img/about3.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="about_us_text">
                       <!--  <img src="frondend/img/about.png" alt="" style="width: 50px;height: 50px"> -->
                        <h2>About Us</h2>
                        <p>At The IT Test, we believe that intellectual development, love of learning, and strength of character are complementary, and equally essential, educational goals. With a firm commitment to our core values and a rigorous academic program, we prepare students to lead lives of purpose, achievement, and generosity of spirit.
                            <a href="#" >learn more</a>
                        </p>
                        
                    </div>
                </div>
            </div>
        </div>
        <img src="frondend/img/animate_icon/Ellipse_5.png" alt="" class="feature_icon_2 custom-animation2">
    </section>
    <!--::about_us part end::-->

    <!--::pricing part start::-->
    
    <!--::pricing part end::-->

    <!--::about_us part start::-->
    <!--Section: Live preview-->




 
<!--Section: Live preview-->

<div class="feedback-section" style=" ">

    <section class="about_us right_time" style="margin-top: 200px;">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-6 col-lg-6">
                    <div class="form-section">
    <section class="form-dark">

  <!--Form without header-->

  
  <div class="card card-image "
    style="background-image: url('frondend/img/blueback.png'); background-repeat: none;">
    <div class="text-white rgba-stylish-strong py-5 px-5 z-depth-4">

      <!--Header-->
      <div class="text-center">
        <h3 class="white-text mb-5 mt-4 " style="color: white"><strong>Feedback</strong> <a
            class="white-text "><strong style="color: white">Form</strong></a></h3>
      </div>

      <!--Body-->
      <form action="" method="">
      <div class="md-form">
        <input type="text" id="Form-email5" class="form-control white-text">
        <label for="Form-email5">Your email</label>
      </div>

      <div class="md-form pb-3">
        <input type="password" id="Form-pass5" class="form-control white-text">
        <label for="Form-pass5">Your password</label>
        
      </div>

      <div class="md-form">
        
        <textarea type="text" id="Form-email5" class="form-control white-text"></textarea>
         <label for="Form-email5">Your Message</label>
       
      </div>


      <!--Grid row-->
      <div class="row d-flex align-items-center mb-4">

        <!--Grid column-->
        <div class="text-center mb-3 col-md-12">
          <button type="button" class="btn btn-primary btn-block btn-rounded z-depth-1" >Send</button>
        </div>
        <!--Grid column-->
      </div>
      </form>
      <!--Grid row-->

      <!--Grid column-->
     
      <!--Grid column-->

    </div>
  </div>

  <!--/Form without header-->

    </section>
                       
                        
</div>
                    
</div>

        <div class="col-md-2 col-md-2"></div>


        <div class="col-md-4 col-lg-4">
            <div class="learning_img">
        <img src="frondend/img/feedback5.gif" alt="" width="350px" height="350px">
            </div>

            </div>
        </div>
        </div>
    <img src="frondend/img/animate_icon/Ellipse_5.png" alt="" class="feature_icon_2 custom-animation2">
    </section>
</div>


   
    <!--::about_us part end::-->

   

    <!--::footer_part start::-->
    <footer class="footer_part" style="margin-top: 100px; background-image: url(frondend/img/foot14.png);">
        <div class="container" align="center">
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">

                 <div class="single_footer_part">
                
                <h5 class="text-uppercase">Contact us</h5>
                <ul class="list">
                    <li>
                        <p style="color: white">No.168, Ground Floor,
                            Baho Road (Between Maubin st and Phyar Pone St),<br>
                            Sanchaung Township, Yangon.
                        </p >
                    </li>
                        <li>
                            <p style="color: white">kyawmaythu975@gmail.com</p>
                        </li>
                        <li>
                            <p style="color: white">Tel : 09 953 271 593</p>
                        </li>
                    </ul>
                </div>

            </div>    
                
                <hr class="clearfix w-100 d-md-none pb-3">
                
                <div class="col-md-3 mb-md-0 mb-3">

                    <div class="single_footer_part">
                    
                    <h5 class="text-uppercase">Information</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="http://localhost:8000/" style="color: white">Home</a>
                        </li>
                        <li>
                            <a href="#" style="color: white">About Us</a>
                        </li>
                        <li>
                            <a href="http://localhost:8000/navcourse" style="color: white">Courses</a>
                        </li>
                        <li>
                            <a href="#" style="color: white">Contact Us</a>
                        </li>
                       
                    </ul>

                    </div>
                </div>
  
             <hr class="clearfix w-100 d-md-none pb-3">
                
                <div class="col-md-3 mb-md-0 mb-3">

                     <div class="single_footer_part">
                    
                    <h5 class="text-uppercase">Social Link</h5>
                    <ul class="list-unstyled">
                       
                        <li>
                            <a href="https://www.facebook.com"><img src="frondend/img/f.svg" width="25" height="25" style="margin-bottom: 10px;"> </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com"><img src="frondend/img/i.svg" width="25" height="25" style="margin-bottom: 10px;"> </a>
                        </li>
                        <li>
                            <a href="https://www.twitter.com"><img src="frondend/img/t.svg" width="25" height="25" style="margin-bottom: 10px;"> </a>
                            <!-- <a href="" class="navbar-brand nav-link"><img src="images/cart.svg" width="25" height="25" > </a>                                   -->
                        </li>
                    </ul>
                    </div>
                </div>
                
        </div>
    </footer>
   
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
    <script src="{{asset('frondend/js/jquery-1.12.1.min.js')}}"></script>
    <!-- popper js -->
    <script src="{{asset('frondend/js/popper.min.js')}}"></script>
    <!-- bootstrap js -->
    <script src="{{asset('frondend/js/bootstrap.min.js')}}"></script>
    <!-- easing js -->
    <script src="{{asset('frondend/js/jquery.magnific-popup.js')}}"></script>
    <!-- swiper js -->
    <script src="{{asset('frondend/js/swiper.min.js')}}"></script>
    <!-- swiper js -->
    <script src="{{asset('frondend/js/masonry.pkgd.js')}}"></script>
    <!-- particles js -->
    <script src="{{asset('frondend/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('frondend/js/jquery.nice-select.min.js')}}"></script>
    <!-- slick js -->
    <script src="{{asset('frondend/js/slick.min.js')}}"></script>
    <script src="{{asset('frondend/js/jquery.counterup.min.js')}}"></script>
    <script src="{{asset('frondend/js/waypoints.min.js')}}"></script>
    <script src="{{asset('frondend/js/contact.js')}}"></script>
    <script src="{{asset('frondend/js/jquery.ajaxchimp.min.js')}}"></script>
    <script src="{{asset('frondend/js/jquery.form.js')}}"></script>
    <script src="{{asset('frondend/js/jquery.validate.min.js')}}"></script>
    <script src="{{asset('frondend/js/mail-script.js')}}"></script>
    <!-- custom js -->
    <script src="{{asset('frondend/js/custom.js')}}"></script>
</body>

</html>