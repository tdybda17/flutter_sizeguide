class Request {
  final String gender;
  final String height;
  final String throat;
  final String chest;
  final String waist;
  final String hip;
  final String foot;

  Request({
    this.gender,
    this.height,
    this.throat,
    this.chest,
    this.waist,
    this.hip,
    this.foot,
  });

  String buildParameters() {
    var parameters = '?gender=' + gender + '&height=' + height;
    if(throat != null) {
      parameters += '&throat=' + throat;
    }
    if(chest != null) {
      parameters += '&chest=' + chest;
    }
    if(waist != null) {
      parameters += '&waist=' + waist;
    }
    if(hip != null) {
      parameters += '&hip=' + hip;
    }
    if(foot != null) {
      parameters += '&foot=' + foot;
    }
    return parameters;
  }

}