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

<!-- start question section -->
<input type="hidden" class="cid" name="" value="{{$questions[0]->cid}}">
<input type="hidden" class="lid" name="" value="{{$questions[0]->lid}}">

<section class="card_section" id="question">

  <section >
  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
            <div align="center">

              

                  <p style="font-size: 28px;color: blue">Time Remaining:</p><p id="test" style="font-size: 20px;color: blue"></p>
                    <script>
                      

                    </script>
            </div>
    </div>

      <div class="col-md-3">
          
      </div>
  </div>
  
</section>
  @php
  $i=1;
  $length = count($questions);
  
  @endphp
  @foreach($questions as $question)
  
  <div class="row">
    <div class="col-3"></div>
    
    <div class="col-6 my-3">
     
      <div class="card" >
        
        <h5 class="card-header">{{$i++}}</h5>
        <div class="card-body">
          <!-- <p>{{$question->id}}</p> -->
          <h5 class="card-title">{{$question->question_name}}</h5>
          <input type="hidden" class="clid" name="" value="{{$question->categorylevel_id}}">
          <div class="row">
            <div class="col-md-12">
              
              <div class="custom-control custom-radio">
                <input type="hidden" name="" class="question" value="{{$question->id}}">
                <input type="radio" name="customRadio1{{$i}}" value="{{$question->answer1}}" class="custom-control-input ans" id="customRadio1{{$i}}">
                <label class="custom-control-label" for="customRadio1{{$i}}">(A) {{$question->answer1}}</label>
              </div>
              
            </div>
            <div class="col-md-12">
              <div class="custom-control custom-radio">
                <input type="radio" name="customRadio1{{$i}}" value="{{$question->answer2}}" class="custom-control-input ans" id="customRadio2{{$i}}">
                <label class="custom-control-label" for="customRadio2{{$i}}">(B) {{$question->answer2}}</label>
              </div>
            </div>
            <div class="col-md-12">
              <div class="custom-control custom-radio">
                <input type="radio" name="customRadio1{{$i}}" value="{{$question->answer3}}" class="custom-control-input ans" id="customRadio3{{$i}}">
                <label class="custom-control-label" for="customRadio3{{$i}}">(C) {{$question->answer3}}</label>
              </div>
            </div>
          </div>
          
          
          
          
        </div>
        <div class="button-class" style="padding-bottom: 20px;">
          <div class="row">
            <div class="col-sm-8"></div>
            <div class="col-sm-3">
              
            </div>
            <div class="col-sm-1"></div>
            
          </div>
        </div>
        
      </div>
    </div>
    <div class="col-3"></div>
  </div>
  
  @endforeach
  <!-- <button class="btn btn-success" value="Checkresult" name="" data-length="{{$length}}" data-id="{{$question->id}}" id="click">Summit</button> -->
  <div align="center">
    <button class="btn btn_6 "style="width: 200px; margin-top: 10px;" value="Checkresult" name="" data-length="{{$length}}" data-id="{{$question->id}}" id="click">Go To Result</button>
  </div>

</section>


