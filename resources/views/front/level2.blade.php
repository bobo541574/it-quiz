@extends('template2')

@section('content')

  <!-- banner section -->

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



    <!-- end banner section -->


    <!-- start card section -->


    <section class="card_part" align="center">

        <div class="container">
            <div class="row ">
             
              @php
                $category_id= $_REQUEST['category'];
                
              @endphp
                
                @foreach($levels as $level)
                  
                  
                <div class="col-lg-4 col-md-4 col-sm-12 col-12 img-fluid">
                <img src="frondend/img/web.png" class="card-img" style="width: 250px; margin-top:100px; height: 300px;">
                
                 
                <a href="{{url('getquestions/'.$category_id.'/'.$level->id)}}" class="btn btn-primary" style="width:250px; margin-top:10px" >{{$level->name}}</a>
                </div>

                @endforeach

                </div>

            </div>

       </section>     

    <!--    End Card Section -->

@endsection

