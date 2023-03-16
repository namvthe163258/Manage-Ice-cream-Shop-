<%-- 
    Document   : change
    Created on : Nov 3, 2022, 10:53:56 AM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Change Pass</title>
        <style>
            body {
                background: #f7f7f7;
            }

            .form-box {
                max-width: 500px;
                margin: auto;
                padding: 50px;
                background: #ffffff;
                border: 10px solid #f2f2f2;
            }
        </style>
    </head>
    <body>
        <div class="container py-3">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card card-outline-secondary">
                        <div class="card-header">
                            <p class="mb-0">Change Password</p>
                        </div>
                        <div class="card-body">
                            <form action="change" method="post">
                                <div class="form-group">
                                    <label for="inputPasswordOld">Old Password</label>
                                    <input class="form-control" id="inputPasswordOld" required="" type="password">
                                    <input type="hidden" name="user" value="${sessionScope.account.password}"/>
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNew">New Password</label>
                                    <input class="form-control" id="inputPasswordNew" name="password" required="" type="password">
                                    <small class="form-text text-muted" id="passwordHelpBlock">Your password must be
                                        8-20 characters long, contain letters and numbers, and must not contain
                                        spaces, special characters, or emoji.</small>
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNewVerify">Confirm new password</label>
                                    <input class="form-control" id="inputPasswordNewVerify" name="confirmPass" required="" type="password">
                                    <span class="form-text small text-muted">To confirm, type the new password
                                        again.</span>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-success btn-lg float-right" type="submit">Change</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
