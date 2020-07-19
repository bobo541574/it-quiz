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


    <!-- start card section -->

  <section class="card_part" style="padding-left: 50px;">
        <div class="container">
            <div class="card">
              <div class="table-responsive table-respnsive-sm text-norap">
              <table class="table" align="center">
                <thead>
                  @php
                  $i=1;
                  @endphp
                  <th scope="col" align="center">No.</th>
                  <th scope="col" align="center">Name</th>
                  <th scope="col" align="center">Category & Level</th>
                  <th scope="col" align="center">Attempted Question</th>
                  <th scope="col" align="center">Unattempted Question</th>
                  <th scope="col" align="center">Total Correct Answer</th>
                  <th scope="col" align="center">Total Wrong Answer</th>
                  <th scope="col" align="center">Result</th>
                  <th scope="col" align="center">Performance</th>
                </thead>
                @foreach($results as $result)
                <tbody>
                  <tr>
                    <td scope="col" align="center">{{$i++}}</td>
                    <td scope="col" align="center">{{$result->username}}</td>
                    <td scope="col" align="center">{{$result->clname}}</td>
                    <td scope="col" align="center">{{$result->attemptedquestion}}</td>
                    <td scope="col" align="center">{{$result->unattemptedquestion}}</td>
                    <td scope="col" align="center">{{$result->totalcorrectanswer}}</td>
                    <td scope="col" align="center">{{$result->totalwronganswer}}</td>
                    <td scope="col" align="center">{{$result->result}}</td>
                    <td scope="col" align="center">{{$result->performance}}</td>
                  </tr>
                </tbody>
                @endforeach
              </table>
            </div>
            </div>

            </div>

       </section>     

    <section class="card_part" style="padding-left: 50px; margin-top: 0px">

        <div class="container">
            <div class="row ">
             
             
            </div>

            </div>

       </section>     

    <!--    End Card Section -->

@endsection

@section('script')

@endsection