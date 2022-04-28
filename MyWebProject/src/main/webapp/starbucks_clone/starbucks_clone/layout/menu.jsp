<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">

<head>
  <meta charset="UTF-8" />
  <title>Starbucks Coffee Korea</title>
  <meta name="description" content="국내 최고의 커피 전문점! 항상 최고의 음료를 선사합니다. 스타벅스만의 프리퀀시를 받아보세요.">
  <meta name="keywords" content="스타벅스, 커피, 텀블러, 곰돌이, 머그컵, 아이스아메리카노, 돌체라떼, 그란데, 밴티, 톨, 프리퀀시, 리워드, 리저브드, 사이렌오더, 레디백, 기프티콘, 기프티 카드, 자바칩 프라푸치노">


  <!-- <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"> -->
  <link rel="icon" href="starbucks_favicon.ico">

  <!-- 폰트 -->
  <link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
    rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">

  <!-- CSS 링크 -->
  <link rel="stylesheet" href="assets/css/normalize.css" />
  <link rel="stylesheet" href="assets/css/reset.css" />
  <link rel="stylesheet" href="assets/css/style.css" />
</head>

<body>
  <div class="container">
    <!-- 헤더 -->
    <div class="header-background">
      <header id="header" class="header clearfix">
        <h1 class="header-heading">
          <a href="index.jsp" title="메인 화면으로 이동합니다.">스타벅스</a>
        </h1>
        <nav class="utility clearfix">
          <h2 class="a11y-hidden">멤버 메뉴</h2>
          <ul class="utility-list clearfix" style="margin-left: 500px;">
            <li><a href="#">Sign In</a></li>
            <li><a href="index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp">My Starbuck</a></li>
            <!--  onclick="location.href='index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp'" -->
          </ul>
        </nav>
        <nav class="navigation">
          <h2 class="a11y-hidden">메인 메뉴</h2>
          <ul class="menu clearfix">
            <li class="menu-item">
              <h3 class="sub-menu-heading"><a class="menu-heading">COFFEE</a></h3>
              <div class="sub-menu-box">
                <ul class="sub-menu">
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/coffee.jsp">스타벅스 원두</a></h4>
                    <ul>
                      <li><a>블론드 로스트</a></li>
                      <li><a>미디엄 로스트</a></li>
                      <li><a>다크 로스트</a></li>
                    </ul>
                  </li>
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/coffee2.jsp">스타벅스 비아</a></h4>
                    <ul>
                      <li><a>미디엄 로스트</a></li>
                      <li><a>다크 로스트</a></li>
                      <li><a>플레이버</a></li>
                    </ul>
                  </li>
                  <li>
<<<<<<< HEAD
                    <h4><a href="index.jsp?main=../../MyFavoriteCoffee/Coffeeform.jsp">나와 어울리는 커피 찾기</a></h4>
=======
                    <h4><a href="index.jsp?main=../../MyFavoriteCoffee/Coffeeform.jsp">나와 어울리는 커피 찾기</a></h4>
>>>>>>> branch 'master' of https://github.com/qqq2097/JspProject.git
                  </li>
                  
                </ul>
              </div>
            </li>
            <li class="menu-item">
              <h3 class="sub-menu-heading"><a class="menu-heading">BEVERAGE</a></h3>
              <div class="sub-menu-box">
                <ul class="sub-menu">
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/esspresso.jsp">에스프레소</a></h4>
                    <ul>
                      <li><a>에스프레소</a></li>
                      <li><a>아메리카노</a></li>
                      <li><a>카푸치노</a></li>
                      <li><a>라떼</a></li>
                      <li><a>모카</a></li>
                    </ul>
                  </li>
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/frappuccino.jsp">프라푸치노</a></h4>
                    <ul>
                      <li><a>에스프레소 프라푸치노</a></li>
                      <li><a>프라푸치노</a></li>
                      <li><a>JEJU ONLY</a></li>
                    </ul>
                  </li>
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/fizzio.jsp">스타벅스 피지오</a></h4>
                    <ul>
                      <li><a>블랙 티 레모네이드</a></li>
                      <li><a>쿨 라임</a></li>
                      <li><a>패션 탱고 티 레모네이드</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </li>
              
              <li class="menu-item">
              <h3 class="sub-menu-heading"><a class="menu-heading">FOOD</a></h3>
              <div class="sub-menu-box">
                <ul class="sub-menu">
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/bread.jsp">브레드</a></h4>
                    <ul>
                      <li><a>파이</a></li>
                      <li><a>베이글</a></li>
                      <li><a>스콘</a></li>
                    </ul>
                  </li>
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/cake.jsp">케이크</a></h4>
                    <ul>
                      <li><a>케이크</a></li>
                      <li><a>롤</a></li>
                    </ul>
                  </li>
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/sandsal.jsp">샌드위치 & 샐러드</a></h4>
                    <ul>
                      <li><a>밀 박스</a></li>
                      <li><a>샌드위치</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </li>
                
           
            <li class="menu-item">
              <h3 class="sub-menu-heading"><a href="#" class="menu-heading">GOODS</a></h3>
              <div class="sub-menu-box">
                <ul class="sub-menu">
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/mug.jsp">머그</a></h4>
                    <ul>
                      <li><a>시즌한정</a></li>
                      <li><a>세트</a></li>
                    </ul>
                  </li>
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/tumbler.jsp">텀블러</a></h4>
                    <ul>
                      <li><a>플라스틱 텀블러</a></li>
                      <li><a>스테인리스 텀블러</a></li>
                    </ul>
                  </li>
                  <li>
                    <h4><a href="index.jsp?main=../../sangpum/acc.jsp">액세서리</a></h4>
                    <ul>
                      <li><a>에코백</a></li>
                      <li><a>파우치</a></li>
                      <li><a>장우산 & 양우산</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </li>
            
          </ul>
        </nav>
      </header>
    </div>
    </div>
    

  <script src="assets/js/menuHoverHandler.js"></script>
</body>

</html>