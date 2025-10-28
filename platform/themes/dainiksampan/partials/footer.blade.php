

     <footer class="dhaka-post-footer">
        <div class="container">

            <!-- Top Row: Logo & Editor -->
            <div class="row align-items-center mb-4 gy-3">
                <div class="col-md-12 text-center logo-column">
                    <p class="mb-0 fs-5 mt-3">প্রকাশক ও সম্পাদক: কবির হোসেন সিদ্দিকী <br/> ইমেইল : news.sampan2025@gmail.com 
মোবাইল : 031-2868601</p>
                </div>
                <div class="col-md-6 text-md-end">
                    
                </div>
            </div>

            <!-- Navigation Links -->
            <nav class="footer-nav-links d-flex justify-content-center flex-wrap mb-4">
                <a href="#">গোপনীয়তার নীতি</a>
                <a href="#">ব্যবহারের শর্তাবলি</a>
                <a href="#">যোগাযোগ</a>
                <a href="#">আমাদের সম্পর্কে</a>
                <a href="#">আমরা</a>
                <a href="#">আর্কাইভ</a>
                <a href="#">বিজ্ঞাপন</a>
            </nav>

            <!-- Contact Information -->
            <div class="contact-info text-center mb-4">
                 @if ($address = theme_option('address'))
                <span class="me-lg-3"><i class="bi bi-geo-alt-fill"></i>{{ $address }} </span>
                @endif
                <span class="me-lg-3"><i class="bi bi-telephone-fill"></i>মোবাইল : ০১৫১১৪০১০৬০ , ০১৫১১৪০১০৫০ </span>
                <span><i class="bi bi-envelope-fill"></i>ইমেইল : hrsampan@gmail.com
                , news.sampan2025@gmail.com , </span>
            </div>

            <!-- Social Media Icons -->
            <div class="social-icons text-center">
                <a href="https://www.facebook.com/profile.php?id=61575561764953" class="btn mx-1" title="Facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="btn mx-1" title="X"><i class="bi bi-twitter-x"></i></a>
                <a href="#" class="btn mx-1" title="Instagram"><i class="bi bi-instagram"></i></a>
                <a href="https://www.youtube.com/@dainiksampan" class="btn mx-1" title="YouTube"><i class="bi bi-youtube"></i></a>
                <a href="#" class="btn mx-1" title="LinkedIn"><i class="bi bi-linkedin"></i></a>
                <a href="#" class="btn mx-1" title="Google Play"><i class="bi bi-google-play"></i></a>
            </div>

        </div>
    </footer>

    <!-- Search Modal -->
    <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="searchModalLabel">এখানে সার্চ করুন</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
            @if (is_plugin_active('blog'))
          <div class="modal-body">
            <form action="{{ route('public.search') }}">
              <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="আপনার কাঙ্ক্ষিত খবর খুঁজুন..." aria-label="Search">
                <button class="btn btn-primary" type="submit"><i class="bi bi-search"></i></button>
              </div>
            </form>
          </div>
           @endif
        </div>
      </div>
    </div>

        <!-- The Offcanvas News Hub Panel -->
    {!! Theme::partial('offcanvas-news-hub') !!}
    <!-- Custom JavaScript for Dark Mode Toggle -->

     <!-- The Offcanvas Menu -->
   {!! Theme::partial('offcanvas-category-menu') !!}

        {!! Theme::footer() !!}
 <script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=6868cda16689fb0019a07754&product=sop' async='async'></script>       
  
 <script>
   document.addEventListener('DOMContentLoaded', function () {
    const navLinks = document.querySelectorAll('.nav-item.dropdown > a');
    navLinks.forEach(function (link) {
        link.addEventListener('click', function (e) {
            if (window.innerWidth < 992) {
                e.preventDefault();
                const menu = link.nextElementSibling;
                document.querySelectorAll('.dropdown-menu').forEach(function (m) {
                    if (m !== menu) m.style.display = 'none';
                });
                if (menu.style.display === 'block') {
                    menu.style.display = 'none';
                } else {
                    menu.style.display = 'block';
                }
            }
        });
    });

    const navbar = document.getElementById('navbarNav');
    if (navbar) {
        navbar.addEventListener('hide.bs.collapse', function () {
            document.querySelectorAll('.dropdown-menu').forEach(function (m) {
                m.style.display = 'none';
            });
        });
    }
});

</script>


    </body>
</html>
