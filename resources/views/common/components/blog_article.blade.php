<section class="blog_area single-post-area section-gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                @include('common.components.blog.article-post')
                @include('common.components.blog.article-navigation')
                @include('common.components.comments')
                @include('common.components.comment-form')
            </div>
            <div class="col-lg-4">
                @include('common.components.blog.blog_right_sidebar')
            </div>
        </div>
    </div>
</section>
