
            var lastIndex = 0;
            var loopIndex = 4;

            $(function(){
                $("#frequency-question-table tr").eq(0).show();

                for(var i=1; i<=loopIndex; i++){
                    $("#frequency-question-table tr").eq(i).show();
                }
                lastIndex = loopIndex + 1;
                
            });

            $(function(){
                $("#show-more-btn").click(function(){

                    for(var i=0; i<loopIndex; i++){

                        if(lastIndex <= $("#frequency-question-table tr").length){
                            $("#frequency-question-table tr").eq(lastIndex).show();
                            lastIndex = lastIndex + 1;
                        }else{
                            $("#show-more-btn").css({"display":"none"});
                            return;
                        }                       
                    }                    
                });
            });
            