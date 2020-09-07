@extends('layouts.app')

@section('content')
    <div id="blog">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.brand-area')
        @include('common.components.page_blog_area')

        @include('common.footer')
    </div>
@endsection

@section('js')
    <script>
        let flag = 'blog';
        console.log(flag);
    </script>
@endsection
