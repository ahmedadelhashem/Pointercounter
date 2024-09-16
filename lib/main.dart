import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oneproject/cubit/counter_cubit.dart';
import 'package:oneproject/cubit/counter_state.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CounterCubit(),
//       child: MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()),
    );
  }
}

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Points Counter'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 32, letterSpacing: 1, wordSpacing: 2),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamApoint}',
                        style: TextStyle(fontSize: 150),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            // shadowColor: Color.fromARGB(0, 0, 0, 0)
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            //  maximumSize: Size(150, 50),
                            backgroundColor: Colors.orange,
                            // shadowColor: Color.fromARGB(0, 0, 0, 0)
                          ),
                          onPressed: () {
                           BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            // shadowColor: Color.fromARGB(0, 0, 0, 0)
                          ),
                          onPressed: () {
                         BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                      height: 350,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                      )),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 32, letterSpacing: 1, wordSpacing: 2),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBpoint}',
                        style: TextStyle(fontSize: 150),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            // shadowColor: Color.fromARGB(0, 0, 0, 0)
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            //  maximumSize: Size(150, 50),
                            backgroundColor: Colors.orange,
                            // shadowColor: Color.fromARGB(0, 0, 0, 0)
                          ),
                          onPressed: () {
                             BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            // shadowColor: Color.fromARGB(0, 0, 0, 0)
                          ),
                          onPressed: () {
                             BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      // shadowColor: Color.fromARGB(0, 0, 0, 0)
                    ),
                    onPressed: () {
                     BlocProvider.of<CounterCubit>(context).team(team: 'A');
                     BlocProvider.of<CounterCubit>(context).team(team: 'B');
                       },
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}

/* 
class MyApp extends StatelessWidget {
   MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            child:
             Text('ahmed'),),
          Container(
            height: 150,
            width: 150,
             child:
             Text("adel") ,)
        ],
      ),
    ),
  );
  }
}

 */
/* class MyApp extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image(image: NetworkImage('images/birthdat.png'),)),
    );
  }
} */
/* 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      backgroundColor:const Color(0xFF2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
         const CircleAvatar(
            radius: 100,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 95,
              backgroundImage:AssetImage("images/aaa.png"),),
          ),
        const  Text("ahmedadel",style: 
          TextStyle(fontSize: 20,
          color: Colors.white,
          letterSpacing: 2,
          fontFamily: 'Pacifico'
          ),),
        const  Text("FLUTTER DEVELOPER",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
         const  Divider(thickness: 1,height: 50,indent: 50,endIndent: 50,),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            margin: EdgeInsets.all(10),
            child:const ListTile(
              leading: Icon(Icons.phone),title: Text("+02)01007504196"),),
          )
          ,Padding(
            padding:  EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(15) ),
              height: 60,
             
            // padding: EdgeInsets.all(25), 
            // margin: EdgeInsetsGeometry.lerp(10, b, t),
             // color: Colors.white,
              child:const Row(children: [
                Spacer(flex: 1,),
                Icon(Icons.phone,size: 20,),
                Spacer(flex: 1,)
                ,Text("(+02)01007504196",style: TextStyle(fontSize: 20,wordSpacing: 2),),
                Spacer(flex: 3,)
              ],),
            ),
          )
         ,Padding(
            padding:  EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(15) ),
              height: 60,
             
            // padding: EdgeInsets.all(25), 
            // margin: EdgeInsetsGeometry.lerp(10, b, t),
             // color: Colors.white,
              child: const Row(children:[
                Spacer(flex: 1,),
                Icon(Icons.mail,size: 20,),
                Spacer(flex: 1,)
                ,Text("ahmedadela428@fkdj",style: TextStyle(fontSize: 20,wordSpacing: 2),),
                Spacer(flex: 3,)
              ],),
            ),
          )
        ],
        
      ),
    ),
  );
  }


} */