class DigiLockerData {
  String? documentName;
  String? documentType;
  String? documentSize;
  String? documentUploadDate;
  String? parent;
  String? docFormats;
  String? documentURI;
  String? documentDescription;
  String? documentIssuer;
  String? id;
  String? docBytes;

  DigiLockerData(
      {this.documentName,
      this.documentType,
      this.documentSize,
      this.documentUploadDate,
      this.parent,
      this.docFormats,
      this.documentURI,
      this.documentDescription,
      this.documentIssuer,
      this.id,
      this.docBytes});

  DigiLockerData.fromJson(Map<String, dynamic> json) :
    documentName = json['DocumentName'].toString(),
    documentType = json['DocumentType'].toString(),
    documentSize = json['DocumentSize'].toString(),
    documentUploadDate = json['DocumentUploadDate'].toString(),
    parent = json['parent'].toString(),
    docFormats = json['DocFormats'].toString(),
    documentURI = json['DocumentURI'].toString(),
    documentDescription = json['DocumentDescription'].toString(),
    documentIssuer = json['DocumentIssuer'].toString(),
    id = json['id'].toString(),
    docBytes = json['DocBytes'].toString();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DocumentName'] = this.documentName;
    data['DocumentType'] = this.documentType;
    data['DocumentSize'] = this.documentSize;
    data['DocumentUploadDate'] = this.documentUploadDate;
    data['parent'] = this.parent;
    data['DocFormats'] = this.docFormats;
    data['DocumentURI'] = this.documentURI;
    data['DocumentDescription'] = this.documentDescription;
    data['DocumentIssuer'] = this.documentIssuer;
    data['id'] = this.id;
    data['DocBytes'] = this.docBytes;
    return data;
  }
}