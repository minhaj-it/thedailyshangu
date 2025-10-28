@php
    Theme::fireEventGlobalAssets();
    Theme::breadcrumb()->add(SeoHelper::getTitle());
@endphp

{!! Theme::partial('header') !!}
<style>
        .page_404 {
            padding: 30px 0;
        }

        .four_zero_four_bg {
            /* SVG টিকে ব্যাকগ্রাউন্ড হিসেবে না দিয়ে সরাসরি HTML এ দেওয়া হয়েছে */
            text-align: center;
        }

        .four_zero_four_bg h1 {
            font-size: 80px;
            font-weight: 700;
        }

        .four_zero_four_bg h3 {
            font-size: 80px;
        }

        .link_404 {
            color: #fff !important;
            padding: 10px 20px;
            background: #0d6efd; /* Bootstrap primary color */
            margin: 20px 0;
            display: inline-block;
            border-radius: 5px;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .link_404:hover {
            background: #0a58ca; /* গাঢ় নীল */
        }
        .contant_box_404 {
            margin-top: -50px;
        }
        
    </style>

<div class="d-flex align-items-center justify-content-center vh-100">
    <div class="container text-center">
        <div class="row">
            <div class="col-sm-12">
                <div class="page_404">
                    <div class="contant_box_404">
                        <h3 class="fs-2 fw-bold">দুঃখিত, পেজটি খুঁজে পাওয়া যায়নি</h3>
                        
                        <p class="lead">আপনি যে পেজটি খুঁজছেন তা হয়তো মুছে ফেলা হয়েছে বা নামটি পরিবর্তন করা হয়েছে।</p>
                        
                        <a href="/" class="link_404">হোম পেজে ফিরে যান</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{!! Theme::partial('footer') !!}
