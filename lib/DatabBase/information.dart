import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:coffee_brewwer_big/services/database.dart';

class info extends StatefulWidget {
  @override
  _infoState createState() => _infoState();
}

class _infoState extends State<info> {
  var txt = "text";
  var name = "loading";
  String integer = "int";
//deleting document function
  deletedocsdata() async {
    CollectionReference Collectionreference =
        FirebaseFirestore.instance.collection("add.buy");
    QuerySnapshot listdocs = await Collectionreference.get();
    listdocs.docs[1].reference.delete();
  }

  //update documents data
  updatedoc_data() async {
    CollectionReference collectionreference =
        await FirebaseFirestore.instance.collection("add.buy");
    QuerySnapshot listdocs = await collectionreference.get();
    await listdocs.docs[0].reference.update({"name": "tokasioqueretu"});
  }

  //data query [retrieve] from database]
  fetchdata() async {
    CollectionReference collection = FirebaseFirestore.instance
        .collection("add.buy"); //reference to collection
    collection.snapshots().listen((bnsnapshotchanges) {
      //referece to changes in collection in order to give realtime response to user
      var collecteddata = bnsnapshotchanges.docs[1]
          .data(); //collected data from documents in collections
      print(collecteddata);
      setState(() {
        integer =
            collecteddata["roll"].toString(); //Used key to get specific value
        name = collecteddata["name"].toString();
      });
    });
  }

//adding data specifically map in collection(which automatically makes a new document for us to store this map in it)
  Add_datatodb() async {
    await FirebaseFirestore.instance
        .collection("add.buy")
        .add({"name": "cayto", "roll": 67});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(integer),
      ),
      body: Column(
        children: [
          FlatButton.icon(
            icon: Icon(Icons.call_received_rounded),
            label: Text("Fetch retrieve data from db"),
            onPressed: () {
              fetchdata();
            },
          ),
          FlatButton.icon(
              onPressed: () {
                Add_datatodb();
                print("bvc");
              },
              label: Text("add data todb"),
              icon: Icon(Icons.add)),
          FlatButton.icon(
            icon: Icon(Icons.delete_rounded),
            label: Text("delete"),
            onPressed: deletedocsdata,
          ),
          FlatButton.icon(
              onPressed: updatedoc_data,
              label: Text("update_data"),
              icon: Icon(Icons.update))
        ],
      ),
    );
    // body: Container(
    //   width: 0,
    //   height: 0,
    //   child: Column(
    //     children: [
    //       StreamBuilder<QuerySnapshot>(
    //         stream:
    //             FirebaseFirestore.instance.collection("add.buy").snapshots(),
    //         builder: (context, snapshot) {
    //           final db_docs_ = snapshot.data.docs;
    //           var bv;
    //           for (bv in db_docs_) {
    //             final name = bv.data()["name"];
    //             final roll = bv.data()["roll"];
    //             // final datas = buildBuildlistview(name, roll, context);

    //             // print(name);

    //           }
    //         },
    //       ),
    //       // TextFormField(
    //       //     controller: txt,
    //       //     decoration: InputDecoration(hintText: "Name"),
    //       //     onChanged: (value) {
    //       //       value = name;
    //       //     }),
    //       // TextFormField(
    //       //     controller: txt,
    //       //     decoration: InputDecoration(hintText: "roll"),
    //       //     onChanged: (rollvalue) {
    //       //       integer = int.parse(rollvalue);
    //       //     }),
    //       // SizedBox(height: 10),
    //       //   RaisedButton(
    //       //       onPressed: () async {
    //       //         await FirebaseFirestore.instance
    //       //             .collection("add.buy")
    //       //             .add({"name": name, "roll": integer});
    //       //         print("nb");
    //       //       },
    //       //       color: Colors.blueAccent)
    //     ],
    //   ),
    // ),
    // );
  }

  // buildBuildlistview(name, roll, BuildContext context) {
  //   return Center(child: Text("m"));
  // }
}
