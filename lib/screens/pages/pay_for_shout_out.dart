import 'package:flutter/material.dart';

class CustomDialogss extends StatelessWidget {
  final String title, description, buttonText;

  const CustomDialogss({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    const double padding = 16.0;
    //const double avatarRadius = 40.0;

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: padding,
            right: padding,
          ),
          //margin: EdgeInsets.only(top: avatarRadius),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(padding),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 22,
                  // width: 22,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Send Message',
                        style: TextStyle(color: Colors.indigo),
                      ),
                      FloatingActionButton(
                        //disabledColor: Colors.indigo,
                        // color: Colors.indigo,
                        backgroundColor: Colors.indigo,
                        elevation: 0,

                        onPressed: () {
                          Navigator.of(context).pop(); // To close the dialog
                        },
                        child: const Icon(
                          Icons.close_outlined,
                          size: 20,
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 1,
                color: Colors.indigo,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Send Request'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
