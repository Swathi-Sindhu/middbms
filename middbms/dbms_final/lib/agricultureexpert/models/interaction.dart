class Interaction{

int _fid;
int _aid;
String _status;



Interaction(this._fid,this._aid,this._status);

 
  

  // get fuctions for variables
  int get fid {
    return _fid;
  }
int get cid {
    return _aid;
  }

  String get status{
    return _status;
  }

  

  // setter functions for the variables
  set fid(int value) {
    this._fid = value;
  }
  set cid(int value) {
    this._aid = value;
  }

set status(String value) {
    this._status = value;
  }

 Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['fid']=_fid;
    map['cid']=_aid;
    map['status']=_status;

    
  
    
    
    return map;
  }

  // function to convert map to user object
  Interaction.fromMapObject(Map<String,dynamic> map) {
    this._fid = map['fid'];
    this._aid= map['cid'];
    this._status=map['status'];
    
     
  
  }
}

