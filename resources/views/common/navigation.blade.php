<div class="side_menu">
    <div class="logo">
        <a href="{{ route('home', app()->getLocale() ) }}">
            <img src="{{ asset('img/logo.png') }}" alt="">
        </a>
    </div>
    <ul class="list menu-left">
        <li>
            <a href="{{ route('home', app()->getLocale() ) }}">Home</a>
        </li>
        <li>
            <a href="{{ route('about-us', app()->getLocale() ) }}">About</a>
        </li>
        <li>
            <a href="project.html">Project</a>
        </li>
        <li>
            <a href="service.html">Service</a>
        </li>
        <li>
            <a href="team.html">Team</a>
        </li>
        <li>
            <a href="{{ route('article-list', app()->getLocale() ) }}">Blog</a>
        </li>
        <li>
            <a href="{{ route('contact-us', app()->getLocale() ) }}">Contact</a>
        </li>
    </ul>
    <ul class="list menu-left">
        @foreach ($languages as $locale)
            <li>
                <a href="{{ $locale->url }}"
                   @if (app()->getLocale() == $locale) style="font-weight: bold; text-decoration: underline"
                    @endif>
                    @if(!empty($locale->flag) && $locale->flag != null)
                        <img src="{{ url('storage/'.$locale->flag) }}" alt="">
                        {{ $locale->url }}
                    @else
                        {{ strtoupper($locale->code) }}
                        {{ $locale->url }}
                    @endif
                </a>
            </li>
        @endforeach
    </ul>
</div>


<div class="canvus_menu">
    <div class="container">
        <div class="toggle_icon" title="Menu Bar">
            <span></span>
        </div>
    </div>
</div>
