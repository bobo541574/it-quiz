@extends('template2')

@section('content')

  <!-- banner section -->

<section class="banner_img">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-5">


                    <div class="d-none d-lg-block">
                    
                        <img src="{{asset('frondend/img/banner_img.png')}}" alt="" class="backimg">


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



    <!-- end banner section -->


    

    <!-- Start Result -->
<section class="card_section" id="result" style="margin-top: 60px;">
      <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
          <div class="card"style="border-color: red"  >
          <h5 class="card-header" style="color: white; background-color: red"  >Results</h5>
          <div class="card-body  min">
            
            <div class="row">
              
                <div class="col-md-12" >
                  
                  <h5 style="font-size: 20px;">User have not permission for this page access.</h5>
                  
              
                </div>
                
                  <!--<h2></h2>-->
              
                <!--<div class="col-md-4">-->
                  
                <!--  <h5>Status</h5>-->
                  
              
                <!--</div>    -->
              
              </div>


            
            <div class="card-footer" style="margin-top: 40px;">
                                
                <a href="{{route('homepage')}}" class="btn btn_6"style="width: 50px; margin-top: 10px; border-color:red; color:black;">OK</a>
            </div>  
              
        </div>    
           
      </div>
         
        </div>
        </div>

        
      </div>
      
      
    </section>
<!-- End Result -->

@endsection

@section('script')

@endsection