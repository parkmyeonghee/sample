<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">



<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.0/css/bootstrap-datepicker3.standalone.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/additional-methods.js"></script>
<link
	href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css"
	rel="Stylesheet"></link>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>




<title>main</title>
<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}

.fc-sat {
	color: #0000FF;
}
/* 토요일 */
.fc-sun {
	color: #FF0000;
}
/* 일요일 */
input.error {
	border: 1px solid red;
}

label.error {
	font-weight: normal;
	color: red;
}
</style>
</head>

<body>
	<div class="col-xs-12">
		<label class="control-label" for="inputUser">USER</label> <select
			id="CAL_USER" name="CAL_USER">
			<c:forEach var="v" items="${userList}" varStatus="status">
				<option value="${v.UNIQ_NO}">${v.NAME}</option>
			</c:forEach>
		</select>
	</div>
	<div id='calendar'></div>
	<div id='datepicker'></div>
	l
	<div class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<form id="createEventForm" class="form-horizontal">
				<input type="hidden" name="FRST_RGST_DT" value="start" /> <input
					type="hidden" name="FINL_UPDT_DT" value="end" /> <input
					type="hidden" name="CAL_ID" value="CAL_ID" id="CAL_ID" /> <input
					type="hidden" name="FINL_UPPR" value="FINL_UPPR" id="FINL_UPPR" />
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">일정</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12">
								<label class="control-label" for="inputProject">프로젝트</label> <select
									id="CAL_PROJECT" name="CAL_PROJECT">
									<c:forEach var="vo" items="${projList}" varStatus="status">
										<option value="${vo.PJ_ID}">${vo.PJ_TITLE}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						&nbsp

						<div class="control-group">
							<label class="control-label" for="inputTitle">Title:</label>
							<div class="controls">
								<input type="text" name="CAL_TITLE" id="CAL_TITLE"
									style="margin: 0 auto;">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputDESC">DESC:</label>
							<div class="controls">
								<input type="text" name="CAL_DESC" id="CAL_DESC"
									style="margin: 0 auto;">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputRate">Rate:</label>
							<div class="controls">
								<input type="text" name="CAL_RATE" id="CAL_RATE"
									style="margin: 0 auto;">

							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputStart">Start:</label>
							<div class="controls">
								<input type="text" name="CAL_START" id="CAL_START"
									style="margin: 0 auto;">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputEnd">End:</label>
							<div class="controls">
								<input type="text" name="CAL_END" id="CAL_END"
									style="margin: 0 auto;">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputUsern">USER</label> <select
								id="FRST_RGPR" name="FRST_RGPR">
								<c:forEach var="n" items="${userName}" varStatus="status">
									<option value="${n.UNIQ_NO}">${n.ID}</option>
								</c:forEach>
							</select>
						</div>
						<div class="control-group">
							<label class="control-label" for="when">Check for email
								alerts:</label>
							<div class="controls">
								<input type="checkbox" name="emailalerts" class="emailalerts"
									id="emailalerts" />
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" id="submitButton" class="btn btn-primary">Save</button>
							<button id="deleteBtn" class="btn btn-danger"
								data-dismiss="modal" aria-hidden="true" style="display: none;">Delete</button>
							<button class="btn btn-warning" data-dismiss="modal"
								aria-hidden="true">Cancel</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


	<script type="text/javascript">
