# Firebase Firestore chat application with Email/Password Authentication

A reactive chat application.

# Features
• Cloud Firestore is a good solution for low-latency database storage.

• FlutterFire provides an easy way to use Firebase packages.

• Firebase provides authentication and security through Rules.

• Creating data access object (DAO) files helps to put Firebase functionalities in one place

# How did we create this application?
Firestore stores data in collections, which are similar to tables in a traditional 
database. They have a name and a list of Documents.
Here is chat application screen shot

![image](https://user-images.githubusercontent.com/20933055/236668453-b7434b4a-4bfd-4851-9335-cbe700a34da9.png)

Now we reactively displaying messages

![image](https://user-images.githubusercontent.com/20933055/236668481-0aab6b9b-525b-41de-ae3f-699d989d532f.png)

Firebase provides user authorization and authentication with the FirebaseAuth
class, which allows you to:
• Create a new user.

• Sign in a user.

• Sign out a user.

• Get data from that user.
For data security we add these rules to firebase firestore rules :
```
rules_version = '2';
service cloud.firestore {
 match /databases/{database}/documents {
 match /{document=**} {
 allow read, write: if request.auth != null; 
 }
 }
}
```

Now we add login screen 

![image](https://user-images.githubusercontent.com/20933055/236668537-09840712-ca49-4c60-96af-0c2aacc9724b.png)


We can show user email:

![image](https://user-images.githubusercontent.com/20933055/236668552-d44da9ee-42b0-423a-851c-e258d1139ee9.png)

and a logout button

![image](https://user-images.githubusercontent.com/20933055/236668571-803bc65d-042c-464d-b095-c7e6f718231b.png)


