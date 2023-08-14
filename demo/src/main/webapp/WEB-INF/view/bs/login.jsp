<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        td {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="container-fluid mt-3 p-3 bg-primary text-white text-center">
        <h1>My Bootstrap page</h1>
        <p>Forms</p>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-5">
                <div class="container p-3 border">
                    <h2>Stacked form</h2>
                    <form action="/demo/bs/login" method="post">
                        <div class="mb-3 mt-3">
                            <label for="email" class="form-label">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                        <div class="mb-3">
                            <label for="pwd">Password:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password"
                                name="pswd">
                        </div>
                        <div class="form-check mb-3">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" name="remember" checked> Remember me
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

            </div>
            <div class="col-2"></div>
            <div class="col-5 p-3 border">
                <h2>Table Form</h2>
                <form action="/demo/bs/login2" method="post">
                    <table class="table table-borderless">
                        <tr>
                            <td style="width: 40%"><label class="col-form-label">Email</label></td>
                            <td style="width: 60%;"><input type="email" name="email" class="form-control"
                                    placeholder="Enter email"></td>
                        </tr>
                        <tr>
                            <td><label class="col-form-label">password</label></td>
                            <td><input type="password" name="pswd" class="form-control" placeholder="Enter password">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" name="remember"> Remember me
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><button type="submit" class="btn btn-primary">login</button></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>

</body>

</html>