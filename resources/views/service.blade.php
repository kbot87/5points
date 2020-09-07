@extends('layouts.app')

@section('content')
    <div id="service">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.banner_area')
        @include('common.components.service-area')
        @include('common.components.testimonial-area')

        @include('common.footer')
    </div>
@endsection

@section('js')
    <script>
        let flag = 'service';
        console.log(flag);
    </script>
@endsection
