import 'package:college_companion/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:toast/toast.dart';
import './settings.dart';
import './user_details.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> modules, skills;
  String id, name, course, university, dob, current_avatar;
  int light_purple = 0xFFF39CE2, dark_purple = 0xFF8E00B9;
  double width, height_avatar, height_details, spacing, box_height = 190;

  @override
  Widget build(BuildContext context) {
    modules = UserDetails().getModules();
    skills = UserDetails().getSkills();

    id = UserDetails().getId();
    name = UserDetails().getName();
    course = UserDetails().getCourse();
    university = UserDetails().getUniversity();
    dob = DateFormat("dd, MMM yyyy").format(UserDetails().getDob());
    current_avatar = UserDetails().getCurrentAvatar();

    width = (MediaQuery.of(context).size.width) / 2 - 20 - 10;
    height_avatar = width;
    height_details = 40;
    spacing = (height_avatar - 3 * 40) / 2;

    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          brightness: Brightness.light,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Profile',
              style: TextStyle(fontSize: 50, color: Colors.black)),
          actions: <Widget>[
            Container(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                height: 40,
                width: 40,
                child: new IconButton(
                  icon: Hero(
                    child: new Icon(Icons.settings),
                    tag: "setting",
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    ).then((_) => setState(() {}));
                  },
                  iconSize: 35,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      width: width,
                      height: height_avatar,
                      decoration: BoxDecoration(
                        //  borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(current_avatar),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                                  width: width,
                                  height: height_details,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.lightGreen,
                                          Colors.black12
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                        // has the effect of softening the shadow
                                        spreadRadius: 3.0,
                                        // has the effect of extending the shadow
                                        offset: Offset(
                                          0, // horizontal, move right 10
                                          0, // vertical, move down 10
                                        ),
                                      )
                                    ],
                                  ),
                                  child: Text(
                                    id,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                  )),
                              SizedBox(height: spacing),
                              Container(
                                  padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                                  width: width,
                                  height: height_details,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.lightGreen,
                                          Colors.black12
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                        // has the effect of softening the shadow
                                        spreadRadius: 3.0,
                                        // has the effect of extending the shadow
                                        offset: Offset(
                                          0, // horizontal, move right 10
                                          0, // vertical, move down 10
                                        ),
                                      )
                                    ],
                                  ),
                                  child: Text(
                                    dob,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                  )),
                              SizedBox(height: spacing),
                              Container(
                                  padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                                  width: width,
                                  height: height_details,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.lightGreen,
                                          Colors.black12
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                        // has the effect of softening the shadow
                                        spreadRadius: 3.0,
                                        // has the effect of extending the shadow
                                        offset: Offset(
                                          0, // horizontal, move right 10
                                          0, // vertical, move down 10
                                        ),
                                      )
                                    ],
                                  ),
                                  child: Text(
                                    name,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ))
                            ]))
                  ],
                ),
                SizedBox(height: spacing),
                Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    width: double.infinity,
                    height: height_details,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.lightGreen, Colors.black12],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius:
                          5.0, // has the effect of softening the shadow
                          spreadRadius:
                          3.0, // has the effect of extending the shadow
                          offset: Offset(
                            0, // horizontal, move right 10
                            0, // vertical, move down 10
                          ),
                        )
                      ],
                    ),
                    child: Text(
                      course,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(height: spacing),
                Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    width: double.infinity,
                    height: height_details,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.lightGreen, Colors.black12],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius:
                          5.0, // has the effect of softening the shadow
                          spreadRadius:
                          3.0, // has the effect of extending the shadow
                          offset: Offset(
                            0, // horizontal, move right 10
                            0, // vertical, move down 10
                          ),
                        )
                      ],
                    ),
                    child: Text(
                      university,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(height: spacing),
                Container(
                    height: (modules.length > 3) ? 145 : 100,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.lightGreen, Colors.black12],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius:
                          5.0, // has the effect of softening the shadow
                          spreadRadius:
                          3.0, // has the effect of extending the shadow
                          offset: Offset(
                            0, // horizontal, move right 10
                            0, // vertical, move down 10
                          ),
                        )
                      ],
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Subjects",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                                  child: RawMaterialButton(
                                    highlightColor: Colors.white10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Icon(CustomIcons.edit,
                                        color: Colors.white, size: 20),
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          useRootNavigator: true,
                                          barrierDismissible: false,
                                          builder: (context) =>
                                              editListDialog(
                                                  context,
                                                  setState,
                                                  modules,
                                                  "Subjects"))
                                          .then((_) => setState(() {}));
                                    },
                                  ))
                            ],
                          ),
                          (modules.length == 0)
                              ? Center(
                            child: Text("No subjects Present",
                                style: TextStyle(color: Colors.white54)),
                          )
                              : Expanded(
                            child: GridView.builder(
                              padding: EdgeInsets.fromLTRB(0, 4, 12, 0),
                              scrollDirection: Axis.vertical,
                              itemCount: modules.length,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 3.25,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return Container(
                                    alignment: Alignment.center,
                                    //                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    padding:
                                    EdgeInsets.fromLTRB(3, 3, 3, 3),
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                          modules[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        )));
                              },
                            ),
                          ),
                        ])),
                SizedBox(height: spacing),
                Container(
                    height: (skills.length > 3) ? 145 : 100,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.lightGreen, Colors.black12],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius:
                          5.0, // has the effect of softening the shadow
                          spreadRadius:
                          3.0, // has the effect of extending the shadow
                          offset: Offset(
                            0, // horizontal, move right 10
                            0, // vertical, move down 10
                          ),
                        )
                      ],
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Skills",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                                child: RawMaterialButton(
                                  highlightColor: Colors.white10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(CustomIcons.edit,
                                      color: Colors.white, size: 20),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        useRootNavigator: true,
                                        barrierDismissible: false,
                                        builder: (context) =>
                                            editListDialog(context,
                                                setState, skills, "Skills"))
                                        .then((_) => setState(() {}));
                                  },
                                ),
                              )
                            ],
                          ),
                          (skills.length == 0)
                              ? Center(
                            child: Text(
                              "No Skills present",
                              style: TextStyle(color: Colors.white54),
                            ),
                          )
                              : Expanded(
                            child: GridView.builder(
                              padding: EdgeInsets.fromLTRB(0, 4, 12, 5),
                              scrollDirection: Axis.vertical,
                              itemCount: skills.length,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 3.25,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return Container(
                                    alignment: Alignment.center,
                                    //                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    padding:
                                    EdgeInsets.fromLTRB(3, 3, 3, 3),
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                          skills[index],
                                          style: TextStyle(
                                              color: Colors.black12,
                                              fontSize: 15),
                                        )));
                              },
                            ),
                          ),
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

