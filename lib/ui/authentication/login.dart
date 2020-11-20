import 'package:diinsel/ui/authentication/sign_up.dart';
import 'package:diinsel/ui/forgot_password/forgot_password1.dart';
import 'package:diinsel/ui/main_view/main_view.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/api_service.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  String username;
  String password;
  APIService apiService;
  bool isPasswordVisiable = false;

  @override
  void initState() {
    // TODO: implement initState
    apiService = new APIService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: GestureDetector(
        onTap: () {
          context.unFocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  ImageUtils.loginBottomBg,
                  width: double.infinity,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '¿Todavia no tienes cuenta?',
                      style: TextStyleUtils().whiteSmallRegular,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: SignUp()));
                        },
                        child: Text(
                          'Solicitud',
                          style: TextStyleUtils().whiteSmall1Medium,
                        )),
                    SizedBox(
                      height: 4.toHeight(),
                    )
                  ],
                ),
              ),
              Form(
                key: globalKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                              left: 5.8.toWidth(), top: 11.5.toHeight()),
                          child: Text(
                            'Acceso',
                            style: TextStyleUtils().darkBigSemiBold,
                          )),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            left: 5.8.toWidth(),
                            right: 5.8.toWidth(),
                            top: 2.toHeight()),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (input) => {username = input, print(input)},
                          validator: (input) => !input.contains('@')
                              ? "Email Id should be valid"
                              : null,
                          maxLines: 1,
                          style: TextStyleUtils().textFieldStyle,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color(0xFF4E5053).withOpacity(.1))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color(0xFF4E5053).withOpacity(.1))),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          Color(0xFF4E5053).withOpacity(.1))),
                              hintText: 'Movil',
                              hintStyle: TextStyleUtils().hintTextStyle),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            left: 5.8.toWidth(),
                            right: 5.8.toWidth(),
                            top: 2.toHeight()),
                        child: Stack(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.text,
                              onChanged: (input) =>
                                  {password = input, print(input)},
                              validator: (input) => input.length < 6
                                  ? "Password should be more than 6 characters"
                                  : null,
                              maxLines: 1,
                              obscureText: !isPasswordVisiable,
                              style: TextStyleUtils().textFieldStyle,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(right: 10.toWidth()),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xFF4E5053)
                                              .withOpacity(.1))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xFF4E5053)
                                              .withOpacity(.1))),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xFF4E5053)
                                              .withOpacity(.1))),
                                  hintText: 'Password',
                                  hintStyle: TextStyleUtils().hintTextStyle),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisiable = !isPasswordVisiable;
                                  });
                                },
                                icon: Image.asset(
                                  !isPasswordVisiable
                                      ? ImageUtils.eyeDisabled
                                      : ImageUtils.eyeEnabled,
                                  width: 4.9.toImage(),
                                  height: 4.9.toImage(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                            left: 5.8.toWidth(),
                            right: 5.8.toWidth(),
                            top: 2.toHeight()),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ForgotPassword1()));
                          },
                          child: Text(
                            '¿Olvido Contraseña?',
                            style: TextStyleUtils().greySmallMedium,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.2.toHeight(),
                      ),
                      PurpleButton(
                        buttonText: 'Ingresar',
                        horizontalMargin: 5.8.toWidth(),
                        onButtonPressed: () {

                          apiService.loginCustomer(username, password)
                              .then((ret) => {
                                    if (ret != null) {
                                      print("Success"),
                                      print(ret.data.toJson()),
                                    },
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:   MainView())),
                                  });
                        },
                        textStyle: TextStyleUtils().buttonTextStyle,
                        isBusy: false,
                      ),
                      SizedBox(
                        height: 2.8.toHeight(),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(
                            left: 5.8.toWidth(),
                            right: 5.8.toWidth(),
                            top: 2.toHeight()),
                        child: Text(
                          'Toca el sensor tácil para ingresar',
                          style: TextStyleUtils().greySmallRegular1,
                        ),
                      ),
                      SizedBox(
                        height: 2.2.toHeight(),
                      ),
                      Image.asset(
                        ImageUtils.fingerPrint,
                        width: 19.5.toImage(),
                        height: 19.5.toImage(),
                      )
                    ],
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
