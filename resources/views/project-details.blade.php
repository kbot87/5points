@extends('layouts.app')

@section('content')
    <div id="project-details">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.banner_area')
        @include('common.components.project-article')

        @include('common.footer')
    </div>
@endsection

@section('js')
    <script>
        let flag = 'project-details';
        console.log(flag);
    </script>
@endsection
