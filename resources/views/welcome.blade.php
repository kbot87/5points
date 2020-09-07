@extends('layouts.app')

@section('content')
    @include('common.navigation')
    @include('common.header')

    @include('common.components.home-banner-area')
    @include('common.components.brand-area')
    @include('common.components.service-area')
    @include('common.components.video-sec-area')
    @include('common.components.portfolio-area')
    @include('common.components.team-area')
    @include('common.components.testimonial-area')
    @include('common.components.cta-area')
    @include('common.components.blog-area')

    @include('common.footer')
@endsection

@section('js')
    <script>
        let flag = 'welcome';
        console.log(flag);
    </script>
@endsection
