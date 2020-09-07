@extends('layouts.app')
@section('content')
    <div class="flex-center position-ref full-height">
        @if (Route::has('login'))
            <div class="top-right links">
                @auth
                    <a href="{{ url('/home', app()->getLocale() )}}">Home</a>
                @else
                    <a href="{{ route('login', app()->getLocale() )}}">Login</a>

                    @if (Route::has('register'))
                        <a href="{{ route('register', app()->getLocale() )}}">Register</a>
                    @endif
                @endauth
            </div>
        @endif

        <div class="content">
            @include('common.header')
            @include('common.navigation')
        </div>
    </div>
@endsection

@section('js')
    <script>
        let vhome = 'home';
        console.log(vhome);
    </script>
@endsection

