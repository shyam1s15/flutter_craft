import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_craft/constants/constants.dart';

class WidgetToDisplay extends StatelessWidget {
  const WidgetToDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Switch Button Widget',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: appPadding,
          ),
          /*Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: referalData.length,
              itemBuilder: (context, index) => ReferalInfoDetail(
                info: referalData[index],
              ),
            ),
          )*/
          Expanded(
            child: ToggleAnimatedIconButton(
              toggleItems: ['Item 1', 'Item 2'],
              onPressed: (bool pressed) {
                // Add your onPressed logic here
              },
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(seconds: 1),
              toggleIcon: AnimatedIcons.play_pause,
            ),
          )
        ],
      ),
    );
  }
}

class ToggleAnimatedIconButton extends StatefulWidget {
  final List<String> toggleItems;
  final AnimatedIconData? toggleIcon;
  final Function(bool) onPressed;
  final Duration animationDuration;
  final Curve animationCurve;

  const ToggleAnimatedIconButton(
      {required this.toggleItems,
      this.toggleIcon,
      required this.onPressed,
      this.animationDuration = const Duration(milliseconds: 350),
      this.animationCurve = Curves.bounceIn,
      Key? key})
      : assert(toggleItems.length == 2),
        super(key: key);

  @override
  State<ToggleAnimatedIconButton> createState() =>
      _ToggleAnimatedIconButtonState();
}

class _ToggleAnimatedIconButtonState extends State<ToggleAnimatedIconButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;
  bool state = false;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: widget.animationDuration);

    _animation = CurvedAnimation(
        parent: _animationController, curve: widget.animationCurve);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.indigo,
      label: Row(
        children: [
          Text(!state ? widget.toggleItems[0] : widget.toggleItems[1]),
          widget.toggleIcon != null
              ? AnimatedIcon(icon: widget.toggleIcon!, progress: _animation)
              : Container(),
        ],
      ),
      onPressed: () {
        if (!state) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
        widget.onPressed(state);
        setState(() {
          state = !state;
        });
      },
    );
  }
}


