#!/usr/bin/env gnuplot

############################################################
# Plot Twist                                               #
############################################################
# author: studersi                                         #
# date:	18.03.15                                           #
# description: create png plot from two-column csv         #
# usage: configure variables and run from terminal         #
############################################################

# config
plotTitle="DaTitle"
xAxisLabel="x-axis"
yAxisLabel="y-axis"
xmin="0"
xmax="2000"
ymin="0"
ymax="2000"

dataFile="data.dat"
dataTitle="dataTitle"
refCurve(x)=2**x
refTitle="refTitle"

outputFile="output.png"

# setup
set terminal png
set datafile separator ','
set output outputFile
set title plotTitle
set xlabel xAxisLabel
set ylabel yAxisLabel
set xrange [xmin:xmax]
set yrange [ymin:ymax]
set logscale xy
set key left top

# plot
plot dataFile with lines title dataTitle, refCurve(x) title refTitle