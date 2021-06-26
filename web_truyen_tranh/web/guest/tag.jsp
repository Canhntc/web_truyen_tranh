<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web Truyen Tranh || Chuy?n Sinh</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.css">
    <link rel="stylesheet" href="/assets/css/header.css">
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="/assets/css/footer.css">
</head>

<body>
    <!-- Header -->
    <header>
        <!--Navbar-->
        <div class="navbar sticky-top navbar-blue bg-blue shadow-sm">
            <div class="container d-flex justify-content-between">
                <!--Logo-->
                <a href="#" class="navbar-brand d-flex align-items-center">
                    <img src="/assets/img/index/logo-phattruyen-02.png" alt="logo">
                </a>
                <!--Link-->
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Trang ch?</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a href=""><button class="dropbtn">Th? lo?i</button></a>
                            <div class="dropdown-content">
                                <a href="">Chuy?n sinh</a>
                                <a href="">Drama</a>
                                <a href="">Gi? t??ng</a>
                                <a href="">Hài h??c</a>
                                <a href="">Hành ??ng</a>
                                <a href="">H?c ???ng</a>
                                <a href="">Kinh d?</a>
                                <a href="">Ngôn tình</a>
                                <a href="">Phiêu l?u</a>
                                <a href="">Shounen</a>
                                <a href="">Truy?n màu</a>
                                <a href="">Xuyên không</a>
                            </div>
                        </div>
                    </li>
                
                
                    <li class="nav-item">
                        <a class="nav-link" href="#">L?ch s?</a>
                    </li>
                </ul>

                <!--Search-->
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Tìm theo tên truy?n" aria-label="Search">
                    <button class="btn my-btn-outline-success my-2 my-sm-0" type="submit"><img src="/assets/img/icon/search-blue.svg" style="width: 18px;" alt=""></button>
                </form>
                <div>
                    <a href=""> <img class="img-icon" src="/assets/img/icon/bell-white.svg" alt=""></a>
                    <a href=""> <img class="img-icon" src="/assets/img/icon/user-circle-white.svg" alt=""></a>
                </div>
            </div>
        </div>
    </header>
    <!--Main-->
    <div class="container" style="margin-top: 56px;">
        <div>
            <div class="row fix">
                <div class="col-8 row-border second">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb" style="border-radius: 0rem;">
                            <li class="breadcrumb-item"><a href="#">Trang ch?</a></li>
                            <li class="breadcrumb-item"><a href="#">Th? lo?i</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Chuy?n Sinh</li>
                        </ol>
                    </nav>
                    <!--Sub-->
                    <div class="row sub-tag none-mp">
                        <div class="col none-mp">
                            <p class="title-sub-tag">Truy?n theo th? lo?i <a href=""><c:out value="${tag}"></c:out></a></p>
                            <p class="content-sub-tag">Th? lo?i này là nh?ng câu chuy?n v? ng??i ? m?t th? gi?i này xuyên 
                                ??n m?t th? gi?i khác, có th? là th? gi?i mang phong cách trung c? v?i ki?m s? và ma thu?t, 
                                hay th? gi?i trong game, ho?c có th? là b?n ch?t ? n?i này và ???c chuy?n sinh ??n n?i khác</p> 
                        </div>
                    </div>
                    <!--Hot-->
                    <div class="hot-tag">
                        <div class="row fix bg-hot-tag chuyen-sinh"></div>
                        <div class="row fix">
                            <div class="col-4 img-hot-tag">
                                <img src="/assets/img/tag/chuyen-sinh/thanh-khu.jpg" alt="">
                            </div>
                            <div class="col-8 content-hot-tag">
                                <p class="title-hot-tag"><a href="">Hiyori-chan NO Onegai Wa Zettai</a></p>
                                <p class="detail-content-hot-tag"><img src="/assets/img/icon/author-white.svg" alt="">Tác gi?: <span>?ang c?p
                                        nh?t</span></p>
                                <p class="detail-content-hot-tag"><img src="/assets/img/icon/eye-white.svg" alt="">L??t xem:
                                    <span>24.558.322</span>
                                </p>
                                <p class="detail-content-hot-tag"><img src="/assets/img/icon/stream-white.svg" alt="">Tình tr?ng: <span>?ang
                                        ti?n hành</span></p>
                                <p class="detail-content-hot-tag last"><img src="/assets/img/icon/sync-white.svg" alt="">C?p nh?t: <span>18:56
                                        19/05/2021</span></p>
                                <a href="" class="btn-read">??c Ngay</a>
                            </div>
                        </div>
                    </div>
                   
                    <!--Row 1-->
                    <div class="row fix">

                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/ta-la-nha-giau-so-mot-ta-khong-muon-tron-7535.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>

                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Ta Là Nhà Giàu S? M?t, Ta Không Mu?n Tr?ng Sinh</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 14</a></div>
                                    <div class="col-6 time-update">6 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 13</a></div>
                                    <div class="col-6 time-update">1 gi? tr??c</div>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/nu-thu-phu-chi-kieu-sung-nhiep-chinh-vuo-4186.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">N? Th? Phú Chi Ki?u S?ng Nhi?p Chính V??ng</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 75</a></div>
                                    <div class="col-6 time-update">23 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 74</a></div>
                                    <div class="col-6 time-update">2 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/nu-hiep-tro-ve.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">N? Hi?p Tr? V?</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 9</a></div>
                                    <div class="col-6 time-update">35 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 8</a></div>
                                    <div class="col-6 time-update">2 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/di-ha-pham-thuong.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">D? H? Ph?m Th??ng</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 76</a></div>
                                    <div class="col-6 time-update">43 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 75</a></div>
                                    <div class="col-6 time-update">1 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                    </div>

                    <!--Row 2-->
                    <div class="row fix">
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/nhap-vao-than-xac-cua-nu-sinh-trung-hoc-6932.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Nh?p vào thân xác c?a N? sinh trung h?c Karate</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 14</a></div>
                                    <div class="col-6 time-update">6 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 13</a></div>
                                    <div class="col-6 time-update">1 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/giai-thoat-99-nu-chinh-o-mat-the.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Gi?i Thoát 99 N? Chính ? M?t Th?</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 13</a></div>
                                    <div class="col-6 time-update">23 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 12</a></div>
                                    <div class="col-6 time-update">2 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/nghich-thien-chi-ton.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Ngh?ch Thiên Chí Tôn</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 72</a></div>
                                    <div class="col-6 time-update">35 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 71</a></div>
                                    <div class="col-6 time-update">2 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/tro-ve-lam-dai-lao-thoi-mat-the.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Tr? V? Làm ??i Lão Th?i M?t Th?</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 137</a></div>
                                    <div class="col-6 time-update">43 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 136</a></div>
                                    <div class="col-6 time-update">1 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                    </div>
                    
                    <!--Row 3-->
                    <div class="row fix">

                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/do-thi-chi-nghich-thien-tien-ton.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">?ô Th? Chi Ngh?ch Thiên Tiên Tôn</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 197</a></div>
                                    <div class="col-6 time-update">6 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 196</a></div>
                                    <div class="col-6 time-update">1 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/ta-bi-nhot-tai-cung-mot-ngay-muoi-van-na-5986.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Ta B? Nh?t T?i Cùng M?t Ngày M??i V?n N?m</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 26</a></div>
                                    <div class="col-6 time-update">23 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 25</a></div>
                                    <div class="col-6 time-update">2 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/sieu-nang-bat-luong-hoc-ba.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Siêu N?ng B?t L??ng H?c Bá</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 8</a></div>
                                    <div class="col-6 time-update">35 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 7</a></div>
                                    <div class="col-6 time-update">2 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="/assets/img/tag/chuyen-sinh/nguoi-o-re-bi-ep-thanh-phan-dien.jpg" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            
                            <div>
                                <a href="/guest/detail.html" class="fix-a-update">
                                    <p class="title-update">Ng??i ? R? B? Ép Thành Ph?n Di?n</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 117</a></div>
                                    <div class="col-6 time-update">43 phút tr??c</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 116</a></div>
                                    <div class="col-6 time-update">1 gi? tr??c</div>
                                </div>
                            </div>
                        </div>
    
                    </div>

                    <!--End -->

                    <nav aria-label="Page navigation" style="padding-left: 15rem;">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                
                <!--Top Comic-->
                <div class="col-4 fix-col-4">
                    <div class="box">
                        <p class="hot-title">TOP TRUY?N N?I B?T</p>
                        <!--Line 1-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">01</span>
                                    <img class="img-hot" src="/assets/img/index/top/vo-luyen-dinh-phong.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Võ Luy?n ??nh Phong</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 1183</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 2-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">02</span>
                                    <img class="img-hot" src="/assets/img/index/top/kich-truong-cua-TAKEMICHI.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">K?ch Tr??ng C?a Takemichi</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 206</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 3-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">03</span>
                                    <img class="img-hot" src="/assets/img/index/top/het-nhu-han-quang-gap-nang- gat.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">H?t Nh? Hàn Quang G?p N?ng G?t</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 174</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 4-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">04</span>
                                    <img class="img-hot" src="/assets/img/index/top/ong-xa-ket-hon-thu.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Ông Xã K?t Hôn Th?</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 344</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 5-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">05</span>
                                    <img class="img-hot" src="/assets/img/index/top/hoc-si-tai-sinh.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">H?c S? Tái Sinh</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 133</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 6-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">06</span>
                                    <img class="img-hot" src="/assets/img/index/top/toan-chuc-phap-su.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Toàn Ch?c Pháp S?</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 695</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 7-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">07</span>
                                    <img class="img-hot" src="/assets/img/index/top/than-vo-thien-ton.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Th?n Võ Thiên Tôn</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 324</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 8-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">08</span>
                                    <img class="img-hot" src="/assets/img/index/top/mat-the-nu-vuong.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">M?t Th? N? V??ng</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 42</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 9-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">09</span>
                                    <img class="img-hot" src="/assets/img/index/top/nghich-thien-chien-than.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Ngh?ch Thiên Chi?n Th?n</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 218</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Line 10-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">10</span>
                                    <img class="img-hot" src="/assets/img/index/top/tren-nguoi-ta-co-mot-con-rong.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Trên Ng??i Ta Có M?t Con R?ng</p>
                                        </a>
                                        <div class="row none-mp">
                                            <div class="col-6 none-mp">
                                                <a href="" class="chapter-hot">Chapter 353</a>
                                            </div>
                                            <div class="col-6">
                                                <span class="like">999.999</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                     <!--Box Tab-->
                    <div class="box">
                        <p class="hot-title">TH? LO?I TRUY?N </p>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Chuy?n Sinh</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Drama</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Gi? T??ng</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Hài H??c</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Hành ??ng</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">H?c ???ng</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Kinh D?</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Ngôn Tình</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Phiêu L?u</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Shounen</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row last-tag">
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Truy?n Màu</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="/assets/img/icon/tags-black.svg" alt="">Xuyên Không</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Tab-->
            </div>
        </div>
    </div>
    <a href="#">
            <button id="on-top"class="move-top"><img src="./img/arrow-alt-circle-up-regular.svg" alt=""></button>
    </a>
    <!--Footer-->
    <footer class="footer">
        <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-footer">
                        <div><img src="/assets/img/index/logo-phattruyen-02.png" class="logo-footer"></div>
                        <p class="content-footer">Website ??c truy?n online ch?t l??ng cao. Mang ??n cho b?n nh?ng tr?i nghi?m 
                            tuy?t v?i nh?t.</p>
                        <p>C?m ?n b?n vì ?ã ch?n <a href="">Phatttruyen</a>!</p>

                    </div>
                    <div class="col-lg-4 col-footer">
                        <p class="title-footer">V? chúng tôi</p>
                        <p class="link-footer"><a href="">Gi?i thi?u</a></p>   
                        <p class="link-footer"><a href="">?i?u kho?n chính sách</a></p>     
                        <p class="link-footer"><a href="">Gi?i quy?t khi?u n?i, tranh ch?p</a></p>    
                    </div>

                    <div class="col-lg-4 col-footer">
                        <p class="title-footer">Liên h? v?i chúng tôi</p>
                        <p>D? li?u thu th?p t? các ngu?n công khai trên Internet. N?u có nhu c?u liên h? ho?c g? b? truy?n ho?c 
                            khúc m?c gì có th? ??c thêm v? chúng tôi.</p>
                        <p>
                            <img src="/assets/img/icon/phone-white.svg" alt="" class="icon-footer">
                            <a href="">08. 09289489</a>
                        </p>
                        <p>
                            <img src="/assets/img/icon/envelope-open-text-white.svg" alt="" class="icon-footer">
                            <a class="text-mail" href="">phattruyen@gmail.com</a>
                        </p>
                    </div>

                </div>
        </div>
        <div class="copy-right">
            Tr??ng ??i H?c Công Ngh? Thông Tin - ?HQG TP.HCM <br>
            @2021 POWERED BY PHATTRUYEN
        </div>
    </footer>

    <script type="text/javascript" src="/assets/js/myjs.js"></script>
    <script type="text/javascript" src="/assets/js/bootstrap.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>