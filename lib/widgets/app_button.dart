import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final bool? isBorder;
  final bool? isLoading;

  const AppButton({
    super.key,
    required this.text,
    this.onTap,
    this.isBorder,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isBorder == true ? null : AppColor.primary,
          border: isBorder == true ? Border.all(color: AppColor.primary) : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: isLoading == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                  ],
                )
              : Center(
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                        color:
                            isBorder == true ? AppColor.primary : Colors.white,
                        // fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
        ),
      ),
    );
  }
}
