class validator {
  String? userName;
  String? email;
  String? password;
  String? conformPassword;
  String? validateUserName() {
    if (userName == null) {
      return "username is mandatory";
    } else if (userName!.length < 8) {
      return "username must have 8 charecters";
    }
    return null;
  }

  String? validateEmail() {
    if (email == null) {
      return "email is mandatory";
    } else if (!email!.contains("@")) {
      return "invalid email";
    }
    return null;
  }

  String? validatePassword() {
    if (password == null) {
      return "password is mandatory";
    } else if (password!.length < 8) {
      return "password must have 8 charectors";
    }
    return null;
  }

  String? validateConformPassword() {
    if (conformPassword == null) {
      return "confrm your password";
    } else if (conformPassword != password) {
      return "password donot match";
    }
    return null;
  }

  validator(
      {required this.userName,
      required this.email,
      required this.password,
      required this.conformPassword});
}
