@extends('layouts.app')

@section('content')
    <div id="team">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.banner_area')
        @include('common.components.brand-area')
        @include('common.components.team-area')

        @include('common.footer')
    </div>
@endsection

@section('js')
    <script>
        let flag = 'team';
        console.log(flag);
    </script>
@endsection
