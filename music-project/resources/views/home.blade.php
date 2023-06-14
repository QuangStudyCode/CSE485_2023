@extends('layouts.base')

@section('title', 'Home Page')


@section('main')
<div class="row mt-4">
    @foreach ($articles as $article)
    <div class="col-md-3 mb-2">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="{{ $article->hinhanh}}" alt="">
            <div class="card-body">
                <h5 class="card-title">{{ $article->ten_bviet}}</h5>
                <p class="card-text">{{ $article->tomtat}}</p>
            </div>
            <img class="card-img-bottom" src="" alt="">
        </div>
        
    </div>  
    @endforeach
    
    
</div>
    
    
@endsection