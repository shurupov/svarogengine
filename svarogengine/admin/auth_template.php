<div>
	<form method="POST" action="">
		<b style="color: #ff0000;"><?=$login_error?></b>
		<table>
			<tr>
				<td>Имя пользователя</td>
				<td><input type="text" name="login" /></td>
			</tr>
			<tr>
				<td>Пароль</td>
				<td><input type="password" name="password" /></td>
			</tr>
		</table>
		<input type="hidden" name="type" value="auth" />
		<input type="submit" value="Войти">
	</form>
</div>
