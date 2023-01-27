import rclpy
import sys
from rclpy.node import Node
from sensor_msgs.msg import CompressedImage
from cv_bridge import CvBridge
import argparse
import cv2
import mediapipe as mp
mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands

class WebcamPublisher(Node):
    def __init__(self, node_name, image_topic, sample_rate):
        super().__init__(node_name)
        self.publisher = self.create_publisher(CompressedImage, image_topic, 10)
        timer_period = 1 / sample_rate
        self.timer = self.create_timer(timer_period, self.timer_callback)
        self.i = 0
        self.im_list = []
        self.bridge = CvBridge()
        self.camera = cv2.VideoCapture(0)

    def timer_callback(self):
        success, frame = self.camera.read()
        if success:
            self.publisher.publish(self.bridge.cv2_to_compressed_imgmsg(frame))
            cv2.imshow('image', frame)
        else: 
            print("Error reading from camera")
            sys.exit()
        cv2.waitKey(1)

def main(args=None):
    print("Capturing Webcam Data...")
    rclpy.init(args=args)


    parser = argparse.ArgumentParser(prog='logi_cam_pub')

    parser.add_argument(
        '--node-name',
        nargs='?',
        default='logi_cam_pub',
        help='node name to be used')

    parser.add_argument(
        '--image-topic',
        nargs='?',
        default='/image_raw',
        help='name of the image topic')

    parser.add_argument(
        '--sample-rate',
        nargs='?',
        default=60,
        type=int,
        help='the sampling rate of the camera')

    options = parser.parse_args(args)

    webcam_publisher = WebcamPublisher(
        node_name=options.node_name,
        image_topic=options.image_topic,
        sample_rate=options.sample_rate)

    rclpy.spin(webcam_publisher)
    print("running cam script in main...")

    rclpy.shutdown()
