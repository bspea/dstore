			/*
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
            */
            
            function fqaLoop(){
            	
            	var lastIndex = 0;
                var loopIndex = 4;
                
                $("#frequency-question-table tr").eq(0).show();

                for(var i=1; i<=loopIndex; i++){
                    $("#frequency-question-table tr").eq(i).show();
                }
                lastIndex = loopIndex + 1;
                
                $("#show-more-btn").click(function(){

                    for(var i=0; i<loopIndex; i++){

                        if(lastIndex <= $("#frequency-question-table tr").length){
                            $("#frequency-question-table tr").eq(lastIndex).show();
                            lastIndex = lastIndex + 1;
                        }else{
                            /*$("#show-more-btn").css({"display":"none"});*/
                            return;
                        }                       
                    }                    
                });
            }
            
            
            
            
            $(function(){
    			
    			$.ajax({
    				url:"fqaList-all-show.do",
    				dataType:"json",
    				success:function(data){
    					$(".text-roboto-light").html("전체 결과는 " + data.length + "건 입니다");
    					console.log(data);
    					
    					var list = data;
    					var str = "";
    					
    					
    					$tbody = $("#frequency-question-table tbody");
    					
    					
    					
    					$tbody.html("");
    					
    					for(i=0; i<list.length; i++){
    						str+="<tr>";
    						str+='<td class="text-center">' + 'Q' + '</td>';
    						str+='<td class="text-center">' + list[i].category + '</td>';
    						str+='<td class="text-center">' + list[i].division + '</td>';
    						str+='<td class="frequency-question" colspan="5" data-toggle="modal" data-target="#fq' + list[i].fqaNo + '">' + list[i].qTitle + '</td>';
    						str+="</tr>";
    						
    					}
    					
    					$tbody.append(str);
    					
    					fqaLoop();
    					
    				},
    				error:function(){
    					console.log("통신 실패");
    				}
    			});
    			
    			
    			
    			$("#searchTxt").keyup(function(){
    				$.ajax({
    					url:"fqaSearch.do",
    					data:{searchTerm:$("#searchTxt").val()},
    					dataType:"json",
    					success:function(data){
    						$(".text-roboto-light").html($("#searchTxt").val()+ "(으)로 검색하신 결과는 " + data.length + "건 입니다");
    						console.log(data);
    						
    						var list = data;
    						var str = "";
    						
    						
    						$tbody = $("#frequency-question-table tbody");
    						
    						
    						
    						$tbody.html("");
    						
    						for(i=0; i<list.length; i++){
    							str+="<tr>";
    							str+='<td class="text-center">' + 'Q' + '</td>';
    							str+='<td class="text-center">' + list[i].category + '</td>';
    							str+='<td class="text-center">' + list[i].division + '</td>';
    							str+='<td class="frequency-question" colspan="5" data-toggle="modal" data-target="#fq' + list[i].fqaNo + '">' + list[i].qTitle + '</td>';
    							str+="</tr>";
    							
    						}
    						
    						$tbody.append(str);
    						
    						fqaLoop();
    						
    					},
    					error:function(){
    						console.log("통신 실패");
    					}
    				});
    			});
    		});