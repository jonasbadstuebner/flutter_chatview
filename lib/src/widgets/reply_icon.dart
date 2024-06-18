/*
 * Copyright (c) 2022 Simform Solutions
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
import 'package:flutter/material.dart';

class ReplyIcon extends StatelessWidget {
  const ReplyIcon({
    Key? key,
    required this.scaleValue,
    this.replyIconColor,
  }) : super(key: key);

  /// Represents scale value of icon when user swipes for reply.
  final double scaleValue;

  /// Allow user to set color of icon which is appeared when user swipes for reply.
  final Color? replyIconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.scale(
          scale: scaleValue,
          child: CircleAvatar(
            radius: 14,
            backgroundColor:
                scaleValue == 1.0 ? Colors.grey : Colors.transparent,
            child: Icon(
              Icons.reply_rounded,
              color: replyIconColor ?? Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 25,
          width: 25,
          child: CircularProgressIndicator(
            value: scaleValue,
            backgroundColor: Colors.transparent,
            strokeWidth: 1.5,
            color: replyIconColor ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
