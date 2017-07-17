outputBase=/if22/ml2au/AxBenchResults/ErrorAnalysis/
Method=Quantization
#Method=OLSB
OutputPath="${outputBase}${Method}"
[ -e ${OutputPath} ] && rm -rf ${OutputPath}
mkdir -p ${OutputPath}
echo fft
cd /if22/ml2au/AxBenchCPU/axbench/applications/fft/AxSrc
bash CompilAndRun.sh >> ${OutputPath}/FFT.csv
echo blackscholes
cd /if22/ml2au/AxBenchCPU/axbench/applications/blackscholes/AxSrc
bash CompilAndRun.sh >> ${OutputPath}/Blackscholes.csv
echo Alexnet
cd /if22/ml2au/AxBenchCPU/axbench/applications/convolution/AxSrc
bash CompilAndRunAlex.sh >> ${OutputPath}/Alex.csv
echo VGG
cd /if22/ml2au/AxBenchCPU/axbench/applications/convolution/AxSrc
bash CompilAndRunVGG.sh >> ${OutputPath}/VGG.csv
echo inversek2j
cd /if22/ml2au/AxBenchCPU/axbench/applications/inversek2j/AxSrc
bash CompilAndRun.sh >> ${OutputPath}/Inversek2j.csv
echo jmeint
cd /if22/ml2au/AxBenchCPU/axbench/applications/jmeint/AxSrc
bash CompilAndRun.sh >> ${OutputPath}/Jmeint.csv
echo kmeans
cd /if22/ml2au/AxBenchCPU/axbench/applications/kmeans/AxSrc
bash CompilAndRun.sh >> ${OutputPath}/Kmeans.csv
echo Oldsobel
cd /if22/ml2au/AxBenchCPU/axbench/applications/Oldsobel/AxSrc
bash CompilAndRun.sh >> ${OutputPath}/Sobel.csv


