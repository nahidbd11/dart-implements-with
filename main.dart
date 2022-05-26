void main() {
final n=nahid();
  n.sayhello();
  final nb=nahidboss();
 nb.sayhello();
  nb.newfunc();
  
  final usemix=usemixin();
   print(usemix.countnum());
  usemix.sayage();

}


//this is the interface class or abstract class you say
//interface is while you are not implementing just define funtionality and derived class will override this functionality  or implement this new functionality
//abstract class is while we can define or also implement functionality and derived class can override or implement new fucntionality

class nahid{
  void sayhello()=>{
    print("hello i am nahid")
    
  };
}

class nahidboss implements nahid{

   @override
   void sayhello(){
     print("implementing nahid class by function overriding");
   }
   
  //create new function
  
  void newfunc(){
    print("a new function is implementing from nahidboss");
  }
}



mixin count{
 int countnum()=>1;
}

mixin countage{
  void sayage(){
    print("this is your age");
  }
}


class usemixin with count,countage{
  
  @override
  void sayage(){
    print("overriding countage mixing method");
  }
  //you can override mixin class method or also if you dont want to override you can still use those method
}