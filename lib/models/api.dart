// {
// "reviewerID": "A94QU4C90B1AX",
// "reviewerName": "SEAN MASLANKA",
// "helpful": [ 0, 0],
// "overall": 5,
// },

class Row {
  final String reviewerID;
  final String? reviewerName;
  final List<dynamic>? helpful;
  final overall;

  Row(
    {
      this.reviewerID = "12345",
      this.reviewerName,
      this.helpful,
      this.overall
    }
  );

  factory Row.fromJson(Map<String, dynamic> json) {
    return Row(
      reviewerID: json['reviewerID'] as String,
      reviewerName: json['reviewerName'] as String?,
      helpful: json['helpful'] as List<dynamic>?,
      overall: json['overall'],
    );
  }
}

class Rows {
  List<Row>? rows;

  Rows({
    this.rows
  });

  factory Rows.fromList(List apiResponse) {
    return Rows(
      rows: apiResponse.map((e)=> Row.fromJson(e)).toList()
    );
  }
}