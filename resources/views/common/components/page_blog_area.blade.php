<section class="blog_area section-gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="blog_left_sidebar">
                    @include('common.components.blog.blog_item')
                    @include('common.components.blog.blog_item')
                    @include('common.components.blog.blog_item')
                    @include('common.components.blog.blog_item')
                    @include('common.components.blog.blog_item')
                    @include('common.components.blog.blog-pagination')
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">
                    @include('common.components.sidebar.search_widget')
                    @include('common.components.sidebar.author_widget')
                    @include('common.components.sidebar.popular_post_widget')
                    @include('common.components.sidebar.ads_widget')
                    @include('common.components.sidebar.post_category_widget')
                    @include('common.components.sidebar.newsletter_widget')
                    @include('common.components.sidebar.tag_cloud_widget')
                </div>
            </div>
        </div>
    </div>
</section>
