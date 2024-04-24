import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Joy

class MyJoyController(Node):
    def __init__(self):
        super().__init__('my_joy_controller')
        self.subscription = self.create_subscription(
            Joy,
            'joy',
            self.joy_callback,
            10)
        self.subscription  # prevent unused variable warning

    def joy_callback(self, msg):
        # Assuming a standard joystick configuration
        left_stick_x = msg.axes[0]
        left_stick_y = msg.axes[1]
        right_stick_x = msg.axes[2]
        right_stick_y = msg.axes[3]
        # Perform control based on joystick inputs
        # Example: Print the joystick values
        self.get_logger().info("Left Stick X: %f, Left Stick Y: %f, Right Stick X: %f, Right Stick Y: %f" % (
            left_stick_x, left_stick_y, right_stick_x, right_stick_y))

def main(args=None):
    rclpy.init(args=args)
    joy_controller = MyJoyController()
    rclpy.spin(joy_controller)
    joy_controller.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()