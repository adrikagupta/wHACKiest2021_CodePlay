class Hall{
  String photo,location,size,phNo;
  int cost,numberOfGuests;
  bool available;
  Hall({String p,String l,String s,String ph,int c,int n,bool a}){
    photo = p;
    location = l;
    size = s;
    phNo = ph;
    cost = c;
    numberOfGuests = n;
    available = a;
  }
}

String link1 = "https://media.weddingz.in/images/20200428162606/white-petals-palace-ground-bangalore-1-400x267.jpg";
String link2 = "https://image.wedmegood.com/resized/800X/uploads/member/480002/1544677163_1544525345_20171230_174135.jpg";
String link3 = "https://image.wedmegood.com/resized/500X/uploads/member/777593/1573558365_Screenshot_5.png";

List<Hall> halls = [Hall(p:link1,l:"location 1",s:"340x230",ph:"123456789",c:10000,n:50,a:true),
                      Hall(p:link2,l:"location 2",s:"540x430",ph:"123536789",c:20000,n:60,a:true),
                      Hall(p:link3,l:"location 3",s:"660x200",ph:"123346373",c:30000,n:65,a:false)];