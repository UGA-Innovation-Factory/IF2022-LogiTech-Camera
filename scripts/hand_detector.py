#!/usr/bin/env python3

# Copyright (c) 2021 Alfi Maulana
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

print("Running hand detector...")

import argparse
import cv2
from cv_bridge.core import CvBridge
import mediapipe as mp
mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import CompressedImage


class HandDetector(Node):

    def __init__(self, **kwargs):
        super().__init__(kwargs.get('node_name', 'hand_detector'))

        self.image_subscription = self.create_subscription(
          CompressedImage, kwargs.get('image_topic', '/image_raw'), self.image_callback, 10)
        self.image_subscription

        self.cv_bridge = CvBridge()
        self.hand = mp_hands.Hands(
            model_complexity=0,
            min_detection_confidence=0.5,
            min_tracking_confidence=0.5)

    def image_callback(self, msg):
        image = self.cv_bridge.compressed_imgmsg_to_cv2(msg)

        results = self.hand.process(image)

        if results.multi_hand_landmarks:
            for hand_landmarks in results.multi_hand_landmarks:
                mp_drawing.draw_landmarks(
                    image,
                    hand_landmarks,
                    mp_hands.HAND_CONNECTIONS,
                    mp_drawing_styles.get_default_hand_landmarks_style(),
                    mp_drawing_styles.get_default_hand_connections_style())

        cv2.imshow('Hand Detector', image)
        if cv2.waitKey(5) & 0xFF == 27:
            rclpy.shutdown()


def main(args=None):
    rclpy.init(args=args)

    parser = argparse.ArgumentParser(prog='hand_detector')

    parser.add_argument(
        '--node-name',
        nargs='?',
        default='hand_detector',
        help='node name to be used')

    parser.add_argument(
        '--image-topic',
        nargs='?',
        default='/image_raw',
        help='name of the image topic')

    options = parser.parse_args(args)

    hand_detector = HandDetector(
        node_name=options.node_name,
        image_topic=options.image_topic)

    rclpy.spin(hand_detector)

    rclpy.shutdown()


if __name__ == '__main__':
    main()
