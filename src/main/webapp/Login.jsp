<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }
    .container {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    .error-message {
        color: red;
        background-color: yellow;
        font-style: italic;
        padding: 5px;
        border-radius: 5px;
        text-align: center;
        margin-bottom: 10px;
    }
    table {
        width: 100%;
    }
    th {
        text-align: left;
        padding-bottom: 8px;
    }
    td input {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .btn-container {
        text-align: center;
        margin-top: 10px;
    }
    .btn {
        background-color: #007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin: 5px;
    }
    .btn:hover {
        background-color: #0056b3;
    }
    .btn-clear {
        background-color: #dc3545;
    }
    .btn-clear:hover {
        background-color: #a71d2a;
    }
    .password-container {
        position: relative;
    }
    .toggle-password {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        cursor: pointer;
        font-size: 14px;
        color: #007bff;
    }
    .signup {
        text-align: center;
        margin-top: 10px;
    }
    .signup a {
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
    }
    .signup a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

	<div class="container">
		<% Object error = request.getAttribute("loginError"); %>
		<% if (error != null) { %>
			<p class="error-message"><%= error.toString() %></p>
		<% } %>

		<form method="post" action="./LoginServlet">
			<table>
				<tr>
					<th>Email</th>
					<td><input type="text" name="email" required></td>
				</tr>
				<tr>
					<th>Password</th>
					<td class="password-container">
						<input type="password" name="pass" id="password" required>
						<span class="toggle-password" onclick="togglePassword()">Show</span>
					</td>
				</tr>
			</table>

			<div class="btn-container">
				<input type="submit" class="btn" name="submit" value="Login">
				<input type="reset" class="btn btn-clear" name="reset" value="Clear">
			</div>
		</form>

		<p class="signup">
			New User? <a href="Register.html">Sign Up</a>
		</p>
	</div>

	<script>
		function togglePassword() {
			var passwordField = document.getElementById("password");
			var toggleText = document.querySelector(".toggle-password");
			if (passwordField.type === "password") {
				passwordField.type = "text";
				toggleText.textContent = "Hide";
			} else {
				passwordField.type = "password";
				toggleText.textContent = "Show";
			}
		}
	</script>

</body>
</html>
