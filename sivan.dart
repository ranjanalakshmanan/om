

class Model
{

  String? image;
  String? text;


  Model(this.image,this.text);
}

List lissss = ModelData.map((e) => Model(e["image"], e["text"])).toList();


var ModelData = [

  {"image":"assets/rr.jpg","text":"amazon"},
  {"image":"assets/pp.jpg","text":"filpkart"},
  {"image":"assets/gg.jpg","text":"meesho"},
  {"image":"assets/nn.jpg","text":"snapdeal"},
  {"image":"assets/gg.jpg","text":"myntra"},
];

