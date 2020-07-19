  @extends('template2')
 @section('content')

<section class="banner_img">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-5">
                    
                    <div class="d-none d-lg-block">
                        <img src="frondend/img/banner_img.png" alt="" class="backimg">
                    </div>
                    
                 
                </div>
                <div class="col-lg-2">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            
                               <!--  <a href="#" class="d-none d-sm-block btn_3 home_page_btn">Beginner</a> -->
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <!-- 
                               <a href="#" class="d-none d-sm-block btn_3 home_page_btn">Intermediate</a> -->
                        </div>
                    </div>
                </div>

                <div class="col-lg-2">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            
                               <!--  <a href="#" class="d-none d-sm-block btn_3 home_page_btn">Advance</a> -->
                            
                        </div>
                    </div>
                </div>
            </div>

        </div>
        
    </section>

 <section class="use_sasu padding_top">
        <div class="container">
            <div class="row justify-content-center">
                @foreach($categories as $category)
                <div class="col-lg-4 col-sm-6 my-5">
                    <div class="single_feature">
                        <div class="single_feature_part">

                            <div class="row"></div>
                                  
                            <img src="{{$category->profile }}" alt="" class="img">

                            <h4>{{$category->name}}</h4>
                            

                           <a href="/frontlevel?category={{$category->id}}" class="btn_2" style="background-color: blue"> Learning Now</a>
                            
                        </div>


                    </div>
                </div>
                @endforeach

            </div>
        </div>
        <img src="img/animate_icon/Ellipse_1.png" alt="" class="feature_icon_1 custom-animation1">
    </section>
   @endsection

   