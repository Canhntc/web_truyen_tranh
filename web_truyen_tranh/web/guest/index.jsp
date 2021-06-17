
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web Truyen Tranh</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
    <style>
.time {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/clock-white.svg);
  background-repeat: no-repeat;
  position: left center;
  padding-left: 1.2rem;
  margin-left: 1rem;
  font-size: 0.8rem;
  font-style: italic;
}
.like {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/like-black.svg);
  background-repeat: no-repeat;
  position: left center;
  padding-left: 1.5rem;
  font-size: 0.8rem;
  font-style: italic;
}
.read {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/eye-white.svg);
  background-repeat: no-repeat;
  position: left center;
  padding-left: 1.5rem;
  font-size: 0.8rem;
  font-style: italic;
}
.comment {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/comment-white.svg);
  background-repeat: no-repeat;
  position: left center;
  margin-left: 0.5rem;
  padding-left: 1.5rem;
  font-size: 0.8rem;
  font-style: italic;
}

input {
  border: 1px solid transparent;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
}

input[type=text] {
  background-color: #f1f1f1;
  width: 100%;
}

input[type=submit] {
  background-color: DodgerBlue;
  color: #fff;
  cursor: pointer;
}

.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}

.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff; 
  border-bottom: 1px solid #d4d4d4; 
}

/*when hovering an item:*/
.autocomplete-items div:hover {
  background-color: #e9e9e9; 
}

/*when navigating through the items using the arrow keys:*/
.autocomplete-active {
  background-color: DodgerBlue !important; 
  color: #ffffff; 
}
</style>
    <script src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/js/axios.min.js"></script>
</head>

