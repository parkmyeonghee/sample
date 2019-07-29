<%@ page language="java" contentType="text/html; charset=EUC-KR"pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.js"></script>  
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.0/css/bootstrap-datepicker3.standalone.css">
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.0/moment.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.0.1/fullcalendar.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.0/js/bootstrap-datepicker.min.js"></script>

    
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert</title>
</head>
<body>
<div class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
    <form id="c_insert">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">일정추가</h4>
            </div>
            <div class="modal-body">
             <div class="row">
              <div class="col-xs-12">
              <label class="col-xs-4" for="starts-at">프로젝트</label>
              <select name="CAL_PROJECT"  >
  				 <c:forEach var="vo" items="${list}" varStatus="status">
			      <option value="<c:out value="${vo.commCode}" />"
			      <c:if test="${list.CAL_PROJECT == list.commCode}"> selected="selected" </c:if> />
					</c:forEach>
					</select>
		             </div>
		             </div>
                      &nbsp
                 <div class="row">
                    <div class="col-xs-12">
                        <label class="col-xs-4" for="starts-at">시작</label>
                        <input type="text" name="CAL_START" id="CAL_START"  placeholder="yyyy-mm-dd"/>
                    </div>
                </div>
                 &nbsp
                <div class="row">
                    <div class="col-xs-12">
                        <label class="col-xs-4" for="ends-at">끝</label>
                        <input type="text" name="CAL_END" id="CAL_END"  placeholder="yyyy-mm-dd"/>
                    </div>
                </div> 
                 &nbsp 
                <div class="row">
                    <div class="col-xs-12">
                        <label class="col-xs-4" for="title">title</label>
                        <input type="text"  id="CAL_TITLE" name="CAL_TITLE" />
                    </div>
                </div>
                  &nbsp 
                <div class="row">
                    <div class="col-xs-12">
                        <label class="col-xs-4" for="title">내용</label>
                        <input type="text"  id="CAL_DESC" name="CAL_DESC" rows="10"/>
                    </div>
                </div>
                 &nbsp 
                <div class="row">
                    <div class="col-xs-12">
                        <label class="col-xs-4" for="title">비율</label>
                        <input type="text"  id="CAL_RATE" name="CAL_RATE" rows="10"/>
                    </div>
                </div>
            
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="save-event" onClick="c_save()">Save changes</button>
            </div>
        </div><!-- /.modal-content -->
        </div>
        </form>
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>
</html>