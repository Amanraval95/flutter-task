import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(debate_screen());
}

class debate_screen extends StatelessWidget {
  debate_screen({super.key});

  final List<Map<String, String>> dummydata = [
    {"name": "Raj", "comment": "Yes! Secondhand smoke is harmful too."},
    {"name": "Rahul", "comment": "Ban is extreme. Use smoking zones instead."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
    {"name": "Ansh", "comment": "Good idea, but hard to enforce."},
  ];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[800],
          centerTitle: true,
          title: Text(
            "Heatic - Group Debate",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 8,
                  left: 8,
                  bottom: 0,
                ),
                child: SizedBox(
                  width: double.infinity,

                  child: Card(
                    color: Colors.yellow[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Topic:",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Smoking should be banned in all public places.\n",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.mode_comment,
                                color: Colors.green[700],
                              ),
                              SizedBox(width: 12),

                              Icon(Icons.thumb_up, color: Colors.blue[500]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Card(
                    color: Colors.green[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ListView.builder(
                          itemCount: dummydata.length,
                          itemBuilder: (context, index) {
                            final data = dummydata[index];
                            return ListTile(
                              leading: Icon(Icons.person),
                              title: Text("@${data["name"]}"),
                              subtitle: Text(data["comment"] ?? ""),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: Icon(Icons.send_rounded, color: Colors.blue),
                    hintText: "Enter Comment...",
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
