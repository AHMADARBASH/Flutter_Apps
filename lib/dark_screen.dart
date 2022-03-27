import 'package:flutter/material.dart';

class DarkScreen extends StatefulWidget {
  const DarkScreen({Key? key}) : super(key: key);

  @override
  State<DarkScreen> createState() => _DarkScreenState();
}

class _DarkScreenState extends State<DarkScreen> {
  bool passInvisible = true;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF2E3239),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Center(
                            child: Icon(
                          Icons.person,
                          size: 130,
                          color: Colors.white,
                        )),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      const Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF23262A),
                          offset: Offset(4, 4),
                          blurRadius: 5),
                    ],
                    color: Color(0xFF35393F),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                )),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            Expanded(
              flex: 3,
              child: Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                            flex: 10,
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFF23262A),
                                        offset: Offset(4, 4),
                                        blurRadius: 5),
                                    BoxShadow(
                                        color: Color(0xFF35393F),
                                        offset: Offset(-6, -6),
                                        blurRadius: 5),
                                  ]),
                              child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                textInputAction: TextInputAction.next,
                                cursorColor: Colors.white,
                                decoration: const InputDecoration(
                                    focusColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF35393F)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    fillColor: Color(0xFF2E3239),
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    hintText: 'Username',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF2E3239)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)))),
                              ),
                            )),
                        const Expanded(flex: 1, child: SizedBox()),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),
                    Row(
                      children: [
                        const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                            flex: 10,
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFF23262A),
                                        offset: Offset(4, 4),
                                        blurRadius: 5),
                                    BoxShadow(
                                        color: Color(0xFF35393F),
                                        offset: Offset(-6, -6),
                                        blurRadius: 5),
                                  ]),
                              child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                cursorColor: Colors.white,
                                obscureText: passInvisible,
                                decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF35393F)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    fillColor: const Color(0xFF2E3239),
                                    filled: true,
                                    hintText: 'Password',
                                    prefixIcon: passInvisible
                                        ? const Icon(
                                            Icons.lock_outline,
                                            color: Colors.white,
                                          )
                                        : const Icon(
                                            Icons.lock_open_outlined,
                                            color: Colors.white,
                                          ),
                                    suffixIcon: IconButton(
                                        splashColor: Colors.transparent,
                                        icon: passInvisible
                                            ? const Icon(
                                                Icons.visibility_rounded,
                                                color: Colors.white,
                                              )
                                            : const Icon(
                                                Icons.visibility_off_rounded,
                                                color: Colors.white,
                                              ),
                                        onPressed: () {
                                          setState(() {
                                            passInvisible = !passInvisible;
                                          });
                                        }),
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF2E3239)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)))),
                              ),
                            )),
                        const Expanded(flex: 1, child: SizedBox()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Expanded(flex: 5, child: SizedBox()),
                        Expanded(
                            flex: 4,
                            child: TextButton(
                              child: const Text(
                                'forgot password?',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            )),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Row(
                      children: [
                        const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                            flex: 10,
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFF23262A),
                                        offset: Offset(4, 4),
                                        blurRadius: 5),
                                    BoxShadow(
                                        color: Color(0xFF35393F),
                                        offset: Offset(-6, -6),
                                        blurRadius: 5),
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xFF2E3239),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: const Center(
                                          child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 14),
                                        child: Text(
                                          'Log in',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ))),
                                ],
                              ),
                            )),
                        const Expanded(flex: 1, child: SizedBox()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 10,
                                          right: 0,
                                          bottom: 0),
                                      child: Text('don\'t have account?',
                                          style: TextStyle(color: Colors.grey)),
                                    ),
                                    TextButton(
                                      child: const Text(
                                        '  Sign Up',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                color: Colors.grey,
                                height: screenSize.height * 0.001,
                              ),
                            )),
                        const Expanded(
                            flex: 1,
                            child: Center(
                                child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'or',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ))),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Container(
                                color: Colors.grey,
                                height: screenSize.height * 0.001,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                //color: Colors.grey,
                                height: screenSize.height * 0.001,
                              ),
                            )),
                        const Expanded(
                            flex: 1,
                            child: Center(
                                child: Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                'Log in with',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ))),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Container(
                                //color: Colors.grey,
                                height: screenSize.height * 0.001,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF2E3239),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xFF23262A),
                                            offset: Offset(4, 4),
                                            blurRadius: 5),
                                        BoxShadow(
                                            color: Color(0xFF35393F),
                                            offset: Offset(-6, -6),
                                            blurRadius: 5),
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.facebook,
                                          size: 40,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: screenSize.width * 0.3,
                        ),
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF2E3239),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xFF23262A),
                                            offset: Offset(4, 4),
                                            blurRadius: 5),
                                        BoxShadow(
                                            color: Color(0xFF35393F),
                                            offset: Offset(-6, -6),
                                            blurRadius: 5),
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset(
                                          'images/G.png',
                                          width: 35,
                                          height: 35,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
