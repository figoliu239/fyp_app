import 'package:flutter/material.dart';
import 'package:fyp_app/foodproduct.dart';
import 'package:fyp_app/pages/detailNutrition.dart';
class DetailedResult extends StatelessWidget {
  // this should become stateful widget which accept a string from searchbar and receive data from database
  @override
  Widget build(BuildContext context) {
    FoodProduct tempfood= FoodProduct(name:"Quick Serve Macaroni",protein: 1,totalFat: 2,totalCarbonhydrates: 12,energy: 20);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(tempfood.name),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 5,
              //clipBehavior: Clip.antiAlias, I am not sure how this work
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                    Radius.circular(8.0)
                ),
              ),
              child: InkWell(
                onTap: () =>Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailedNutrition()
                    )),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/bread.jpg',height: 150,width: 150,),
                    Flexible(
                      child: Card(
                        child: Column(
                          children: [
                            Text("Is this product good for you?"),//temp
                            Row(
                              children: [
                                Text("3 Checks "),//temp
                                Text("2 Cautions"),//temp
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 170,
            width: 380,
            child: InkWell(
              onTap: () =>Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailedNutrition()
                  )),
              child: Card(
                //clipBehavior: Clip.antiAlias,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(8.0)
                  ),
                ),
                child: Column(
                  children: [
                    Text("Nutritional Value"),
                    Text("Calories:"+tempfood.energy.toString()),
                    Text("A bar is here"),
                    Text("Protein:"+tempfood.protein.toString()),
                    Text("A bar is here"),
                    Text("Fat:"+tempfood.totalFat.toString()),
                    Text("A bar is here"),
                    Text("Carbs:"+tempfood.totalCarbonhydrates.toString()),
                    Text("A bar is here"),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  height:180,
                  width: 180,
                  child: InkWell(
                    onTap: () =>Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailedNutrition()
                        )),
                    child: Card(
                      elevation: 5,
                      child: Text("Alternatives"),
                    ),

                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      height:90,
                      width:180,
                      child: InkWell(
                        onTap: () =>Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailedNutrition()
                            )),
                        child: Card(
                          elevation: 5,
                          child: Text("User Rating"),
                        ),
                      ),
                    ),
                    Container(
                      height:90,
                      width:180,
                      child: InkWell(
                        onTap: () =>Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailedNutrition()
                            )),
                        child: Card(
                          elevation: 5,
                          child: Text("Score"),
                        ),
                      ),

                    )
                  ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}

