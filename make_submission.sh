#!/bin/bash

OSID="53168"
EXAM_REPORT="OSCP-OS-$OSID-Exam-Report.pdf"
LAB_REPORT="OSCP-OS-$OSID-Lab-Report.pdf"
ZIP_PACKAGE="OSCP-OS-$OSID-Exam-Report.7z"

echo "Generating exam report..."
./generate_report.sh exam/exam_report.md $EXAM_REPORT

echo "Generating lab report..."
./generate_report.sh lab_report.md $LAB_REPORT

echo "Creating 7z package..."
7z a $ZIP_PACKAGE -pOS-$OSID $EXAM_REPORT $LAB_REPORT