<body>
    <!-- Header -->
    <header>
        <!--Navbar-->
        <div class="navbar sticky-top navbar-blue bg-blue shadow-sm">
            <div class="container d-flex justify-content-between">
                <!--Logo-->
                <a href="" class="navbar-brand d-flex align-items-center">
                    <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/logo-phattruyen-02.png" alt="logo">
                </a>
                <!--Link-->
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a href=""><button class="dropbtn">Thể loại</button></a>
                            <div class="dropdown-content">
                                <a href="">Chuyển sinh</a>
                                <a href="">Drama</a>
                                <a href="">Giả tưởng</a>
                                <a href="">Hài hước</a>
                                <a href="">Hành động</a>
                                <a href="">Học đường</a>
                                <a href="">Kinh dị</a>
                                <a href="">Ngôn tình</a>
                                <a href="">Phiêu lưu</a>
                                <a href="">Shounen</a>
                                <a href="">Truyện màu</a>
                                <a href="">Xuyên không</a>
                            </div>
                        </div>
                    </li>
                
                
                    <li class="nav-item">
                        <a class="nav-link" href="#">Lịch sử</a>
                    </li>
                </ul>

                <!--Search-->
                <form class="form-inline my-2 my-lg-0">
                    <input id="searchNameComics" class="form-control mr-sm-2" type="text" placeholder="Tìm theo tên truyện" aria-label="Search" aria-describedby="basic-addon2">
                    <button class="btn my-btn-outline-success my-2 my-sm-0" type="submit"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/search-blue.svg" style="width: 18px;" alt=""></button>
                </form>
                <div>
                    <a href=""> <img class="img-icon" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/bell-white.svg" alt=""></a>
                    <a href=""> <img class="img-icon" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/user-circle-white.svg" alt=""></a>
                </div>
            </div>
        </div>
    </header>
    <!--Main-->
    <div class="container" style="margin-top: 56px;">
        <div class="row-border">
            <div>
                <p class="title">TRUYỆN MỚI CẬP NHẬT</p>
            </div>
            <!--Slide Show-->
            <div class="row">
                
                <div class="col">
                    <a href="/guest/detail.html">
                    <div class="card slide-card">
                        <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/slide/kich-truong-cua-TAKEMICHI.jpg" alt="...">
                        <div class="card-content">
                            <p class="content">Kịch Trường Của Takemichi</p>
                            <p class="chapter">Chapter 206<span class="time">Time</span></p>
                        </div>
                    </div>
                    </a>
                </div>

                <div class="col">
                    <a href="/guest/detail.html">
                    <div class="card slide-card">
                        <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/slide/tinh-linh-am-de.jpg" alt="...">
                        <div class="card-content">
                            <p class="content">Tinh Linh Ám Đế</p>
                            <p class="chapter">Chapter 94<span class="time">Time</span></p>
                        </div>
                    </div>
                    </a>
                </div>

                <div class="col">
                    <a href="/guest/detail.html">
                    <div class="card slide-card">
                        <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img//index/slide/trung-sinh-do-thi-thien-ton.jpg" alt="...">
                        <div class="card-content">
                            <p class="content">Trùng Sinh Đô Thị Thiên Tôn</p>
                            <p class="chapter">Chapter 213<span class="time">Time</span></p>
                        </div>
                    </div>
                    </a>
                </div>

                <div class="col">
                    <a href="/guest/detail.html">
                    <div class="card slide-card">
                        <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/slide/nghich-thien-chien-than.jpg" alt="...">
                        <div class="card-content">
                            <p class="content">Nghịch Thiên Chiến Thần</p>
                            <p class="chapter">Chapter 217<span class="time">Time</span></p>
                        </div>
                    </div>
                    </a>
                </div>

                <div class="col">
                    <a href="/guest/detail.html">
                    <div class="card slide-card">
                        <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/slide/mat-the-nu-vuong.jpg" alt="...">
                        <div class="card-content">
                            <p class="content">Mạt Đế Nữ Vương</p>
                            <p class="chapter">Chapter 42<span class="time">Time</span></p>
                        </div>
                    </div>
                    </a>
                </div>

                <div class="col">
                    <a href="/guest/detail.html">
                    <div class="card slide-card">
                        <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/slide/het-nhu-han-quang-gap-nang- gat.jpg" alt="...">
                        <div class="card-content">
                            <p class="content">Hệt Như Hàn Quang Gặp Nắng Gắt</p>
                            <p class="chapter">Chapter 174<span class="time">Time</span></p>
                        </div>
                    </div>
                    </a>
                </div>
            </div>
            <!--End SlideShow-->
        </div>
        <!--New Comic Section-->
        <div>
            <div class="row fix">
                <div class="col-8 row-border second">
                    <div>
                        <p class="title">TRUYỆN ĐƯỢC ĐỀ CỬ</p>
                    </div>
                    <!--Row 1-->
                    <div class="row fix">
                        <c:forEach items="${comics}" var="comic">
                        <div class="col">
                            <a href="/guest/detail.html">
                                <div class="card slide-card">
                                    <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${comic.thumbnail}" alt="...">
                                    <div class="card-content">
                                        <span class="read">999.999</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            <div>
                                <a href="#" class="fix-a-update">
                                    <p class="title-update">${comic.title}</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 299</a></div>
                                    <div class="col-6 time-update">6 phút trước</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 298</a></div>
                                    <div class="col-6 time-update">1 giờ trước</div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                    <!--Page Navigation-->
                    <nav aria-label="Page navigation" style="padding-left: 15rem;">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="?page=1">1</a></li>
                            <li class="page-item"><a class="page-link" href="?page=2">2</a></li>
                            <li class="page-item"><a class="page-link" href="?page=3">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                
                <!--Tab Truyện Nổi Bật-->
                <div class="col-4 fix-col-4">
                    <div class="box">
                        <p class="hot-title">TOP TRUYỆN NỔI BẬT</p>
                        <!--Line 1-->
                        <div class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">01</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/vo-luyen-dinh-phong.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Võ Luyện Đỉnh Phong</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/kich-truong-cua-TAKEMICHI.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Kịch Trường Của Takemichi</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/het-nhu-han-quang-gap-nang- gat.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Hệt Như Hàn Quang Gặp Nắng Gắt</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/ong-xa-ket-hon-thu.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Ông Xã Kết Hôn Thử</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/hoc-si-tai-sinh.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Học Sĩ Tái Sinh</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/toan-chuc-phap-su.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Toàn Chức Pháp Sư</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/than-vo-thien-ton.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Thần Võ Thiên Tôn</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/mat-the-nu-vuong.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Mạt Thế Nữ Vương</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/nghich-thien-chien-than.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Nghịch Thiên Chiến Thần</p>
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
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/top/tren-nguoi-ta-co-mot-con-rong.jpg" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="hot-content">
                                        <a href="">
                                            <p class="title-comic-hot">Trên Người Ta Có Một Con Rồng</p>
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
                        <p class="hot-title">THỂ LOẠI TRUYỆN </p>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Chuyển Sinh</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Drama</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Giả Tưởng</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Hài Hước</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Hành Động</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Học Đường</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Kinh Dị</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Ngôn Tình</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href=""><img src=".${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Phiêu Lưu</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Shounen</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row last-tag">
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Truyện Màu</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href=""><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Xuyên Không</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Tab-->
            </div>
        </div>
    </div>
    <!--Ontop Button-->
    <a href="#">
            <button id="on-top"class="move-top"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/arrow-alt-circle-up-regular.svg" alt=""></button>
    </a>
    <!--Footer-->
    <footer class="footer">
        <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-footer">
                        <div><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/logo-phattruyen-02.png" class="logo-footer"></div>
                        <p class="content-footer">Website đọc truyện online chất lượng cao. Mang đến cho bạn những trải nghiệm 
                            tuyệt vời nhất.</p>
                        <p>Cảm ơn bạn vì đã chọn <a href="">Phatttruyen</a>!</p>

                    </div>
                    <div class="col-lg-4 col-footer">
                        <p class="title-footer">Về chúng tôi</p>
                        <p class="link-footer"><a href="">Giới thiệu</a></p>   
                        <p class="link-footer"><a href="">Điều khoản chính sách</a></p>     
                        <p class="link-footer"><a href="">Giải quyết khiếu nại, tranh chấp</a></p>    
                    </div>

                    <div class="col-lg-4 col-footer">
                        <p class="title-footer">Liên hệ với chúng tôi</p>
                        <p>Dữ liệu thu thập từ các nguồn công khai trên Internet. Nếu có nhu cầu liên hệ hoặc gỡ bỏ truyện hoặc 
                            khúc mắc gì có thể đọc thêm về chúng tôi.</p>
                        <p>
                            <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/phone-white.svg" alt="" class="icon-footer">
                            <a href="">08. 09289489</a>
                        </p>
                        <p>
                            <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/envelope-open-text-white.svg" alt="" class="icon-footer">
                            <a class="text-mail" href="">phattruyen@gmail.com</a>
                        </p>
                    </div>

                </div>
        </div>
        <div class="copy-right">
            Trường Đại Học Công Nghệ Thông Tin - ĐHQG TP.HCM <br>
            @2021 POWERED BY PHATTRUYEN
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/myjs.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
    <script>

    function autocomplete(inp, arr) {
        
        var currentFocus;
        
        inp.addEventListener("input", function (e) {
            var a, b, i, val = this.value;
            /*close any already open lists of autocompleted values*/
            closeAllLists();
            if (!val) { return false; }
            currentFocus = -1;
            /*create a DIV element that will contain the items (values):*/
            a = document.createElement("DIV");
            a.setAttribute("id", this.id + "autocomplete-list");
            a.setAttribute("class", "autocomplete-items");
            /*append the DIV element as a child of the autocomplete container:*/
            this.parentNode.appendChild(a);
            /*for each item in the array...*/
            for (i = 0; i < arr.length; i++) {
                /*check if the item starts with the same letters as the text field value:*/
                if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                    /*create a DIV element for each matching element:*/
                    b = document.createElement("DIV");
                    /*make the matching letters bold:*/
                    b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                    b.innerHTML += arr[i].substr(val.length);
                    /*insert a input field that will hold the current array item's value:*/
                    b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                    /*execute a function when someone clicks on the item value (DIV element):*/
                    b.addEventListener("click", function (e) {
                        /*insert the value for the autocomplete text field:*/
                        inp.value = this.getElementsByTagName("input")[0].value;
                        /*close the list of autocompleted values,
                        (or any other open lists of autocompleted values:*/
                        closeAllLists();
                    });
                    a.appendChild(b);
                }
                
            }
            console.log(inp)
        });
        /*execute a function presses a key on the keyboard:*/
        inp.addEventListener("keydown", function (e) {
            var x = document.getElementById(this.id + "autocomplete-list");
            if (x) x = x.getElementsByTagName("div");
            if (e.keyCode == 40) {
                /*If the arrow DOWN key is pressed,
                increase the currentFocus variable:*/
                currentFocus++;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 38) { //up
                /*If the arrow UP key is pressed,
                decrease the currentFocus variable:*/
                currentFocus--;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 13) {
                /*If the ENTER key is pressed, prevent the form from being submitted,*/
                e.preventDefault();
                if (currentFocus > -1) {
                    /*and simulate a click on the "active" item:*/
                    if (x) x[currentFocus].click();
                }
            }
        });
        function addActive(x) {
            /*a function to classify an item as "active":*/
            if (!x) return false;
            /*start by removing the "active" class on all items:*/
            removeActive(x);
            if (currentFocus >= x.length) currentFocus = 0;
            if (currentFocus < 0) currentFocus = (x.length - 1);
            /*add class "autocomplete-active":*/
            x[currentFocus].classList.add("autocomplete-active");
        }
        function removeActive(x) {
            /*a function to remove the "active" class from all autocomplete items:*/
            for (var i = 0; i < x.length; i++) {
                x[i].classList.remove("autocomplete-active");
            }
        }
        function closeAllLists(elmnt) {
            /*close all autocomplete lists in the document,
            except the one passed as an argument:*/
            var x = document.getElementsByClassName("autocomplete-items");
            for (var i = 0; i < x.length; i++) {
                if (elmnt != x[i] && elmnt != inp) {
                    x[i].parentNode.removeChild(x[i]);
                }
            }
        }
        /*execute a function when someone clicks in the document:*/
        document.addEventListener("click", function (e) {
            closeAllLists(e.target);
        });
    }

//    let dataUsers = [
//    {title: "abc"}, {title: "adb"}, {title: "bcs"}]
    
    


    $(document).ready(async function (){
        let dataUsers = [];

         axios.get('http://localhost:8080/webtruyentranh/api/comics')
        .then(function (response){
            var data = [];
            
            response.data.forEach((x,i) => {
                data[i] = x;
                //console.log(x);
            });
            dataUsers = data;
            
            console.log(dataUsers);
            autocomplete(document.getElementById("searchNameComics"), dataUsers.map(x => {return x.title;}));
        })
        .catch(function (error) {console.log(error);});
        
        
    });
    </script>
</body>
</html>
