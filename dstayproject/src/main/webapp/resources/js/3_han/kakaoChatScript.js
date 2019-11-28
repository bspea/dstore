
        $(function() {
            $('.talk-chatBox>textarea').keypress(function(event) {

                if (event.keyCode == 13) {
                    $(".talk-chatBox button").trigger("click");
                    event.preventDefault();
                }
            });
        });

        function readAll(size) {
            // 매개변수로 size가 넘어오지 않으면 전부 지우고, size가 넘어오면 해당 size만큼 지웁니다.
            if(size != null) {
                var $readDiv = $(".talk-read");
                var divLength = $readDiv.length;

                // size만큼 돌아서 지웁니다.
                
                for (var i = 0; i < size; ++i) {
                    // 인덱스를 넘어가면 강제로 종료합니다.
                    // Javascript는 인덱스를 넘어가도 상관 없지만, 찜찜해서 예외처리.
                    if (divLength < i)
                        return false;

                    $readDiv.eq(i).remove();
                }
            } else {
                $(".talk-read").remove();
            }


        }

        function addChatMe(writer, message, time) {
            $(".talk-body").append('<div class="talk-bodyMe"> <div class="talk-bodyTitle">' + writer + '</div><div class="talk-read">1</div><div class="talk-time">' + time + '</div><div class="talk-bodyContents">' + message + '</div>');
        }

        function addChatAnother(writer, message, time) {
            // $(".talk-body").append('<div class="talk-bodyAnother"> <div class="talk-bodyTitle">' + writer + '</div><div class="talk-bodyContents">' + message + '</div><div class="talk-time">' + time + '</div><div class="talk-read">1</div>');
            $(".talk-body").append('<div class="talk-bodyAnother"> <div class="talk-bodyTitle">' + writer + '</div><div class="talk-bodyContents">' + message + '</div><div class="talk-time">' + time + '</div>');
        }