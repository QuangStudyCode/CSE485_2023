@extends('layouts.app')
@section('content')
<div class="container">
 <form method="POST" action="/posts">
 @csrf
 <div class="form-group">
 <label for="title">Title</label>
 <input type="text" class="form-control" id="title"
name="title">
 </div>
 <div class="form-group">
 <label for="body">Body</label>
 <textarea class="form-control" id="body" name="body"
rows="3"></textarea>
 </div>
 <button type="submit" class="btn btnprimary">Submit</button>
 </form>
</div>
@endsection
