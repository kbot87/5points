@extends('layouts.app')

@section('content')
    <div id="blog">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.banner_area')
        @include('common.components.blog_catalog')

        @include('common.footer')
    </div>
@endsection

@section('js')
    <script>
        let flag = 'blog';
        console.log(flag);
    </script>
@endsection