editListDialog(
    BuildContext context, StateSetter setState, List list, String title) {
  int purple_bg = 0xFFA21FC2;
  List<TextEditingController> _controllers = new List();
  String add_item;
  TextEditingController _add_item_controller = new TextEditingController();
  return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Color(purple_bg),
      child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
                height: 395,
                width: 300,
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 35,
                            height: 35,
                            child: RawMaterialButton(
                              highlightColor: Colors.white10,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios,
                                  color: Colors.white, size: 25),
                            ),
                          ),
                          Text(title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 35,
                            height: 35,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            height: 265,
                            child: ListView.builder(
                                itemCount: list.length,
                                itemBuilder: (_, index) {
                                  _controllers.add(new TextEditingController());
                                  _controllers[index].text = list[index];

                                  return Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20)),
                                      height: 40,
                                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  counterText: "",
                                                  focusColor: Colors.white,
                                                  enabledBorder:
                                                  UnderlineInputBorder(
                                                      borderSide:
                                                      BorderSide.none),
                                                  focusedBorder:
                                                  UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                controller: _controllers[index],
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(purple_bg)),
                                                onTap: () {
                                                  _controllers[index]
                                                      .addListener(() {
                                                    UserDetails().modifyItem(
                                                        title,
                                                        index,
                                                        _controllers[index].text);
                                                  });
                                                },
                                                maxLength: 20,
                                                maxLengthEnforced: true,
                                              ),
                                              width: 150,
                                            ),
                                          ),
                                          SizedBox(
                                            child: RawMaterialButton(
                                              child: Icon(Icons.delete_outline,
                                                  color: Colors.red, size: 20),
                                              onPressed: () {
                                                setState(() {
                                                  UserDetails()
                                                      .deleteItem(title, index);
                                                  list.removeAt(index);
                                                });
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10)),
                                            ),
                                            height: 40,
                                            width: 30,
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 230,
                            height: 50,
                            padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                            child: TextField(
                              controller: _add_item_controller,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white, fontSize: 20),
                              decoration: InputDecoration(
                                counterText: "",
                                hintText: title.compareTo("Subjects") == 0
                                    ? "Subject name"
                                    : "Skill name",
                                hintStyle: TextStyle(color: Colors.white60),
                                contentPadding: EdgeInsets.all(10),
                                focusColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onChanged: (String new_add_module) {
                                setState(() {
                                  add_item = new_add_module;
                                });
                              },
                              maxLength: 20,
                              maxLengthEnforced: true,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: RawMaterialButton(
                              elevation: 10,
                              child: Icon(Icons.add,
                                  color: Color(purple_bg), size: 30),
                              onPressed: () {
                                setState(() {
                                  if (add_item != null &&
                                      list.indexOf(add_item) == -1) {
                                    UserDetails().addItem(title, add_item);
                                    list.insert(0, add_item);
                                    _add_item_controller.text = "";
                                    add_item = null;
                                  } else
                                    Toast.show(
                                        "Please enter new " + title + " name",
                                        context,
                                        gravity: Toast.CENTER,
                                        duration: Toast.LENGTH_SHORT,
                                        backgroundRadius: 10);
                                });
                              },
                            ),
                            height: 40,
                            width: 40,
                          )
                        ],
                      )
                    ]));
          }));
}