<!-- Start Result -->
<section class="card_section" id="result" style="margin-top: 60px;">
      <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
          <div class="card"style="border-color: blue"  >
          <h5 class="card-header" style="color: white; background-color: blue"  >Results</h5>
          <div class="card-body  min">
            
            <div class="row">
              
                <div class="col-md-8" >
                  
                  <h5 style="font-size: 20px;">Description</h5>
                  
              
                </div>
                
                  
              
                <div class="col-md-4">
                  
                  <h5>Status</h5>
                  
              
                </div>    
              
              </div>
              <hr>
              <div class="row">
              
                <div class="col-md-8">
                  
                  <h6>Attempted Question</h6>
                  
              
                </div>
                
                  
              
                <div class="col-md-4">
                  
                  <h6 id="att" ></h6>
                  <input type="hidden" name="" value="" class="att">
                 
                  
              
                </div>
                  
              </div>
              <hr>
              <div class="row">
              
                <div class="col-md-8">
                  
                  <h6>Un-Attempted Question </h6>
                  
                </div>
                
                <div class="col-md-4">
                  
                  <h5 id="unatt"></h5>
                  <input type="hidden" name="" value="" class="unatt">
                  
                </div>
                
              </div>
              <hr>

              <div class="row">
              
                <div class="col-md-8">
                  <h6 >Total Correct Answer</h6>
            
                </div>
                  
                <div class="col-md-4">
                  
                  <h6 id="correct"></h6>
                  <input type="hidden" name="" value="" class="correct">
                  
                </div>
                
              </div>
              <hr>

              <div class="row">
              
                <div class="col-md-8">
                  
                  <h6>Total Wrong Answer</h6>
                  
                </div>
                
                <div class="col-md-4">
                  
                  <h5 id="uncorrect"></h5>
                  <input type="hidden" name="" value="" class="uncorrect">
                 
                </div>    
              
              </div>
              <hr>
              <div class="row">
              
                <div class="col-md-8">
                  
                  <h6>Result</h6>
                  
              
                </div>
                
                  
              
                <div class="col-md-4">
                  
                  <h5 class="final_result"></h5>
                  <input type="hidden" name="" value="" id="final_result">
                  
              
                </div>    
              
              </div>
              <hr>
              <div class="row">
              
                <div class="col-md-8">
                  
                  <h6>Performance</h6>
                  
              
                </div>
                
                  
              
                <div class="col-md-4">
                  
                  <h5 class="performance"></h5>
                  <input type="hidden" name="" value="" id="performance">
                  
                  
                </div>    
              
              </div>
              <hr>

            
            <div class="card-footer" style="margin-top: 40px;" id="checkedQuestions">
                                
                
            </div>  
              
          <div align="center">
            <button class="btn btn_6 "style="width: 200px; margin-top: 10px;" value="Checkresult" name="" id="save">Save Result</button>
        
          <!-- <a href="{{route('userresult')}}" class="btn btn-success" id="save">Save Result</a> -->
          </div>
              
              
            </div>    
           
          </div>
         
        </div>
        </div>

        
      </div>
      
      
    </section>
<!-- End Result -->

