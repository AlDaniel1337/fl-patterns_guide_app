import 'package:flutter/material.dart';

class TopicExtraData extends StatelessWidget {
  
  final List<String> extraData;
   
  const TopicExtraData({
    super.key,
    required this.extraData,
  });
  
  @override
  Widget build(BuildContext context) {

   var diviceSize = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox( height: 20 ),
        ...extraData.map(( data ) => 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox( height: 10 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Icon(Icons.arrow_right, color: Colors.blueAccent),

                  SizedBox(
                    width: diviceSize.width - 70,
                    child: Text(data, 
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
        
        SizedBox( height: 20 ),
      ],
    );
  }
}