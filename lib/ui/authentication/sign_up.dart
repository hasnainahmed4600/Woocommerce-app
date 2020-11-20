import 'package:diinsel/ui/authentication/foot_print_setting.dart';
import 'package:diinsel/utils/image_utils.dart';
import 'package:diinsel/utils/text_style_utils.dart';
import 'package:diinsel/utils/extensions.dart';
import 'package:diinsel/view_models/customer.dart';
import 'package:diinsel/widgets/purple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:diinsel/api_service.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  APIService apiService;
  CustomerModel model;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isApiCallProcess = false;

  void initState(){
    apiService = new APIService();
    model = new CustomerModel();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Form(
            key: globalKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 5.8.toWidth(),top: 11.5.toHeight()),
                      child: Text('Dar de Alta',style: TextStyleUtils().darkBigSemiBold,)),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 2.toHeight()),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            print("click flag");
                          },
                          child: Container(
                            width : context.screenWidth()*.33,
                            child: Stack(
                              children: [
                                TextField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                      ),
                                      hintText: '',
                                      hintStyle: TextStyleUtils().hintTextStyle
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(ImageUtils.mexicoIcon,width: 12.toImage(),height: 12.toImage(),),
                                    Text('MX +52',style: TextStyleUtils().darkRegular,),
                                    SizedBox(width: 1.2.toWidth(),),
                                    Image.asset(ImageUtils.downArrow,width: 4.toImage(),height: 4.toImage(),),
                                  ],
                                )
                              ],
                            )
                          ),
                        ),
                        SizedBox(width: 5.toWidth(),),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            maxLines: 1,
                            style: TextStyleUtils().textFieldStyle,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                                ),
                                hintText: '',
                                hintStyle: TextStyleUtils().hintTextStyle
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 1.3.toHeight()),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      style: TextStyleUtils().textFieldStyle,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(right: 10.toWidth()),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          hintText: 'Correo',
                          hintStyle: TextStyleUtils().hintTextStyle
                      ),
                      onChanged: (val) => {
                        this.model.email = val
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 1.3.toHeight()),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      style: TextStyleUtils().textFieldStyle,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(right: 10.toWidth()),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          hintText: 'Nombre Completo',
                          hintStyle: TextStyleUtils().hintTextStyle
                      ),
                      onChanged: (val) => {
                        this.model.firstName = val
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 1.3.toHeight()),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      style: TextStyleUtils().textFieldStyle,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(right: 10.toWidth()),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          hintText: 'Nombre Completo',
                          hintStyle: TextStyleUtils().hintTextStyle
                      ),
                      onChanged: (val) => {
                        this.model.lastName = val
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 1.3.toHeight()),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      obscureText: true,
                      style: TextStyleUtils().textFieldStyle,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(right: 10.toWidth()),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyleUtils().hintTextStyle
                      ),
                      onChanged: (val) => {
                        this.model.password = val
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.8.toWidth(),right: 5.8.toWidth(),top: 1.3.toHeight()),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      obscureText: true,
                      style: TextStyleUtils().textFieldStyle,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(right: 10.toWidth()),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Color(0xFF4E5053).withOpacity(.1))
                          ),
                          hintText: 'Confirmar password',
                          hintStyle: TextStyleUtils().hintTextStyle
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 5.8.toWidth(),top: 2.5.toHeight()),
                      child: Text("Al tocar 'CREAR', usted acepta los Términos de uso y la Política de privacidad",style: TextStyleUtils().greySmallRegular2,)),
                  SizedBox(height: 23.8.toHeight(),),
                  PurpleButton(
                    horizontalMargin: 5.8.toWidth(),
                    onButtonPressed: (){
                       Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  FootPrintSetting()));
                       print(this.model.password);
                       apiService.createCustomer(model).then((ret) {
                         print(ret);
                         // if (ret) {
                         //   print("success");
                         // }
                       });
                    },
                    textStyle: TextStyleUtils().buttonTextStyle,
                    isBusy: false,
                    buttonText: 'Crear',

                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
