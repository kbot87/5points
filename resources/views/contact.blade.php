@extends('layouts.app')

@section('content')
    <div id="about">
        @include('common.navigation')
        @include('common.header')

        @include('common.components.banner_area')
        @include('common.components.contact_area')

        @include('common.footer')

        @include('common.components.modals.success')
        @include('common.components.modals.error')
    </div>
@endsection

@section('js')
    <script src="{{ asset('js/jquery.form.js') }}" ></script>
    <script src="{{ asset('js/jquery.validate.min.js') }}" ></script>
    <script src="{{ asset('js/contact.js') }}" ></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="{{ asset('js/gmaps.min.js') }}"></script>
    <script>
        let flag = 'contact';
        console.log(flag);
    </script>
@endsection