<!--  end question section  -->
@endsection
@section('script')
<script type="text/javascript">
  $(document).ready(function(){

    var d = new Date();
                      d = d.setMinutes(d.getMinutes()+1);
                      
                      var x = setInterval(function(){
                        var now = new Date();
                        var timer = d - now;
                        var minutes = Math.floor(timer / (1000 * 60));
                        var seconds = Math.floor(timer % (1000 * 60) / 1000);

                        document.getElementById('test').innerHTML = minutes + ':' + seconds;

                         if (timer < 0) {
                          check();
                          clearInterval(x);
                          

                          //window.location.href = "{{route('frontlevel')}}"; 
                        }
                      }, 1000);
    $('#question').show();
    $('#result').hide();

    function count(array){

                var c = 0;
                for(i in array) // in returns key, not object
                    if(array[i] != undefined)
                        c++;

                return c;
            }
  

    function isNumber(arg) {
      return typeof arg === 'number';
    }
    function isString(arg) {
      return typeof arg === 'string';
    }
    

    $(".ans").click(function () {
      var answer = $(this).val();
      // alert(answer);
      // var question = $('.question').val();
      var question=$(this).parentsUntil('.card-body').find('.question').val();
      // alert(question);
      //console.log(answer,question);
      var item={

      question:question,
      answer:answer,
    };
      var question_list=localStorage.getItem('mycart');
      if(!question_list){
      question_list='{"list":[]}';
    }

    var question_list_obj=JSON.parse(question_list);
    question_list_obj.list.push(item);
    localStorage.setItem('mycart', JSON.stringify(question_list_obj));
    // console.log(question_list_obj);
    // var obj={answer:answer, question:question};
    // var arr = [];
    // arr.push(obj);


  // console.log(arr);
  })
  
  var clid=$('.clid').val();

  $('#click').click(function(){
  

check();

  })
function check(){
  $('#question').hide();
  $('#result').show();



  var cid=$('.cid').val();
  var lid=$('.lid').val();
  // var clid=$('.clid').val();
  // console.log(clid);
  var question_list=localStorage.getItem('mycart');
  //console.log(question_list)
  var question_list_obj=JSON.parse(question_list);
  // console.log(question_list_obj);
  // var id = $(this).data('id');
  // alert(id);
  var attemptQuestion = <?php echo $length ?>;

  // alert(attemptQuestion);
  var count = $('input:radio:checked').length;
  // var data = $('input:radio:checked').val();
   // alert(count);
  // alert(data);
  var unattemptQuestion = attemptQuestion - count;
  // alert(unattemptQuestion);
  $.ajaxSetup({
    headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });


  $.post("{{route('checkresult')}}", {question_list:question_list_obj,cid:cid,lid:lid}, function(response){
      
    var success=response.result;
    var check=response.check;    

    var checkedQuestions = response.checked_question;

    
    var html=""; var icon="";
    for(var s=0; s<check.list.length; s++){

      $.each(checkedQuestions,function (i,v) {

        var q_id = v.id;
        if(q_id == check.list[s].question){
        // alert(q_id);
        var checkedQuestionName = v.question_name;
        var checked_answer1 =v.answer1;
        var checked_answer2 =v.answer2;
        var checked_answer3 =v.answer3;
        var checked_rightanser =v.rightanswer;

        // console.log(v);

        html += '<div class="row">'+
                    '<div class="col-md-12">'+
                      '<h5>'+checkedQuestionName+'</h5>'+
                    '</div>'+
                    '<div class="col-md-12" style="margin-left: 20px; margin-top: 5px;">'+
                      '<h6 class="ans" data-ans="'+checked_answer1+'">';

                  if (checked_rightanser == check.list[s].answer && checked_answer1 == check.list[s].answer) {
                  html += '<span class="true1">'+'<i class="fas fa-check-circle"></i>'+'</span>';
                  }else if(checked_rightanser != check.list[s].answer && checked_answer1 == check.list[s].answer){
                    html += '<span class="false1">'+'<i class="fas fa-times-circle">'+'</i>'+'</span>';
                  }
                
                
                html += '(A) '+checked_answer1+'</h6>'+
                      '<h6 class="ans" data-ans="'+checked_answer2+'">';

                  if (checked_answer2 == check.list[s].answer && checked_rightanser == check.list[s].answer) {
                  html += '<span class="true2">'+'<i class="fas fa-check-circle"></i>'+'</span>';
                  }else if(checked_answer2 == check.list[s].answer && checked_rightanser != check.list[s].answer){
                    html += '<span class="false2">'+'<i class="fas fa-times-circle">'+'</i>'+'</span>';
                  }
                

                html += '(B) '+checked_answer2+'</h6>'+
                      '<h6 class="ans" data-ans="'+checked_answer3+'">';

                  if (checked_answer3 == check.list[s].answer && checked_rightanser == check.list[s].answer) {
                  html += '<span class="true3">'+'<i class="fas fa-check-circle"></i>'+'</span>';
                  }else if(checked_answer3 == check.list[s].answer && checked_rightanser != check.list[s].answer){
                    html += '<span class="false3">'+'<i class="fas fa-times-circle">'+'</i>'+'</span>';
                  }
                
                html +='(C) '+checked_answer3+'</h6>'+ 
                    '</div>'+
                    '<div class="col-md-12" style="margin-left: 20px; margin-top: 5px;">'+
                      '<h6>Right Answer is : '+checked_rightanser+'</h6>'+
                    '</div>'+
                  '</div>'+
                '</div>';
        }
        
      });

    }

    $('#checkedQuestions').html(html);

    var fail=count-success;
    //console.log(fail);
    $("#att").html(count);
    $(".att").val(count);
   
    $("#unatt").html(unattemptQuestion);
    $(".unatt").val(unattemptQuestion);

    $("#correct").html(success);
    $(".correct").val(success);

    $("#uncorrect").html(fail);
    $(".uncorrect").val(fail);

    // localStorage.clear();
 

       if(success<5){
        $(".final_result").html('Fail');
        $("#final_result").val('Fail');
        $(".performance").html('Bad');
        $("#performance").val('Bad');
        // $("#final_result").val(Fail);
       }
      else if(success>=5 && success<=7){
        $(".final_result").html('Pass');
        $(".performance").html('Good');
        $("#final_result").val('Pass');
        $("#performance").val('Good');
      }
      else if(success>=8 && success<=9){
        $(".final_result").html('Pass');
        $(".performance").html('Better');
        $("#final_result").val('Pass');
        $("#performance").val('Better');
      }
      else if(success>9){
        $(".final_result").html('Pass');
        $(".performance").html('Best');
        $(".final_result").val('Pass');
        $(".performance").val('Best');
      }

    
    })
}
   $("#save").click(function(){
    var attempt = $('.att').val();
    var unattempt = $('.unatt').val();
    var correct = $('.correct').val();
    var uncorrect = $('.uncorrect').val();
    var result = $('#final_result').val();
    var performance = $('#performance').val();
    var clid = $('.clid').val();
    $.ajaxSetup({
      headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });

    $.post("{{route('userresult')}}", {attempt:attempt, unattempt:unattempt, correct:correct, uncorrect:uncorrect, result:result, performance:performance, clid:clid},
     function(response){
      console.log(response);

    })
     
    })
   localStorage.clear();

  });

</script>
@endsection