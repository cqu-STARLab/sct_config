#!/bin/bash

# 设置 rosbag 保存路径
BAG_DIR=/home/orangepi/rosbag2
BAG_NAME=ouster_data_$(date +%Y%m%d_%H%M%S).bag

mkdir -p "$BAG_DIR"

echo "Start recording rosbag..."
echo "Save dir: $BAG_DIR/$BAG_NAME"
echo "Record topics: /ouster/imu /ouster/points"

# 录制 rosbag（无限时间，手动中断）
rosbag record -O "$BAG_DIR/$BAG_NAME" /ouster/imu /ouster/points
