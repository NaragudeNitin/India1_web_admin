import 'package:flutter/material.dart';

const EdgeInsetsGeometry defaultPadding = EdgeInsets.all(20);
const EdgeInsetsGeometry padding24 = EdgeInsets.all(24);
const EdgeInsetsGeometry padding16 = EdgeInsets.all(16);
const EdgeInsetsGeometry padding18 = EdgeInsets.all(18);

// const fullWidth = MediaQuery.of(context).size.width;

class AppStrings {
  // side menu bar
  static const String dashBoard = 'Dashboard';
  static const String overview = 'Overview';
  static const String manageApprovals = 'Manage Approvals';
  static const String approv = 'Approvals';
  static const String manageCustomer = 'Manage customers';
  static const String custOverview = 'Customers overview';
  static const String managProd = 'Manage products';
  static const String productsOverview = 'Products overview';
  static const String ind1AtmCenters = 'India 1 ATM centers';
  static const String loan = 'Loan';
  static const String insurance = 'Insurance';
  static const String manageNoti = ' Manage Notifications';
  static const String notifi = 'Notifications';
  static const String manageBanners = "Manage banners";
  static const String banners = 'Banners';
  static const String manageInd1Tm = 'Manage India1 Team';
  static const String ind1Team = 'India1 team';
  static const String assistedMod = 'Assisted Module';
  static const String managePartners = 'Manage Partners';
  static const String externalLinks = 'External Links';
  static const String googleAnalytics = 'Google Analytics';
  static const String loyaltyProgram = 'Loyalty Program';
  static const String loanStatus = 'Loan status';
  static const String addLink = 'Add Link';

  // top bar
  static const String allStates = 'All states';
  static const String allDistrics = ' All districts';
  static const String allTowns = 'All towns';
  static const String allPincodes = 'All picodes';
  static const String allCategories = 'All categories';

  //dashoard screen constants
  static const String customers = 'Customers';
  static const String nameId = 'Name / ID';
  static const String pincodeCity = 'Pincode / City';
  static const String registerdOn = 'Registerd on';
  static const String advithPatil = 'Advith Patil';
  static const String p521120 = '521120';
  static const String date5 = '05 Nov 2022';
  static const String id23900 = 'ID23900';
  static const String banglore = 'Banglore';
  static const String days2 = '2 days ago';

  static const String searchBy = 'Search by Digital ID / Mobile number';

  //popup items
  static const String asdvancefilter = 'Advance Filters';
  static const String applyFilters = 'Apply Filters';
  static const String byRegistration = 'By Registration';
  static const String installAppAndRegi = 'Install apps & register';
  static const String registDateRange = 'Registered date range';
  static const String byStatus = 'By Status';
  static const String allStatus = 'All Status';
  static const String byConverRate = 'By Conversion rate';
  static const String atmToApp = 'ATM to App';
  static const String byDownloads = 'By Downloads';
  static const String allVersions = 'All Versions';
  static const String byCustomerEarPoints = 'By Customer earning Points';
  static const String allWays = 'All Ways';
  static const String byCustomerRedeemingPoints =
      'By Customer Redeeming points';
  static const String byLocation = 'By Location';

  static const String searchResults = 'Search results';
  static const String suspend = 'Suspend';

  //profileDetails
  static const String active = 'Active';
  static const String customerId = 'Customer ID';
  static const String cardNumber = 'Card number';
  static const String usingMode = 'Using mode';
  static const String appVers = 'App (V1.23678)';

  //tab names
  static const String profileDetails = 'Profile details';
  static const String loyalty = 'Loyalty';
  // static const String

  //->personal Details
  static const String personalDetails = 'Personal Details';
  static const String firstName = 'First name';
  static const String lastName = 'Last name';
  static const String mobileNumber = 'Mobile Number';
  static const String alternateNumber = 'AlternateNumber';
  static const String emailId = 'Email Id';
  static const String dateOfBirth = 'Date of birth';
  static const String gender = 'Gender';
  static const String maritalStatus = 'Marital status';

