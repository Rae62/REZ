import 'package:flutter/material.dart';
import 'package:rez/models/declarationValues.dart';
import 'package:rez/restaurant/list/advancedDetails.dart';

class OneWidgetPlat extends StatelessWidget {
  // attributs
  final ToDo todo;
  OneWidgetPlat({required this.todo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                    image: NetworkImage(todo.imagePlat),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    todo.city,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text('4.7/5 (214 votes)'),
                ],
              ),
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(255, 239, 113, 90),
                  ),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AdvancedDetails(todo: todo),
          ),
        );
      },
    );
  }
}
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//     Card(
//        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
//        AssetImage(todo.imagePlat),
//        child: ListTile(
//        contentPadding: EdgeInsets.fromLTRB(30, 25, 30, 25),
        
//         title: Text(
//           todo.name,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.grey[800],
//           ),
//         ),
//         subtitle: Text(todo.description),
//         trailing: Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.orange[900],
//         ),
//         onTap: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => DetailDish(todo: todo),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


















 


