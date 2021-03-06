import 'package:clenic_android/globals.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();

}

class _ProfileState extends State<Profile>{
  String email="";
  String contact="";
void getProfile(){
  for(int i =0;i<Engineerlist.length;i++ ) {
    if(userId==Engineerlist[i].ingenieroId.toString())
      {
        email=Engineerlist[i].correo;
        contact=Engineerlist[i].numeroContacto.toString();
      }

  }


}
  @override
  void initState() {
    super.initState();
    getProfile();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2+30,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 20,
                      spreadRadius: 10,

                    )
                  ],
                  color: Colors.indigo[500],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),

                  )

              ),
              child: Column(

                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Container(

                          height: 105,
                          width: 105,
                          decoration: BoxDecoration(
                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.circular(52.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius:1,
                              )
                            ]

                        ),

                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.blue,
                            child: Text(userPerson.substring(0,1),style: TextStyle(fontSize: 45.0),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only( bottom: 8),
                    child: Text(userPerson, style: TextStyle(color: Colors.white,fontSize: 23, fontWeight: FontWeight.bold  ),),
                  ),
                  Text('Plan Maestro', style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w300),),
        Card(color: Colors.indigo,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 5.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 5.0,),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 15.0, color: Colors.grey,),
                ),
                SizedBox(height: 5.0,),
                Text(
                  usermail ,
                  style: TextStyle(fontSize: 17.0, color: Colors.white,),
                ),
                SizedBox(height: 5.0,),
                Text(
                  "Numero de contacto",
                  style: TextStyle(fontSize: 15.0, color: Colors.grey,),
                ),
                SizedBox(height: 5.0,),
                Text(
                  userphone,
                  style: TextStyle(fontSize: 17.0, color: Colors.white,),
                ),
                SizedBox(height: 5.0,),
                Text(
                  "Cantidad de ingenieros",
                  style: TextStyle(fontSize: 15.0, color: Colors.grey,),
                ),
                SizedBox(height: 5.0,),
                Text(
                  Engineerlist.length.toString(),
                  style: TextStyle(fontSize: 17.0, color: Colors.white,),
                ),
                SizedBox(height: 5.0,),
                Text(
                  "Fecha de renovación",
                  style: TextStyle(fontSize: 15.0, color: Colors.grey,),
                ),
                SizedBox(height: 5.0,),
                Text(
                  "09 de julio del 2020",
                  style: TextStyle(fontSize: 17.0, color: Colors.white,),
                ),

              ],
            ),
          ),
        ),
                ],
              ),

            ),//Datos del cliente
            Container(
              padding: EdgeInsets.only(top: 30, right: 34, left: 34),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(

                          height: 90,
                          width: 135,
                          decoration: BoxDecoration(

                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius:6,
                                    blurRadius: 4

                                )
                              ]

                          ),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                            child: Column(
                              children: <Widget>[
                                (Icon(Icons.add_circle, color: Colors.white,size: 30,)),

                                Text('Añadir Ingeniero', style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(

                          height: 90,
                          width: 135,
                          decoration: BoxDecoration(

                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius:6,
                                    blurRadius: 4

                                )
                              ]

                          ),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 23.0),
                            child: Column(
                              children: <Widget>[
                                (Icon(Icons.star, color: Colors.white,size: 30,)),

                                Text('Recomendar', style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold ),
                                )
                              ],
                            ),
                          ),
                        ),






                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(

                          height: 90,
                          width: 135,
                          decoration: BoxDecoration(

                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius:6,
                                    blurRadius: 4

                                )
                              ]

                          ),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 18.0),
                            child: Column(
                              children: <Widget>[
                                (Icon(Icons.edit, color: Colors.white,size: 30,)),

                                Text('Editar datos', style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(

                          height: 90,
                          width: 135,
                          decoration: BoxDecoration(

                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius:6,
                                    blurRadius: 4

                                )
                              ]

                          ),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                            child: Column(
                              children: <Widget>[
                                (Icon(Icons.credit_card, color: Colors.white,size: 30,)),

                                Text('Subscripción', style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )//Opciones

          ],
        ),
      ),
    );
  }

}