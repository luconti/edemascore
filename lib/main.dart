import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app.dart';

void main() {
  setPathUrlStrategy();
  runApp(const App());
}

/**
 * TO UPDATE
 * - Make score sticky
 * - Update edema score result description
 * 
 * 
 * NEW CHANGES
 * - Fixed the "When to Use, Pearls/Pitfalls, Why Use" buttons. They no longer
 *    overlapp on mobile
 * - Expanded Interventions and About the Author pages to fill the entire screen
 * - Remove calculator from the boxed window
 * 
 * 
 * HOW TO UPDATE THE WEBSITE
 * 1) Open the terminal and navigate to the Documents/edema_score folder using
 *    the `cd` command
 * 2) This step is only necessary if Arthur made changes to his code and pushed
 *    them to his GitHub repo. You need to "pull" these changes into your local
 *    computer. First, you need to know the name of arthur's remote repository.
 *    For that, run "git remote -v". You should see a list of outputs similar to
 *    the following: 
 *        github	git@github.com:luconti/edemascore.git (fetch)
 *        github	git@github.com:luconti/edemascore.git (push)
 *        origin	git@github.com:abrantesarthur/edema_calc.git (fetch)
 *        origin	git@github.com:abrantesarthur/edema_calc.git (push)
 *    In this case, for instance, Arthur's remote repository's name is "origin".
 *    After figuring this out, execute "git pull origin master", where 'origin' 
 *    is the name of Arthur's repo (it may be different for you). This command
 *    will pull in the changes and merge them in your local code.
 * 3) Now that you are in the edema_score folder (you can check this by running
 *    the pwd command) and have pulled in the changes from Arthur's repo, open
 *    the folder in a text editor (i.e., Visual Studio Code) that we use to make
 *    changes to the website's code. You do this by executing the command "code ." 
 *        - don't forget to include the "."
 *        - 'code' refers a program that, once executed, opens a folder or file using
 *          visual studio code
 *        - '.' refers to the current folder
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
 * Ai depois de terminar seus updates, da um “git commit” e depois “git push”
O “git commit” salva as suas mudanças 
O “git push” faz upload delas pro seu repositório no GitHub 
Ai quando eu for fazer updates no código, eh só eu rodar “git pull” pra baixar as mudanças no seu repositório 
O “git commit” completo seria 
Git commit -am “message”
“Message” eh você que decide
Mas geralmente você coloca um one-liner descrevendo as mudanças que fez 
Tipo 
Git commit -am “add a new title to the website”

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