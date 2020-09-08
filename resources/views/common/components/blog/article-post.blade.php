<div class="single-post row">
    <div class="col-lg-12">
        <div class="feature-img">
            <img class="img-fluid" src="{{ Voyager::image($article->main_image) }}" alt="">
        </div>
    </div>
    <div class="col-lg-3 col-md-3">
        <div class="blog_info text-right">
            <div class="post_tag">
                <a href="#">Food,</a>
                <a class="active" href="#">Technology,</a>
                <a href="#">Politics,</a>
                <a href="#">Lifestyle</a>
            </div>
            <ul class="blog_meta list">
                <li><a href="#">Mark wiens<i class="lnr lnr-user"></i></a></li>
                <li><a href="#">12 Dec, 2017<i class="lnr lnr-calendar-full"></i></a></li>
                <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li>
                <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li>
            </ul>
            <ul class="social-links">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-github"></i></a></li>
                <li><a href="#"><i class="fa fa-behance"></i></a></li>
            </ul>
        </div>
    </div>
    <div class="col-lg-9 col-md-9 blog_details">
        <h2>@if($article->title)
                {{ $article->title }}
            @endif</h2>
        @if($article->description)
            {!! $article->description !!}
        @endif
    </div>
    <div class="col-lg-12">
        <div class="quotes">
            @if($article->description2)
                {!! $article->description2 !!}
            @endif
        </div>
        <div class="row">
            @if($article->images && !empty($article->images))
                @foreach($article->images as $image)
                    <div class="col-6">
                        <img class="img-fluid" src="{{ Voyager::image($image->path) }}" alt="">
                    </div>
                @endforeach
            @endif
            <div class="col-lg-12 mt-25">
                @if($article->description3)
                    {!!$article->description3!!}
                @endif
            </div>
        </div>
    </div>
</div>



