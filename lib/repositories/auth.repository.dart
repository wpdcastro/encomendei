import 'package:encomendei/interfaces/auth_repository_interface.dart';
import 'package:encomendei/responses/response_builder.dart';
import 'package:encomendei/responses/response_default.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository implements IAuthRepository { 
    final FirebaseAuth firebaseAuth;
    
    AuthRepository(this.firebaseAuth);

    @override
    Future<DefaultResponse> doLoginGoogle() async { 
      try { 
        final GoogleSignIn googleSignIn = GoogleSignIn();
        final GoogleSignInAccount googleSignInAccount = 
          await googleSignIn.signIn();
        final GoogleSignInAuthentication googleSignInAuthentication = 
          await googleSignInAccount.authentication;

        FirebaseUser firebaseUser;

        if (googleSignInAuthentication.accessToken != null) { 
          final AuthCredential credential = GoogleAuthProvider.getCredential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken,
          );

          await firebaseAuth.signInWithCredential(credential).then( (auth) {(
            firebaseUser = auth.user;
          });
        }

        return ResponseBuilder.success<FirebaseUser>(
          object: firebaseUser, message: 'Logout com sucesso');
      } catch (e) {
        return ResponseBuilder.failed(object: e, message: e.toString());
      }
    }

    @override
    Future<DefaultResponse> doLoginEmailPassword
      (String email, String password) async {

        try { 
          await firebaseAuth.signInWithEmailAndPassword
            (email: email.trim(), password: password.trim());

          return ResponseBuilder.success<FirebaseUser>(
            object: await firebaseAuth.currentUser());
          
        } catch(e) { 
          return ResponseBuilder.failed(object: e, message: e.toString());
        } 
    }

    @override
    Future<DefaultResponse> registerEmailPassword
    (String email, String password) async { 

      try { 
        return await firebaseAuth
        .createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim())
        .then(
          (auth) {
            return ResponseBuilder.success<FirebaseUser>(object: auth.user);
          }
        );
      } catch(e) { 
         return ResponseBuilder.failed(object: e, message: e.toString());
      }

    }

    @override
    Future<DefaultResponse> getUser() async { 
      try { 
        return ResponseBuilder.success<FirebaseUser>(
            object: await firebaseAuth.currentUser());
      } catch(e) { 
         return ResponseBuilder.failed(object: e, message: e.toString());
      }
    }

    @override
    Future<DefaultResponse> logOut() async { 
      try {
        await firebaseAuth.signOut(); 
        return ResponseBuilder.success();
      } catch(e) { 
         return ResponseBuilder.failed(object: e, message: e.toString());
      }
    }
}