  // ->Rsidential Details
  static const String residentialDetails = 'Residential Details';
  static const String addressLine1 = 'Address line 1';
  static const String addressLine2 = 'Address line 2';
  static const String pincode = 'Pincode';
  static const String city = 'City';
  static const String state = 'State';

  //->Occupation Details
  static const String occupationDetails = 'Occupation Details';
  static const String employmentType = 'Employment type';
  static const String occupation = 'Occupation';
  static const String monthlyIncome = 'Monthly income';
  static const String panNumber = 'PAN number';

  //->Bank accounts
  static const String bankAccounts = 'Bank account(s)';
  static const String account1 = 'Account 1:';
  static const String account2 = 'Account 2:';
  static const String bankName = 'Bank name';
  static const String accountNumber = 'Account number';
  static const String ifscCode = 'IFSC code';
  static const String accountType = 'Account type';

  //-> UPI ID/VPA
  static const String upiIdVpa = 'UPI ID(s) / VPA number(s)';
  static const String upiId = 'UPI ID';
  static const String vpaNumber = 'VPA number';

  // Loyalty Page Strings
  static const String loyaltyPointsSummery = 'Loyalty points Summery';
  static const String balance = "Balance";
  static const String earned = 'Earned';
  static const String redeemed = 'Redeemed';
  static const String allWaysToEarningPoints = 'All ways of earning points';
  static const String allWaysOfRedeemingPoints =
      ' All ways of redeeming points';
  static const String pointsEarned = 'Points earned';
  static const String earnedWay = 'Earned way';
  static const String date = 'Date';
  static const String pointsRedeemed = 'Points redeemed';
  static const String redeemedWay = 'Redeemed Way';
  static const String recharge = 'Recharge';
  static const String cashback = 'Cashback';
  static const String referal = 'Referal';
  static const String registration = 'Regeistration';
  static const String atmTranscation = 'ATM transaction';

  //loan tab Strings
  static const String loanType = 'Loan type';
  static const String appliedOn = 'Applied On';
  static const String loanStatusDateOfAction = 'Loan status / Date of action';
  static const String provider = 'Provider';
  static const String lender = 'Lender';
  static const String searchByLoanType =
      'Search By Loan type / status / provider/ lender';
  static const String appliedDateRange = 'Applied date range';
  static const String personalLoan = 'Personal loan';
  static const String approved = 'Approved';
  static const String pending = 'Pending';
  static const String rejected = 'Rejected';
  // static const String

  //insurance tab Strings
  static const String typePurchasedOn = 'Type / Purchased on';
  static const String status = 'Status';
  static const String premiumAmt = 'Premium Amt';
  static const String renewalPeriod = 'Renewal period';
  static const String personalAccident = 'Personal Accident';
  static const String paid = 'Paid';
  static const String successfull = 'Successfull';
  // static const String

  //Suspending User Screen
  static const String suspendingUser = 'Suspending user';
  static const String chooseAReasonforSus =
      'Choose a reason for suspending the user';
  static const String selectoneOfReas = 'Select one of the reasons';
  static const String additionalComments = 'Additional comments';
  static const String continueToSus = 'Continue to susupend user';
  static const String pleaseNote = 'Please Note:';
  static const String onceSuspended =
      'Once Suspended, user will not have access to his account';
  static const String confirm = 'Confirm';
  // static const String

  //reactivate suspended history
  static const String reactivateSuspHistory =
      'Reactivate / Suspended - History';
  static const String statusPrevious = 'Status (Previous)';
  static const String statusNew = 'Status (New)';
  static const String reasonForActionTaken = 'Reason for action taken';
  static const String changedByOn = 'Chnaged by / Changed on';
  static const String fraudantActivity = 'Fraudulent activity';
  static const String basedOnSoAndSo =
      'Based on so and so source, acc has been deactivated';
  static const String searchByChangedBy = 'Search by Changed by / city';

  //Manage Notifications
  static const String notifications = 'Notifications';
  static const String type = 'Type';
  static const String addNotifications = 'Add notifiactions';
  static const String earnPointsForRegistrationToApp =
      'Earn points for registration to app';
  static const String congratsYouEarnedPoints = 'Congrats! you earned points';
  static const String youEarned10pts =
      'You just earned 10 points for registering to app';

