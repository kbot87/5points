@extends('layouts.app')

@section('content')
    <div id="service">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.banner_area')
        @include('common.components.blog_article')
        @include('common.components.blog.article-post')

        @include('common.footer')
    </div>
@endsection

@section('js')
    <script>
        let flag = 'blog_service';
        console.log(flag);
    </script>
@endsection
