abstract class Car {
  final String color ;
  final String price ;
  final String model ;
  final int num ;

  const Car({required this.color , required this.price , required this.model , required this.num });
}

class Bmw extends Car{
  final double speed ;
  Bmw({required this.speed , required super.color,
       required super.price, required super.model}):super(num : 4);

}

class Toytaa extends Car{

  Toytaa({required super.color, required super.price,
          required super.model }):super(num : 4);

}

main(){
 Bmw x = Bmw(speed: 150.0 , color: "", price: "", model: "");
 Toytaa y = Toytaa(color: "", price: "", model: "");
}