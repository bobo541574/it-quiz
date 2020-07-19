<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Question;
use App\Http\Resources\QuestionResource;

class CheckedQuestionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);

        return [
            'qid' => $this->question,
            'question' => new QuestionResource(Question::find($this->question)),
            'answer' => $this->answer,
        ];
    }
}
