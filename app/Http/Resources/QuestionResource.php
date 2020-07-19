<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class QuestionResource extends JsonResource
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
            'id' => $this->id,
            'question' => $this->question_name,
            'answer1' => $this->answer1,
            'answer2' => $this->answer2,
            'answer3' => $this->answer3,
            'rightanswer'=>$this->rightanswer
        ];
    }
}
