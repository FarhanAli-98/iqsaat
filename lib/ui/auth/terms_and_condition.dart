// @dart=2.9
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';

class TermsAndConditionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBarwithOnlyTitle( context,  'Terms & Conditions',),
  
    
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 12),
                Text(
                  "Terms & Conditions For Incoming Users",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 12),
                Expanded(
                  flex: 10,
                  child: ListView(
                    children: <Widget>[Text(terms)],
                  ),
                ),
                SizedBox(height: 12),
                 Button(
                      buttonText: 'Ok',
                      buttonColor: AppColors.primarycolor,
                      onTap: () {

                      AppRoutes.pop(context);
                      },
                      buttonTextStyle: TextStyles.buttonFontText,
                      widthPercent: 0.8,
                    ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final String terms = '''Terms and conditions
These terms and conditions ("Agreement") set forth the general terms and conditions of your use of the "IQsaat" mobile application ("Mobile Application" or "Service") and any of its related products and services (collectively, "Services"). This Agreement is legally binding between you ("User", "you" or "your") and this Mobile Application developer ("Operator", "we", "us" or "our"). By accessing and using the Mobile Application and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. If you are entering into this Agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this Agreement, in which case the terms "User", "you" or "your" shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this Agreement, you must not accept this Agreement and may not access and use the Mobile Application and Services. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services. This terms and conditions policy was created with the help of the terms and conditions generator.

Accounts and membership
You must be at least 14+ years of age to use the Mobile Application and Services. By using the Mobile Application and Services and by agreeing to this Agreement you warrant and represent that you are at least 18 years of age. If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We may monitor and review new accounts before you may sign in and start using the Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof) if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.

User content
We do not own any data, information or material (collectively, "Content") that you submit in the Mobile Application in the course of using the Service. You shall have sole responsibility for the accuracy, quality, integrity, legality, reliability, appropriateness, and intellectual property ownership or right to use of all submitted Content. We may monitor and review the Content in the Mobile Application submitted or created using our Services by you. You grant us permission to access, copy, distribute, store, transmit, reformat, display and perform the Content of your user account solely as required for the purpose of providing the Services to you. Without limiting any of those representations or warranties, we have the right, though not the obligation, to, in our own sole discretion, refuse or remove any Content that, in our reasonable opinion, violates any of our policies or is in any way harmful or objectionable. You also grant us the license to use, reproduce, adapt, modify, publish or distribute the Content created by you or stored in your user account for commercial, marketing or any similar purpose.

Backups
We perform regular backups of the Content and will do our best to ensure completeness and accuracy of these backups. In the event of the hardware failure or data loss we will restore backups automatically to minimize the impact and downtime.

Links to other resources
Although the Mobile Application and Services may link to other resources (such as websites, mobile applications, etc.), we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked resource, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their resources. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any resource which you access through a link in the Mobile Application and Services. Your linking to any other off-site resources is at your own risk.

Dispute resolution
The formation, interpretation, and performance of this Agreement and any disputes arising out of it shall be governed by the substantive and procedural laws of Pakistan without regard to its rules on conflicts or choice of law and, to the extent applicable, the laws of Pakistan. The exclusive jurisdiction and venue for actions related to the subject matter hereof shall be the courts located in Pakistan, and you hereby submit to the personal jurisdiction of such courts. You hereby waive any right to a jury trial in any proceeding arising out of or related to this Agreement. The United Nations Convention on Contracts for the International Sale of Goods does not apply to this Agreement.

Changes and amendments
We reserve the right to modify this Agreement or its terms relating to the Mobile Application and Services at any time, effective upon posting of an updated version of this Agreement in the Mobile Application. When we do, we will send you an email to notify you. Continued use of the Mobile Application and Services after any such changes shall constitute your consent to such changes.

Acceptance of these terms
You acknowledge that you have read this Agreement and agree to all its terms and conditions. By accessing and using the Mobile Application and Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to access or use the Mobile Application and Services.

Contacting us
If you would like to contact us to understand more about this Agreement or wish to contact us concerning any matter relating to it, you may send an email to IQsaat@gmail.com.

This document was last updated on March 26, 2021 ''';
}
