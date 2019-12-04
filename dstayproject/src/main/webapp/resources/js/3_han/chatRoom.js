// 테스트용 샘플본입니다.
// $(function() {
//     addChat(5, "닉네임", "이메일", "채팅내용", "2019-12-02 (월요일)", 1);
//     readUpdate(0);
//     readUpdateEmail('이메일', 2);
//     removeAll();
// })

$(function() {
    $('.chatRoom-search input').keypress(function(event) {

        if (event.keyCode == 13) {
             $(".chatRoom-search button").trigger("click");
                event.preventDefault();
         }
     });
})

// 채팅방을 전부 삭제하는 함수입니다.
function removeAll() {
    $(".chatRoom-body").text("");
}


// 채팅방을 한 칸 추가하는 함수입니다.
// * Parameter
// mno = 회원의 번호입니다. DB 처리를 위해 사용합니다.
// nickname = 회원의 아이디입니다. 
// contents = 마지막으로 남긴 대화 내용입니다.
// nowDate = 마지막으로 남긴 대화 시간입니다.
// readCount = 읽지 않은 채팅의 개수입니다.
function addChat(mno, nickname, email, contents, nowDate, readCount) {
    // 채팅방의 mno를 찾기 위한 인덱스 검색
    var index = $(".chatRoom-room").length;

    $(".chatRoom-body").append('<div class="chatRoom-room" onclick="openChatting(' + index + ', ' + mno + ');">');
    $(".chatRoom-room").last().append('<div class="chatRoom-roomName"><b>' + nickname + '</b> <div class="chatRoom-email">(' + email + ')</div></div>');
    $(".chatRoom-room").last().append('<div class="chatRoom-roomDate">' + nowDate + '</div>');
    $(".chatRoom-room").last().append('<br>');
    $(".chatRoom-room").last().append('<div class="chatRoom-roomContents">' + contents + '</div>');
    $(".chatRoom-room").last().append('<div class="chatRoom-roomNew">' + readCount + '</div>');
    $(".chatRoom-room").last().append('<input type="hidden" class="chatRoom-roomMno" value="' + mno + '">');
}

// 채팅방을 index로 찾아 읽은 수를 설정해주기 위한 함수입니다.
// index : 채팅방을 찾을 index 입니다.
// size : 몇 개 안읽었는지 설정해주기 위한 숫자입니다. 입력하지 않으면 모두 읽음표시 됩니다.
function readUpdate(index, size) {
    $(".chatRoom-roomNew").css("display","inherit");
    if (size == null) {
        $(".chatRoom-roomNew").css("display","none");
        return false;
    }
    $(".chatRoom-roomNew").text("");
    var $readDiv = $(".chatRoom-roomNew");
    $readDiv.eq(index).text(size);
}

// 채팅방을 이메일로 찾아 읽은 수를 설정해주기 위한 함수입니다.
// email : 채팅방을 찾을 email 입니다. 같은 이메일이 여러개 있으면 전부 바뀝니다.
// size : 몇 개 안읽었는지 설정해주기 위한 숫자입니다. 입력하지 않으면 모두 읽음표시 됩니다.
function readUpdateEmail(email, size) {
    var $divNew = $(".chatRoom-roomNew");
    for (var i = 0; i < $divNew.length; ++i) {
        if ($(".chatRoom-email").eq(i).text() == "(" + email + ")") {
            $(".chatRoom-roomNew").eq(i).css("display","inherit");
                    
            if (size >= 0) {
                $(".chatRoom-roomNew").eq(i).text(size);
            } else {
                $(".chatRoom-roomNew").eq(i).css("display","none");
            }
        }
    }
}
