#!/usr/bin/env python

def print_formatted(x_data, y_data):
	assert len(x_data) == len(y_data)
	for i,(x,y) in enumerate(zip(x_data, y_data)):
		print("\twaypoints[{}].x = {};".format(i, x))
		print("\twaypoints[{}].y = {};".format(i, y))

with open("out.txt") as f:
	data = [line.strip() for elem in f.read().split("---") for line in elem.split("\n")]
	x_data = [float(line.split()[1]) for line in data if "x:" in line]
	y_data = [float(line.split()[1]) for line in data if "y:" in line]
	print_formatted(x_data, y_data)
	

