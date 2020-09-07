@extends('layouts.app')

@section('content')
    <div id="service">
{{--        {{ $article->main_image }}--}}
            <img src="{{Voyager::image($article->main_image)}}" />
    </div>
@endsection

@section('js')
    <script>
        let flag = 'service';
        console.log(flag);
    </script>
@endsection