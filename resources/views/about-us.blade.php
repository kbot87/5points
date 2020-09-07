@extends('layouts.app')

@section('content')
<div id="about">
    @include('common.navigation')
    @include('common.header')

    @include('common.components.banner_area')
    @include('common.components.video-sec-area')
    @include('common.components.cta-area')
    @include('common.components.team-area')
    @include('common.components.testimonial-area')

    @include('common.footer')
</div>
@endsection

@section('js')
    <script>
        let flag = 'about';
        console.log(flag);
    </script>
@endsection
