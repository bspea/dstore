var bannerOnIndex = 0;
var bannerMaxIndex = 7;
var bannerRightPageIndex = 0; // 배너 목록이 옆으로 밀린 수. (페이지라고 생각하면 됨)

$(function(){
// 페이지 로드될 때 Banner display 풀어주는 부분입니다.
var $imgPc = $(".banner-pc img");
var $imgMobile = $(".banner-mobile img");


$imgPc.eq(0).css("display","inherit");
$imgMobile.eq(0).css("display","inherit");





// hover
var $bannerBtn = $(".banner-btn");
$.each($bannerBtn, function(index) {
    $bannerBtn.eq(index).hover(function() {
        bannerClickEffectHoverRemove();
    }, function() {
        bannerClickEffect();
    });

    // 메뉴 버튼 display (6개 초과해서 넘어가면 숨깁니다.)
    if (index >= 6) {
        $bannerBtn.eq(index).css("display","none");
    }
});

// 버튼에 대한 추가
bannerClickEffect();
});

$(function() {
var obj = $(".leftArrow").offset();
});

function bannerMenuClick(index) {
if (index > bannerMaxIndex) {
    console.log(index);
    return;
}

if (index < 0)
    return;

if (bannerOnIndex == index)
    return;

bannerOnIndex = index;

bannerClickEffectAll();
bannerButtonDisplay();
}

function bannerClickEffectAll() {

// 버튼에 대한 처리
$.each($(".banner-btn"), function(index) {
    $(".banner-btn").eq(index).removeClass("banner-btn-click");
    $(".banner-btn").eq(index).removeClass("banner-btn-click2");
});

$(".banner-btn").eq(bannerOnIndex).addClass("banner-btn-click");
$(".banner-btn").eq(bannerOnIndex).addClass("banner-btn-click2");

// 배너 이미지에 대한 처리
$.each($(".banner-pc img"), function(index) {
    $(".banner-pc img").eq(index).fadeOut();
});

$(".banner-pc img").eq(bannerOnIndex).fadeIn();

$.each($(".banner-mobile img"), function(index) {
    $(".banner-mobile img").eq(index).fadeOut();
});
$(".banner-mobile img").eq(bannerOnIndex).fadeIn();
}

function bannerClickEffectRemove() {
$(".banner-btn").eq(bannerOnIndex).removeClass("banner-btn-click");
$(".banner-btn").eq(bannerOnIndex).removeClass("banner-btn-click2");
}
function bannerClickEffectHoverRemove() {
$(".banner-btn").eq(bannerOnIndex).removeClass("banner-btn-click");
}

function bannerClickEffect() {
$(".banner-btn").eq(bannerOnIndex).addClass("banner-btn-click");
$(".banner-btn").eq(bannerOnIndex).addClass("banner-btn-click2");
}

function bannerIconLeftClick() {
// 현재 선택된 배너가 처음일 경우 마지막으로 보냅니다.
if (bannerOnIndex == 0) {
    bannerMenuClick(bannerMaxIndex);
    bannerBtnDisplayLast();
} else {
    bannerMenuClick(bannerOnIndex - 1);
}
}

function bannerIconRightClick() {
// 현재 선택된 배너가 마지막에 도달한 배너일 경우 다시 처음으로 되돌립니다.
if (bannerOnIndex == bannerMaxIndex) {
    bannerMenuClick(0);
    bannerBtnDisplayReset();
} else {
    bannerMenuClick(bannerOnIndex + 1);
}
}   

function bannerButtonDisplay() {
// 이 버튼은 메뉴를 클릭했을 때 벌어지는 함수이기 때문에 화살표를 통한 이동은 포함되지 않습니다.

// 현재 배너의 총 개수가 6개가 넘는지부터 검사합니다. (6개가 넘지 않는다면 불필요합니다.)
if (bannerMaxIndex < 6) { // Index라서 <
    return; 
}

// 배너의 마지막 버튼을 클릭했을 때 첫번째로 보여지는 버튼을 none처리하고 그 다음 버튼을 Open 합니다.
$bannerBtn = $(".banner-btn");
if (bannerOnIndex >= 5) {
    if (bannerMaxIndex - bannerRightPageIndex >= 6) { // 인덱스라서 6은 7입니다.
        $bannerBtn.eq(bannerRightPageIndex).css("display","none");

        bannerRightPageIndex++;

        $bannerBtn.eq(5 + bannerRightPageIndex).css("display","table");
    }
}

// 배너의 첫 번째 버튼을 클릭했을 때 오른쪽으로 메뉴가 밀린 상태면 왼쪽으로 한 칸씩 땡깁니다.
if (bannerOnIndex == bannerRightPageIndex) {

    // 오른 쪽으로 땡겨졌을 경우
    if (bannerRightPageIndex >= 1) {
        $bannerBtn.eq(5 + bannerRightPageIndex).css("display","none");

        bannerRightPageIndex--;

        $bannerBtn.eq(bannerRightPageIndex).css("display","table");
    }
}
}

function bannerBtnDisplayReset() {
var $btn = $(".banner-btn");

$.each($btn, function(index) {
    if (index <= 5)
        $btn.eq(index).css("display","table");
    else
        $btn.eq(index).css("display","none");
});

bannerRightPageIndex = 0;
}

function bannerBtnDisplayLast() {
var $btn = $(".banner-btn");

$.each($btn, function(index) {
    if (index >= bannerMaxIndex - 5)
        $btn.eq(index).css("display","table");
    else
        $btn.eq(index).css("display","none");
});

bannerRightPageIndex = bannerMaxIndex - 5;
}