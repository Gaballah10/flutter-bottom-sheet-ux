import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/app_bar.dart';
import '../widgets/post_comment_dialog.dart';
import 'bloc/user_bloc.dart';
import 'bloc/user_event.dart';
import 'bloc/user_state.dart';

class PostDetailsPage extends StatefulWidget {
  const PostDetailsPage({super.key});

  @override
  State<PostDetailsPage> createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {
  @override
  void initState() {
    super.initState();

    context.read<UserBloc>().add(LoadUserComments());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustomized("post", "assets/images/user_profile_image.png"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/user_desktop_post_image.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: postTitle(context),
            ),
            postDescription(),
          ],
        ),
      ),
    );
  }
}

/*Widget postTitle(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "✨ Focus. Create. Achieve. ✨",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),

      BlocBuilder<UserBloc, UserState>(
        builder: (context, state)  {
          if (state is UserLoaded) {
            return GestureDetector(
              onTap: () {
                postCommentsDialog(context , state.comments );
              },

              child: Stack(
                children: [
                  Positioned(
                    child: SvgPicture.asset("assets/icons/ic_comments.svg"),
                  ),
                  Positioned(
                    top: -2,
                    left: 12,
                    child: SvgPicture.asset(
                      "assets/icons/ic_notify_indication.svg",
                      width: 11,
                      height: 11,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    ],
  );
}*/

Widget postTitle(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            '✨ Focus. Create. Achieve. ✨',
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            speed: const Duration(milliseconds: 50),
          ),
        ],
        totalRepeatCount: 1,
      ),

      BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoaded) {
            return GestureDetector(
              onTap: () {
                postCommentsDialog(context, state.comments);
              },
              child: Stack(
                children: [
                  SvgPicture.asset("assets/icons/ic_comments.svg"),
                  Positioned(
                    top: -2,
                    left: 12,
                    child: SvgPicture.asset(
                      "assets/icons/ic_notify_indication.svg",
                      width: 11,
                      height: 11,
                    ),
                  ),
                ],
              ),
            );
          } else if (state is UserLoading) {
            // show a small loader or placeholder
            return const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          } else {
            // default fallback (no comments yet, or error)
            return const SizedBox.shrink();
          }
        },
      ),
    ],
  );
}

Widget postDescription() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 12, color: Colors.black87, height: 1.5),
        children: [
          TextSpan(
            text:
                "Set up a space that fuels productivity and inspires creativity.\n",
          ),
          TextSpan(
            text:
                "This is where ideas come alive, plans turn into action, and work feels like passion.\n\n",
          ),
          TextSpan(
            text: "🔥 Some said it’s an impressive setup.\n",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: "📍 Others asked, “Where’s your office?”\n",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text:
                "😂 And of course, there are always those funny memories — cleaning days, or times when nothing got done at all.\n\n",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
          TextSpan(text: "But that’s the beauty of it — "),
          TextSpan(
            text: "every workspace tells a story.\n\n",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                "💡 What’s one thing in your workspace you can’t live without?",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    ),
  );
}
