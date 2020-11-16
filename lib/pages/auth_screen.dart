import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/providers/auth.dart';
import 'package:emeetation_test_app/widgets/header.dart';
import 'package:emeetation_test_app/widgets/social_icons_row.dart';
import 'package:emeetation_test_app/widgets/auth_screen_pre_link_question.dart';
import 'package:emeetation_test_app/widgets/auth_screen_active_link.dart';
import 'package:emeetation_test_app/widgets/auth_text_field.dart';

enum AuthMode { Signup, Login }

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth-screen';

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: _deviceSize.height,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: _deviceSize.width * 0.098,
                      right: _deviceSize.width * 0.098,
                      top: _deviceSize.height * 0.176,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Header(
                            text: 'Welcome\n in Emeetation!',
                            color: kHeader1Color,
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0),
                        Padding(
                            padding: EdgeInsets.only(
                              right: _deviceSize.width * 0.02,
                              left: _deviceSize.width * 0.02,
                            ),
                            child: AuthCard()),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthCard extends StatefulWidget {
  const AuthCard({Key key}) : super(key: key);
  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _nicknameFocusNode = FocusNode();
  AuthMode _authMode = AuthMode.Login;

  Map<String, String> _authData = {
    'email': '',
    'password': '',
    'nickname': '',
  };

  bool _isLoading = false;

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    if (_authMode == AuthMode.Login) {
      //Log user in
      await Provider.of<Auth>(context, listen: false)
          .signin(_authData['email'], _authData['password']);
    } else {
      //Sign user up
      await Provider.of<Auth>(context, listen: false)
          .signup(_authData['email'], _authData['password']);
    }
    setState(() {
      _isLoading = false;
    });
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Signup;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: _authMode == AuthMode.Login
                  ? EdgeInsets.only(
                      top: _deviceSize.height * 0.075,
                      bottom: _deviceSize.height * 0.02,
                    )
                  : EdgeInsets.only(
                      top: _deviceSize.height * 0.043,
                      bottom: _deviceSize.height * 0.02,
                    ),
              child: Column(
                children: [
                  if (_authMode == AuthMode.Login) SocialIconsRow(),
                  SizedBox(height: _deviceSize.height * 0.01875),
                  if (_authMode == AuthMode.Login)
                    Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 1.0,
                    ),
                ],
              ),
            ),
            AuthTextField(
              hintText: 'e-mail',
              focusNode: _emailFocusNode,
              fieldKey: ValueKey(1),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              validator: (value) => !value.contains("@") || value.isEmpty
                  ? 'Not a valid email.'
                  : null,
              onSaved: (value) {
                _authData['email'] = value.trim();
              },
              onFieldSubmitted: _authMode == AuthMode.Login
                  ? (_) =>
                      FocusScope.of(context).requestFocus(_passwordFocusNode)
                  : (_) =>
                      FocusScope.of(context).requestFocus(_nicknameFocusNode),
            ),
            if (_authMode == AuthMode.Signup)
              SizedBox(height: _deviceSize.height * 0.026),
            if (_authMode == AuthMode.Signup)
              AuthTextField(
                hintText: 'nickname',
                focusNode: _nicknameFocusNode,
                fieldKey: ValueKey(2),
                textInputAction: TextInputAction.next,
                validator: (value) => value.isEmpty || value.length < 2
                    ? 'Should be at least 2 characters!'
                    : null,
                onSaved: (value) {
                  _authData['nickname'] = value.trim();
                },
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_passwordFocusNode),
              ),
            SizedBox(height: _deviceSize.height * 0.026),
            AuthTextField(
              hintText: 'password',
              focusNode: _passwordFocusNode,
              fieldKey: ValueKey(3),
              textInputAction: TextInputAction.done,
              validator: (value) => value.isEmpty || value.length < 6
                  ? 'Password is too short!'
                  : null,
              onSaved: (value) {
                _authData['password'] = value.trim();
              },
              obscureText: true,
            ),
            SizedBox(height: _deviceSize.height * 0.012),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_authMode == AuthMode.Login)
                  ActiveLink(
                    text: 'Forgot your password?',
                    onTap: () {},
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    underLine: false,
                  ),
              ],
            ),
            SizedBox(
                height: _authMode == AuthMode.Login
                    ? _deviceSize.height * 0.025
                    : _deviceSize.height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _isLoading
                    ? CircularProgressIndicator()
                    : SizedBox(
                        height: 50.0,
                        width: 50.0,
                        child: FloatingActionButton(
                          onPressed: _submit,
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            size: 38.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _authMode == AuthMode.Login
                      ? _deviceSize.height * 0.068
                      : _deviceSize.height * 0.066),
              child: Row(
                children: [
                  PreLinkQuestion(
                    text:
                        '${_authMode == AuthMode.Login ? 'New user?' : 'Already user?'}',
                  ),
                  SizedBox(width: _authMode == AuthMode.Login ? 8.0 : 24.0),
                  ActiveLink(
                    text:
                        '${_authMode == AuthMode.Login ? 'Create an account' : 'Sign in'}',
                    onTap: _switchAuthMode,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    underLine: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
