part of "pages.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = "/homepage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var faker = new Faker();
  bool click = true;
  String hello = "hello";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BookingForm(hello)));
        },
        child: Icon(Icons.book),
      ),
      appBar: AppBar(
        title: Text("Mission 2"),
        centerTitle: false,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.indigo])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: 500,
              height: 200,
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage("https://picsum.photos/id/10/500/200"),
              ),
              
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          Image.network("https://picsum.photos/id/11/100/100"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          Image.network("https://picsum.photos/id/12/100/100"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          Image.network("https://picsum.photos/id/13/100/100"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          Image.network("https://picsum.photos/id/14/100/100"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                faker.lorem.sentence(),
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    "What is Lorem Ipsum? ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Divider(),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Divider(),
                  Text(
                    "Where it come from? ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Divider(),
                  Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "
                    "de Finibus Bonorum et Malorum"
                    " (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "
                    "Lorem ipsum dolor sit amet.."
                    ", comes from a line in section 1.10.32.",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}
