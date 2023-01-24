import sys

def main():
    if len(sys.argv) < 3:
        sys.stdout.write("Not enough arguments given")
        exit(1)
    
    icons_d = ['󰁺','󰁻','󰁼','󰁽','󰁾','󰁿','󰂀','󰂁','󰂂','󰁹']
    icons_c = ['󰢜','󰂆','󰂇','󰂈','󰢝','󰂉','󰢞','󰂊','󰂋','󰂅']

    percent = (int(sys.argv[1]) - 1) // 10
    if percent >= 10: percent = 9
    if percent <   0: percent = 0
    charging = int(sys.argv[2])
    
    icon = icons_d[percent] if not charging else icons_c[percent]
        
    sys.stdout.write(f"{icon} {int(sys.argv[1])}%")

if __name__ == '__main__':
    main()
