#!/usr/bin/python3

"""
Python module for outputting the current time in Japanese formats.

Written by:     Ezra Hulsman
Date & time:    西暦22年1月22日, 午後二時四十七分
"""

import time
import number_to_jap as ntj
import argparse
parser = argparse.ArgumentParser()

parser.add_argument("-s", "--seconds", help="Display seconds", action='store_true')
parser.add_argument("-w", "--weekdays", help="Full weekdays", action='store_true')
parser.add_argument("-d", "--date-nums", help="Display date numbers numerically", action='store_true')
parser.add_argument("-t", "--time-nums", help="Display time numbers numerically", action='store_true')


def num_to_wday(n, full_format):
    full = '曜日'
    weekdays = ['月', '火', '水', '木', '金', '土', '日']
    return weekdays[n] if not full_format else f"{weekdays[n]}{full}"

def get_time(show_seconds: bool=False, full_weekday: bool=False, numerical_date_numbers: bool=False, numerical_time_numbers: bool=False): 

    now = time.localtime()
    date = [now.tm_wday, now.tm_mday, now.tm_mon, now.tm_year, now.tm_hour, now.tm_min, now.tm_sec]

    weekday = num_to_wday(date[0], full_weekday)
    year = f"{ntj.num_to_jap(date[3], numerical_date_numbers)}年"
    month = f"{ntj.num_to_jap(date[2], numerical_date_numbers)}月"
    day = f"{ntj.num_to_jap(date[1], numerical_date_numbers)}日"
    hour = f"{ntj.num_to_jap(date[4], numerical_time_numbers)}時"
    mins = f"{ntj.num_to_jap(date[5], numerical_time_numbers)}分"
    secs = f"{ntj.num_to_jap(date[6], numerical_time_numbers)}秒" if show_seconds else ''

    date_format = f"{weekday}, {year}{month}{day}, {hour}{mins}{secs}"

    return date_format

if __name__ == '__main__':
    args = parser.parse_args()

    print(get_time(args.seconds, args.weekdays, args.date_nums, args.time_nums))