  //--> notification Type
  static const String notificationType =
      'Notification type - $earnPointsForRegistrationToApp';
  static const String language = 'Language';
  static const String english = 'English';
  static const String subject = 'Subject';
  static const String description = 'Description';
  static const String previewBeforeSaving = 'Preview before saving';
  static const String saveChanges = 'Save Changes';
  static const String savedSuccessfully = 'Saved successfully';
  static const String changesHaveBeen =
      'Changes have been made successfully. The details will start showing up for customers';
  static const String ok = 'ok';
  static const String onceDiabled =
      'Once disabled, customers will stop receiving this notification';
  static const String continueTodisable = 'Continue to disable';
  static const String onceEnabled =
      'Once enabled, customers will start receiving this notification';
  static const String continueToEnable = 'Continue to enabe';
  static const String onceDeleted =
      'Once deleted, this notifiction cannot be retrieved';
  static const String continueToDelete = 'Continue to delete';

  //--> notification history
  static const String editNotification = 'Edit Notification';
  static const String changedField = 'Changed field';
  static const String valuePrevious = 'Value (previous)';
  static const String valueNew = 'Value (New)';
  static const String changedBy = 'Changed by';
  static const String changedOn = 'Changed on';
  static const String loanCategory = 'Loan category';
  static const String sureshKumar = 'Suresh Kumar';
  static const String productAdmin = 'Product Admin';

  //--> Add notification
  static const String addNotification = 'Add Notification';
  static const String pleaseNoteThisNoti =
      'Please note this notification will neither add anything new nor change the existing functionality';
  static const String whomToSend = 'Whom to send';
  static const String uploadUsersWhom =
      'Upload users to whom you whish to send notifications';
  static const String downloadTemplete = 'Download templete';
  static const String addImage = 'Add image';
  static const String sizeUpto10Kb = 'Size upto 10kb';
  static const String scheduleNotification = 'Schedule notification';
  static const String activeFrom = 'Active From';
  static const String activeUntill = 'Active untill';
  static const String frequency = 'Frequency';
  static const String time = 'Time';
  static const String save = 'Save';
  static const String delete = 'Delete';

  /////////////// Banners //////////
  static const String banner1 = 'Banner1';
  static const String bannerAspectRatio = 'Banner aspect ratio';
  static const String bannerImage = 'Banner image';
  static const String addNewBanner = 'Add new banner';
  static const String bannerName = 'Banner';
  static const String bannerPlacement = 'Banner placement';
  static const String uploadBannerdetailsinDiffLang =
      'Upload banner details in different languages';
  static const String addLanguage = 'Add language';
  static const String addTextWithImage = 'Add text with image';
  static const String upto1kb = 'Upto 1 kb';
  static const String addredirectionLink = 'Add redirection link';
  static const String preview = 'Preview';
  static const String enable = 'Enable';
  static const String disable = 'Disable';
  static const String addNewRow = 'Add new row';

  //-->> Banner Pop Up texts
  static const String fileSizeCanNot =
      'File size cannot exceed 1 kb. Please upload again';
  static const String onceDisabledLanguageBanner =
      'Once disable language banner will not show up in app for customers';
  static const String onceEnabledLanguageBanner =
      'Once enabled Language banner will start showing up in app';
  static const String onceDeletedLanguageBanner =
      'Once deleted English banner cannot be retrieved';
  static const String allLanguageBannersdisa =
      'All language banner will be disabled. Customers will not see this banner anymore';
  static const String allLanguageBannersEnab =
      'All language banner will be enabled. Customers will start seeing this banner ';
  static const String allLanguageBannersDeleted =
      'All language banners will be deleted. Once done. they cant be retrieved';
  static const String editBanner = 'Edit banner';
  static const String history = 'History';
  static const String overallAndHeader = 'Overall & header fields';
  static const String changed = 'Changed';
  static const String field = 'field';
  static const String value = 'value';
  static const String previous = 'Previous';
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
  // static const String
}
