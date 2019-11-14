$(function() {
    addEventMenuMove();
})

var selectMenuArea = -1;
function addEventMenuMove() {

    $(".icon-menuList div:nth-child(n+3)").hover(function(a) {

        var index = (a.clientY - 50) / 40;
        index = Math.ceil(index);
        if (index == 5 || index == 0) {
            return false;
        }

        if (index != selectMenuArea) {
            selectMenuArea = index;
            $("#menuList-select").clearQueue();
            $("#menuList-select").transition({y: (index - 1) * 40 + 'px'});
        }

    }, function() {
        
    });


    $(".icon-menuList").hover(function() {
        $("#menuList-select").clearQueue();
        $("#menuList-select").transition({opacity : 0.2});
        // $("#menuList-select").stop().fadeIn();
    }, function() {
        $("#menuList-select").transition({opacity : 0});
        // $("#menuList-select").stop().fadeOut();
    });
}

function mobileOpenMenu() {
    $(".icon-menuList").transition({x: '-200px'});
    $(".icon-menuList-leave").transition({x: '-200px'});
}
function mobileCloseMenu() {
    $(".icon-menuList").transition({x: '0px'});
    $(".icon-menuList-leave").transition({x: '0px'});
}

function resetMobileSetting() {
    $(".icon-menuList").css("right","-200px");
    $(".icon-menuList-leave").css("right","-200px");
    $("#menuList-select").css("opacity","0");
    $("#menuList-select").css("y","0px");
}