class LoginResponseData {
  LoginResponseData({
      this.id, 
      this.ipAddress, 
      this.username, 
      this.email, 
      this.mobile, 
      this.image, 
      this.balance, 
      this.activationSelector, 
      this.activationCode, 
      this.forgottenPasswordSelector, 
      this.forgottenPasswordCode, 
      this.forgottenPasswordTime, 
      this.rememberSelector, 
      this.rememberCode, 
      this.createdOn, 
      this.lastLogin, 
      this.active, 
      this.company, 
      this.address, 
      this.bonus, 
      this.cashReceived, 
      this.dob, 
      this.countryCode, 
      this.city, 
      this.area, 
      this.street, 
      this.pincode, 
      this.apikey, 
      this.referralCode, 
      this.friendsCode, 
      this.fcmId, 
      this.latitude, 
      this.longitude, 
      this.createdAt,});

  LoginResponseData.fromJson(dynamic json) {
    id = json['id'];
    ipAddress = json['ip_address'];
    username = json['username'];
    email = json['email'];
    mobile = json['mobile'];
    image = json['image'];
    balance = json['balance'];
    activationSelector = json['activation_selector'];
    activationCode = json['activation_code'];
    forgottenPasswordSelector = json['forgotten_password_selector'];
    forgottenPasswordCode = json['forgotten_password_code'];
    forgottenPasswordTime = json['forgotten_password_time'];
    rememberSelector = json['remember_selector'];
    rememberCode = json['remember_code'];
    createdOn = json['created_on'];
    lastLogin = json['last_login'];
    active = json['active'];
    company = json['company'];
    address = json['address'];
    bonus = json['bonus'];
    cashReceived = json['cash_received'];
    dob = json['dob'];
    countryCode = json['country_code'];
    city = json['city'];
    area = json['area'];
    street = json['street'];
    pincode = json['pincode'];
    apikey = json['apikey'];
    referralCode = json['referral_code'];
    friendsCode = json['friends_code'];
    fcmId = json['fcm_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['created_at'];
  }
  String? id;
  String? ipAddress;
  String? username;
  String? email;
  String? mobile;
  String? image;
  String? balance;
  String? activationSelector;
  String? activationCode;
  String? forgottenPasswordSelector;
  String? forgottenPasswordCode;
  String? forgottenPasswordTime;
  String? rememberSelector;
  String? rememberCode;
  String? createdOn;
  String? lastLogin;
  String? active;
  String? company;
  String? address;
  String? bonus;
  String? cashReceived;
  String? dob;
  String? countryCode;
  String? city;
  String? area;
  String? street;
  String? pincode;
  String? apikey;
  String? referralCode;
  String? friendsCode;
  String? fcmId;
  String? latitude;
  String? longitude;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ip_address'] = ipAddress;
    map['username'] = username;
    map['email'] = email;
    map['mobile'] = mobile;
    map['image'] = image;
    map['balance'] = balance;
    map['activation_selector'] = activationSelector;
    map['activation_code'] = activationCode;
    map['forgotten_password_selector'] = forgottenPasswordSelector;
    map['forgotten_password_code'] = forgottenPasswordCode;
    map['forgotten_password_time'] = forgottenPasswordTime;
    map['remember_selector'] = rememberSelector;
    map['remember_code'] = rememberCode;
    map['created_on'] = createdOn;
    map['last_login'] = lastLogin;
    map['active'] = active;
    map['company'] = company;
    map['address'] = address;
    map['bonus'] = bonus;
    map['cash_received'] = cashReceived;
    map['dob'] = dob;
    map['country_code'] = countryCode;
    map['city'] = city;
    map['area'] = area;
    map['street'] = street;
    map['pincode'] = pincode;
    map['apikey'] = apikey;
    map['referral_code'] = referralCode;
    map['friends_code'] = friendsCode;
    map['fcm_id'] = fcmId;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['created_at'] = createdAt;
    return map;
  }

}