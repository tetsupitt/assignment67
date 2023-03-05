labNotes

1. Description
I created a research report by combining five separate parts by using Makefile.
Different people in the team worked on different parts of a report, so I made sure that the report is always most updated based on the revison of each part. 
The final file is mydict.html in order to put a report in the website.

2. How to clone the remote repo and make the .html report
Make sure that all files in the remote repo in the current working directory

git clone git@github.com:tetsupitt/assignment67.git
cd assignment67
make

Once you get the message, make: 'mydict.html' is up to date., 
.html report is the most updated.
Some headers were not converted well in html, so you should manually edit text files by using the text editor.

3. How I created/committed a local git repo 

git init
git add --all
git commit -am "initial commit after finishing assignment 6"
git branch -M main

4. How I pushed all files in my local repo to a remote repo

git remote add origin git@github.com:tetsupitt/assignment67.git
git push -u origin main

