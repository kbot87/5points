<div class="side_menu">
    <div class="logo">
        <a href="index.html">
            <img src="{{ asset('img/logo.png') }}" alt="">
        </a>
    </div>
    <ul class="list menu-left">
        <li>
            <a href="index.html">Home</a>
        </li>
        <li>
            <a href="about-us.html">About</a>
        </li>
        <li>
            <a href="service.html">Service</a>
        </li>
        <li>
            <div class="dropdown">
                <button type="button" class="dropdown-toggle" data-toggle="dropdown">
                    Projects
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="project.html">Project</a>
                    <a class="dropdown-item" href="project-details.html">Project Details</a>
                </div>
            </div>
        </li>
        <li>
            <a href="team.html">Team</a>
        </li>
        <li>
            <div class="dropdown">
                <button type="button" class="dropdown-toggle" data-toggle="dropdown">
                    Pages
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="elements.html">Elements</a>
                </div>
            </div>
        </li>
        <li>
            <div class="dropdown">
                <button type="button" class="dropdown-toggle" data-toggle="dropdown">
                    Blog
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="blog.html">Blog</a>
                    <a class="dropdown-item" href="single-blog.html">Blog Details</a>
                </div>
            </div>
        </li>
        <li>
            <a href="contact.html">Contact</a>
        </li>
    </ul>
    <ul class="list menu-left">
        @foreach ($languages as $locale)
            <li class="nav-item">
                <a class="nav-link" href="{{ $locale->url }}"
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
