import 'package:flutter/material.dart';
import 'package:trainer/screens/home/home.dart';

class Check extends StatelessWidget {
  const Check({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff002136),
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
          title: Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
            child: Text("Terms & Policies"),
          ),
        ),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;
  bool flag = false;
  bool show = true;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.blue;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "RISK WARNING WAIVER & RELEASE OF LIABILITY",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff001236)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "This document constitutes a risk warning and acknowledgment waiver release and disclaimer In consideration of being permitted to participate in an Reecor Training Program, you agree to the following:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "1.ASSUMPTION OF RISK",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                """During your Training Program purchased from Reecor LLC(Reecor), every effort will be made to ensure your safety. However as with any exercise the program, there are risks including personal injury and death. Risks may include but not be limited to Increased heart stress and the chance of musculoskeletal injuries, permanent or temporary disability, death. Before starting any Training Program you should ensure that you understand the risks involved and that those risks also include any specific risks associated with any existing health condition you may already have. In volunteering for this program and signing this Waiver you acknowledge that you understand the risks and agree to assume responsibility for these risks and waive any liability for any personal damage.You agree, acknowledge, and understand that the contents of this Waiver constitute a formal risk warming, and you freely accept to assume all such risks.

You acknowledge, understand, and agree that you have to chosen to participate in the Training Program voluntarily.You can choose not to release, exclude, restrict modify or waive your rights against Reecor by not signing this Waiver however Reecor may refuse to allow you to participate in a Training Program under such circumstances. You understand that this Waiver is only required to be signed once before your first Training Program session.You will not be required to sign future waivers however the waivers and release contained within this Waiver shall apply to all future Training Program sessions until such time that you withdraw or modify your consent.You can withdraw your consent at any time by notifying Reecor in writing.Reecor may refuse to allow you to participate in future Training Program sessions under such circumstances.
""",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "2.RELEASE OF LIABILITY",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            flag
                ? Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """You hereby fully release, and discharge Reecor, its ultimate parent company, subsidiaries its owner’s directors, shareholders employees members and agents (collectively the Reecorparties)from all liability, claims, demands, or causes of action whatsoever arising out of any damage, loss or injury to yourself or your property or your death whilst participating in a Training Program or the full event permitted by the laws of the United Arab
Emirates as applicable in Dubai.The liability of Reecor Parties resulting from your participation in any Training Program about (i) death (i) physical or mental injury (including the aggravation acceleration or recurrence of such injury),(il) the aggravation acceleration or recurrence of any other condition or form of behaviour each of which may result in a disadvantage or harm to you or any third party is expressly excluded.
""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "3.AGREEMENT NOT TO SUE",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """You hereby release, waiver, and covenant not to sue, and further agree to indemnify, defend and hold harmless the Reecor Parties concerning any liability claims demand damages loss or expense,(including court costs and reasonable attorney’s fees) of any kind or nature("Liability”) which may arise out of result from, or relate to your participation in the Training Program.
You further agree that and shall instruct that your heir’s executors,administrators,personal representatives or anyone else claiming on your behalf shall not initiate any lawsuit, cause of action, or claim for damages against the Reecor Parties in respect of any physical or mental injury, disease, loss and damage, loss of employment or economic loss of any description whatsoever and howsoever occasioned suffered or sustained during or as a consequence or incidental to your participation in the Training Program.
""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "4.NO PHYSICAL INFIRMITIES",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """You agree and warrant that you do not suffer from any medical condition and/or incapacity and/or physical conditions or disability which may Impair you or preclude you from participating in a Training Program.By signing below you accept full responsibility for your health and well-being and you acknowledge, agree, and understand that no responsibility is assumed by Reecor. The Reecor Parties are not responsible for any false representation made by you.""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 16),
                          child: Text(
                            "5.INDEMNITY AGAINST THIRD-PARTY CLAIMS",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """You agree to indemnify, defend and hold harmless the Reecor Parties from any liability which may be Initiated by any person or organization and which may arise directly or indirectly from your participation in a Training Program.""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 16),
                          child: Text(
                            "6.VALIDITY OF AGREEMENT",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """You understand that if you initiate or anyone on your behalf initiates any claim for damages lawsuit or cause of action against the Reecor Parties due to any injury or death as a result of your participation in a Training Program, this Waiver shall and will be used in court""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 16),
                          child: Text(
                            "7.WAIVER OF RIGHTS",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """You understand that if you initiate or anyone on your behalf initiates any claim for damages lawsuit or cause of action against the Reecor Parties due to any injury or death as a result of your participation in a Training Program, this Waiver shall and will be used in court""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 16),
                          child: Text(
                            "8.SEVERABILITY:",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """If any provision of this Waiver shall be deemed illegal, invalid, or unenforceable under the laws of the United Arab Emirates as applicable in Dubai, the waiver shall continue in full force and effect save that such provision shall be deemed to be deleted
""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "9.GOVERNING LAW:",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            """The laws of the United Arab Emirates as applicable in the Emirate of Dubai govern this Waiver
""",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  )
                : Text(""),
            show
                ? TextButton(
                    onPressed: () {
                      setState(() {
                        flag = true;
                        show = false;
                      });
                    },
                    child: Text("See More"),
                  )
                : Text(""),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'I have read and accept terms and conditions',
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: isChecked ? _doSomething : null,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('I Agree'),
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xff002136)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _doSomething() {
    // Do something
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
  }
}
