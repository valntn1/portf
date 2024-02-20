import cv2
from tracker import *

# Create tracker object
tracker = EuclideanDistTracker()

cap = cv2.VideoCapture('/Users/valntn/Documents/Study/Datasets/video/highway.mov')

# Object detection from stable camera
object_detector = cv2.createBackgroundSubtractorMOG2(history=100, varThreshold=60)

while cap.isOpened():
    ret, frame = cap.read()
    height, width, _ = frame.shape
    # Extract region of interest
    roi = frame[220: 710, 650: 1270]

    # ------------------------------------------------------------ 1. Object detection
    mask = object_detector.apply(roi)
    _, mask = cv2.threshold(mask, 254, 255, cv2.THRESH_BINARY)
    contours, _ = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    detections = []
    for cnt in contours:
        # Calculate area and declutter
        area = cv2.contourArea(cnt)
        # cv2.drawContours(roi, [cnt], -1, (0, 255, 0), 2)
        if area < 1200:
            continue
        x, y, w, h = cv2.boundingRect(cnt)
        cv2.rectangle(roi, (x, y), (x + w, y + h), (0, 255, 0), 3)
        detections.append([x, y, w, h])
    print(detections)

    # ------------------------------------------------------------ 2. Object tracking
    boxes_ids = tracker.update(detections)

    for box_id in boxes_ids:
        id: object
        x, y, w, h, id = box_id
        cv2.putText(roi, str(id), (x, y - 15), cv2.FONT_HERSHEY_PLAIN, 1, (255, 0, 0), 2)

    cv2.imshow('Frame', frame)
    # cv2.imshow('Mask', mask)
    # cv2.imshow('roi', roi)
    key = cv2.waitKey(1000)

    if key == 27:
        break

cap.release()
cv2.destroyAllWindows()
