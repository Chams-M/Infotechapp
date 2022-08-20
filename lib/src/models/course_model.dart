class CourseModel{

  String _author,_title,_currencySym;
  double _value,_avgRating;
  int _totalgivenby,_total;



  CourseModel(this._author, this._title , this._avgRating , this._currencySym , this._total ,this._totalgivenby,this._value);

  String get author => _author;

  get title => _title;

}