import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class CustomTitle extends StatelessWidget {

  final String title;
  final String subtitle;
  final String smallDescription;
  final String details;
  final String? rules;
  final List<String>? extraData;
   
  const CustomTitle({
    super.key, 
    required this.title,
    required this.subtitle,
    required this.smallDescription,
    required this.details,
    this.rules,
    this.extraData
  });
  
  @override
  Widget build(BuildContext context) {
    
    final diviceSize  = MediaQuery.of(context).size;

    return SizedBox(
      width: diviceSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, 
            style: TextStyle(
              fontSize: 34, 
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple
            ),
          ),
          
          Text(subtitle, 
            style: TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(smallDescription, 
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold,
            ),
          ),
          
          Text(details, 
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          
          SizedBox( height: 8 ),
          
          Text(rules ?? "", 
            style: TextStyle(
              fontSize: 18,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),

          if(extraData != null )
          _ExtraData(extraData: extraData),
          SizedBox( height: 24 ),
          
        ],
      ),
    );
  }
}

class _ExtraData extends StatelessWidget {
  const _ExtraData({
    required this.extraData,
  });

  final List<String>? extraData;

  @override
  Widget build(BuildContext context) {

   var diviceSize = MediaQuery.of(context).size;

    return ScrollableSpace(
      height: 200,
      data: [
        ...extraData!.map(( data ) => 
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
      ],
    );
  }
}