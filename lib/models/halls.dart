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