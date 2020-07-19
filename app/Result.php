<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    //
    protected $fillable = [
    	'name', 'user_id', 'attemptedquestion', 'unattemptedquestion', 'totalcorrectanswer', 'totalwronganswer', 'result', 'performance', 'categorylevel_id',
    ];
}
