<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="createEventModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span> <span class="sr-only">close</span></button>
                <h4>Event</h4>
            </div>
            <div id="modalBody" class="modal-body">
               <div class="form-group">
                    <input class="form-control" type="text" placeholder="Event Name">
                </div>

                <div class="form-group">
                    <div class="input-group date" data-provide="datepicker">
                        <input type="text" class="form-control" placeholder="Due Date mm/dd/yyyy">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <textarea class="form-control" type="text" rows="4" placeholder="Event Description"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                <button type="submit" class="btn btn-primary" id="submitButton">Save</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>