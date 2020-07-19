<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Question;
use Illuminate\Support\Facades\DB;
use App\Level;
use App\Http\Resources\CheckedQuestionResource;
use App\Result;

class FrontendController extends Controller
{
    //

    public function userResult(Request $request)
    {
        // Create

        // dd($request);
        Result::create([
            // "name" =>request('name'),
            "user_id" => Auth()->id(),
            "categorylevel_id"=>request('clid'),
            "attemptedquestion" =>request('attempt'),
            "unattemptedquestion" =>request('unattempt'),
            "totalcorrectanswer" =>request('correct'),
            "totalwronganswer" =>request('uncorrect'),
            "result" =>request('result'),
            "performance" =>request('performance'),

            
        ]);

    }

    public function store(){

    }
    
     public function getCourses()
    {
    	$categories = Category::all();
       // return view('category.read',compact('categories'));
        return view('front.homepage',compact('categories'));
    }


    public function getNavCourses()
    {
        $categories = Category::all();
       // return view('category.read',compact('categories'));
        return view('front.navcourse',compact('categories'));
    }


    //Modify

    public function getquestions($cid,$lid)
    {
       
        // $id = 1;

        // dd($request);
        // $category_id = request('category');
        // $level_id = request('level');
        // dd($category_id);

        // $question = DB::table('Question', request('id'))->get();
        $questions = DB::table('questions')
            ->join('category_level', 'category_level.id', '=', 'questions.categorylevel_id')
            ->where('category_id', $cid)
            ->where('level_id', $lid)
            ->select('questions.*','category_level.category_id as cid','category_level.level_id as lid')
            ->get();
        // $questions = Question::find($id);

        return view('front.level',compact('questions'));

    }

    public function getlevels()
    {
        $levels = Level::all();
        // dd($levels);
        return view('front.level2',compact('levels'));
    }

    public function checkresult(Request $request)
    {
        // dd($request);
        $question_list = request('question_list');
        $cid = request('cid');
        $lid = request('lid');
        
        $question_list_arr = json_decode(json_encode($question_list), true); 
        
        // dd($question_list_arr);
        $questions = DB::table('questions')
            ->join('category_level', 'category_level.id', '=', 'questions.categorylevel_id')
            ->where('category_id', $cid)
            ->where('level_id', $lid)
            ->select('questions.id as question', 'questions.rightanswer as answer')
            ->get();
            // dd($questions);
        $questions_arrs = json_decode(json_encode($questions), true);
         $result =0;
         $checkedQuestions=[];
        foreach ($question_list_arr as $key => $value) {
            # code...
            
            $user_lists = $value;
            // dd($user_lists);
           
            for ($i=0; $i < count($user_lists); $i++) { 
                 $question = $user_lists[$i]['question'];
                $answer = $user_lists[$i]['answer'];
                //dd($answer);

                for ($j=0; $j < count($questions) ; $j++) { 
                    $question1 = $questions[$j]->question;
                    $answer1 = $questions[$j]->answer;
                    if($question == $question1 && $answer == $answer1){
                      // $checkedQuestions[] = Question::find($question);
                      // array_push($checkedQuestions, Question::find($question));
                       $result++;
                    }

                    // dd($result);
                }
                
                array_push($checkedQuestions, Question::find($question));
                
              
            }

        }

        // $resquestion = CheckedQuestionResource::collection($question_list_arr);

        return response()->json([
            'result'=> $result,
            'check'=>$question_list_arr,
            'checked_question' => $checkedQuestions,
        ]);
      
       

         
            // dd($questions_arr);
            // dd($questions);

            // for ($i=0; $i < ; $i++) { 
            //     # code...
            // }
               
        
    }

    //End Modify

}
