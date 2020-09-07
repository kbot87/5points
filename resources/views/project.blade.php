@extends('layouts.app')

@section('content')
    <div id="project">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.banner_area')
        @include('common.components.portfolio-area')
        @include('common.components.testimonial-area')

        @include('common.footer')
    </div>
@endsection

@section('js')
    <script>
        let flag = 'project';
        console.log(flag);
    </script>
@endsection