//데이터 가져와서 뿌려주기
        window.onload = function() {
        	$.ajax({
        		beforeSend: function() {},
        		cache: false,
        	    method: "POST",
        	    url: "/calendar2",
        	   data: {'param':'aaa'},
        	   dataType: "json",
        	    success: function(data) 
        	    {
        	    
        		   $('#calendar').fullCalendar('addEventSource', data);
        	    },
        	    error: function(jqXHR, textStatus, errorThrown) {},
        		complete: function() 
        		{
        		}
        	});
        }

        $(document).ready(function() {
			

            $('#calendar').fullCalendar({
                header: 
                {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                navLinks: true, // can click day/week names to navigate views
                selectable: true,
                selectHelper: true,
                editable: true,
                eventLimit: true,
                draggable:false,
            
               	
                
                select: function(start, end, allDay)
                {
                
                    var startDate = $.fullCalendar.formatDate(start, "YYYY-MM-DD");
                    var endDate = $.fullCalendar.formatDate(end, "YYYY-MM-DD");
                    $('#FRST_RGST_DT').val(start);
                    $('#FINL_UPDT_DT').val(end);
                    $('#CAL_START').val(startDate);
                    $('#CAL_END').val(endDate);
                    
                    //삭제버튼 숨김
                    $("#deleteBtn").hide();
                    
                    $('.modal').modal('show');
                    //Prevent default form action
                    $('#createEventForm').on('submit', function(e) {
                        return false;
                    });
                    //Cancel Click close form
                    $(document).on('click', '.close, .btnCancel', function() {
                        $('#createEventModal').hide('fast');
                        document.getElementById("createEventForm").reset();
                    });
                    //Submit event form click
                    $('#submitButton').on('click', function(e) {
                        // We don't want this to act as a link so cancel the link action
                        e.preventDefault();
                        $(this.form).submit();
                 	
                    });
             
                    //등록로직
					$("#CAL_START, CAL_END").datepicker();
                    $("#createEventForm").validate({
                        rules: 
                        {
                            "CAL_TITLE": 
                            {
                                required: true,
                                minlength: 3
                            },
                            "CAL_DESC": 
                            {
                                required: true,
                                minlength: 3
                            },
                            "CAL_RATE": 
                            {
                                required: true,
                                minlength: 1
                            }
                           
                        },
                        messages: 
                        {
                            "CAL_TITLE": 
                            {
                                required: "제목입력"
                            },
                            "CAL_DESC":
                            {
                                required: "입력하세요."
                            },
                            "CAL_RATE":
                            {
                                required: "입력하세요."
                            }
                        },
                        submitHandler: function (form) { // 폼이 submit될 때 마지막으로 할 수 있게 넘겨줌
                            //doSubmit();
                           // return false; // for demo
                        	 $('.modal').modal('hide');
                             $.ajax({
                                 url: "/write",
                                 data: {
                                 	   CAL_ID: $("#CAL_ID").val(),
                                 	   cal_start: $("#CAL_START").val(),
                                 	   cal_end  : $('#CAL_END').val(),
                                 	   cal_title  : $('#CAL_TITLE').val(),
                                 	   cal_rate  : $('#CAL_RATE').val(),
                                 	   cal_project  : $('#CAL_PROJECT').val(),
                                 	   cal_desc  : $('#CAL_DESC').val(),
                                 	   frst_rgst_dt:$('#FRST_RGST_DT').val(),
                                 	   finl_updt_dt:$('#FINL_UPDT_DT').val(),
                                 	   frst_rgpr:$('#FRST_RGPR').val()
                                 	  },
                                 type: "POST",
                                 success: function(json) {
                                    reload();
                                     document.getElementById("createEventForm").reset();
                                     document.getElementById("calendar").reset();
                                 }
                             });
                        }
                    });
                },
                eventClick: function (event,element,view) {
                	//수정, 삭제 로직
                       $("#deleteBtn").show(); //삭제버튼 보임
                       $('.modal').find('#CAL_ID').val(event.CAL_ID);
                       $('.modal').find('#CAL_PROJECT').val(event.CAL_PROJECT);//해당 프로젝트 선택
                       $('.modal').find('#CAL_TITLE').val(event.title);
                       $('.modal').find('#CAL_DESC').val(event.CAL_DESC);
                       $('.modal').find('#CAL_START').val(event.start);
                       $('.modal').find('#CAL_END').val(event.end);
                       $('.modal').find('#CAL_RATE').val(event.CAL_RATE);
                       $('.modal').find('#FRST_RGPR').val(event.FRST_RGPR);
                       $('.modal').modal('show');
                       console.log(event);
                       
                       $('#deleteBtn').on('click', function(e){

                    	   e.preventDefault();
                    	   doDelete();
                    	   
                    	});
                    	function doDelete(){
                  
                    	$.ajax({
                    	 url:"/delete",
                    	data:{
                    		 CAL_ID: $("#CAL_ID").val()
                    	  },
                    	 type: "POST",
                    	 success:function(data) {
                    	    reload();
                    
                    	 }
                    	});
                    	}  
                    	
                    	/*수정  */
                    	 $('#submitButton').on('click', function(e) {
                     
                        e.preventDefault();
                        doSubmit();
                    });

                    function doSubmit() {
                        var title = $('#CAL_TITLE').val();
                        if (title) {
                            var data = $('#createEventForm').serialize(); //한번에 보낼 때 사용 data 부분에 date를 써주기
                            alert(data);
                            $('.modal').modal('hide');
                            $.ajax({
                                url: "/update",
                                data: {
                                	   cal_id: $("#CAL_ID").val(),
                                	   cal_start: $("#CAL_START").val(),
                                	   cal_end  : $('#CAL_END').val(),
                                	   cal_title  : $('#CAL_TITLE').val(),
                                	   cal_rate  : $('#CAL_RATE').val(),
                                	   cal_project  : $('#CAL_PROJECT').val(),
                                	   cal_desc  : $('#CAL_DESC').val(),
                                	   frst_rgst_dt:$('#FRST_RGST_DT').val(),
                                	   finl_updt_dt:$('#FINL_UPDT_DT').val(),
                                	   frst_rgpr:$('#FRST_RGPR').val(),
                                	  },
                                type: "POST",
                                success: function(json) {
                                   reload();
                                    document.getElementById("createEventForm").reset();
                                    document.getElementById("calendar").reset();
                                }
                            });
                        }
                    }
                }
            });
        });
        
        function reload() {
        	window.location.reload(true);
        }
    </script>
</body>

</html>