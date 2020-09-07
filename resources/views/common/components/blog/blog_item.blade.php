@foreach($articles as $article)
    <article class="row blog_item">
        <div class="col-md-3">
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
            </div>
        </div>
        <div class="col-md-9">
            <div class="blog_post">
                <img src="{{ asset('img/blog/main-blog/m-blog-1.jpg') }}" alt="">
                <div class="blog_details">
                    <a href="single-blog.html">
                        <h2>Astronomy Binoculars A Great Alternative</h2>
                    </a>
                    <p>MCSE boot camps have its supporters and its detractors. Some people do not
                        understand
                        why you should have to spend money on boot camp when you can get the MCSE
                        study
                        materials yourself at a fraction.</p>
                    <a href="{{ route('getArticle', $article->slug, app()->getLocale()) }}" class="blog_btn">View More</a>
                </div>
            </div>


        </div>
    </article>
@endforeach
