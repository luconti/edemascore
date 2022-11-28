import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app.dart';

void main() {
  setPathUrlStrategy();
  runApp(const App());
}

/**
 * DONE
 * 
 * NEED TO TEST
 * - The reseracher sees only Share button. The doctors see only Feedback button.
 * -  Support displaying the patient name in the result
 * -  When the doctor plays around with the input, display score separate from the
 *    original score he sees when visiting the website
 *        - Rely on "final" variables for the score that is displayed statically.
 *            - these get displayed in the original patient's result box
 *        - Rely on normal variables for the score that changes as we use the calculator
 *            - these get reset to the static variables when clickin reset or reloading.
 * -  Display patient's name in the Score description
 * 
 * ARTHUR TODOs
 * -  Display a "reset" button when the user updates the calculator.
 *        - Clicking on it resets the dynamic scores and only displays static box
 * -  When clicking on share, display a popover with the option of inserting the 
 *    patient's name and feedback link
 * -  Make When To Use, Pearls/Pitfalls, Why Use sticky too
 * -  Scroll whole page when mouse is not directly on top of calculator
 * -  update website's icon
 * - 
 * 
 * HOW TO UPDATE THE WEBSITE
 * 1) Open the terminal and navigate to the Documents/edema_score folder using
 *    the `cd` command
 * 2) Once you are in the edema_score folder (you can check this by running the 
 *    pwd command), open the folder in a text editor (i.e., Visual Studio Code)
 *    that we use to make changes to the website's code. You do this by executing
 *    the command "code ." 
 *        - don't forget to include the "."
 *        - code refers a program that, once executed, opens a folder of file using
 *          visual studio code
 *        - . refers to the current folder
 *        - in summary, you are saying "open the current folder in Visual Studio Code"
 * 2) Now, change the website as you wish
 *      - useful commands
 *          - press "Cmd + Shift + F" to search a file by the content you want to update
 *          - press "Cmd + s" to save your modifications to that file
 *          - press "Cmd + z" to undo modifications
 *          - press "Cmd + Shift + z" to redo modifications
 *      - don't forget to alwasy save the files
 * 3) Execute "flutter run" to run the website so you can see your changes
 *      - when you make changes as in step 2, don't forget to open the terminal
 *        where flutter run is executing and press "r" so the website reloads
 * 4) Once you are happy with your changes and want to publish your website, 
 *    if you want to do this in the same tab in the terminal as the one you used 
 *    in step 3, you must first kill the "flutter run" program that is executing.
 *    To do so, simply press "Ctrl + C"
 * 5) Execute "flutter build web" when you are happy with the changes so flutter
 *    rebuilds your website
 * 6) Execute "firebase deploy" after the website is done rebuilding so you firebase
 *    uploads the updated website to edemascore.com
 * 
 * 
 * FLOW
 * 1) Go to Qualtrics, insert the doctor's email somewhere, and generate their
 *    customized feedback link
 * 2) Go to edemascore.com, prefill the patient's score inputs, click to share the
 *    score (i.e., generate a link). This will prompt you for an optional patient's
 *    name and feedback link. Insert the patient's name and the feedback link from qualtrics
 * 3) Go to Qualtrics and send an email to the doctor containing the link to 
 *    edemascore.com that you generated in step 2
 * 4) The doctor receives the email from Qualtrics. They can click on the link to
 *    edemascore.com and to the feedback from from there. In the edemascore.com
 *    website, they can also click on a feedback button that leads to the form
 *    (this link is the same you inserted in step 2)
 * 5) Once the doctor fills out the feedback form, Qualtrics stops emailing them
 *    according to the settings you defined on Qualtrics.
 * 
 */