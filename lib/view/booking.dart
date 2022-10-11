part of 'pages.dart';

class BookingForm extends StatefulWidget {
  final String arg;
  static const String routeName = "/booking";
  BookingForm(this.arg);

  @override
  State<BookingForm> createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  final _bookKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlNama = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();
  String test = "test";

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlCity.dispose();
    ctrlNama.dispose();
    ctrlPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
        centerTitle: false,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 16, 30, 16),
        child: Form(
            key: _bookKey,
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  controller: ctrlNama,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^{a-z A-Z]+$').hasMatch(value)) {
                  //     return "Enter correct name";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  validator: (value) =>
                      (ctrlNama.text.isEmpty) ? 'Jangan Kosong' : null,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? "Email tidak valid!"
                        : null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  controller: ctrlPhone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'(^(?:[+0]6)?[0-9]{10,12}$)')
                            .hasMatch(value)) {
                      return "Enter correct phone number";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "City",
                      prefixIcon: Icon(Icons.location_city),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  controller: ctrlCity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      (ctrlCity.text.isEmpty) ? 'Jangan Kosong' : null,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_bookKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Booking Success"),
                              content: Text("Nama: " +
                                  ctrlNama.text.toString() +
                                  "\nEmail: " +
                                  ctrlEmail.text.toString() +
                                  "\nPhone: " +
                                  ctrlPhone.text.toString() +
                                  "\nCity: " +
                                  ctrlCity.text.toString()),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil<dynamic>(
                                          context,
                                          MaterialPageRoute<dynamic>(
                                              builder: (context) => HomePage()),
                                          (route) => false);
                                    },
                                    child: Text("OK"))
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Booking Failed!"),
                              content: Text("Please fill all form field"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("OK"))
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Wrap(
                      children: <Widget>[
                        Icon(
                          Icons.save,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Book Now",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
