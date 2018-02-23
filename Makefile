# Driver script
# Author: Yue (Tina) Qian
# Date:Dec 13th, 2017
# What it does: the Makefile can help you to run scripts and generate plots, tables and final report of the project.
# 							Also, you can clean all the results produced by the scripts by using the Makefile.
# Usage: After you download/clone the project repository, open your git bash/terminal from the root directory of your project;
#       To run all scripts and geneate a final report: type "make all" (without quotation marks);
#       To clean all results produced by the scripts: type "make clean" (without quotation marks).

# run from top to bottom
all: doc/Report.md

# download dataset from URL
data/data.csv: src/download_data.R
	Rscript src/download_data.R

# summarize dataset
results/simulated_data/summarized_data.csv: data/data.csv src/summarize_data.R
	Rscript src/summarize_data.R

# plot data for visualization
results/final_results/plot_data.png: data/data.csv src/plot_data.R
	Rscript src/plot_data.R

# conduct the analysis
results/final_results/lm_result.csv: data/data.csv src/analysis.R
	Rscript src/analysis.R

# generate final report of the Project
doc/Report.md: data/data.csv results/simulated_data/summarized_data.csv results/final_results/plot_data.png results/final_results/lm_result.csv src/Report.Rmd
	Rscript -e "knitr::knit(input='src/Report.Rmd',output = 'doc/Report.md')"

# clean up intermediate files
clean:
	rm -f data/data.csv
	rm -f results/simulated_data/summarized_data.csv
	rm -f results/final_results/plot_data.png
	rm -f results/final_results/lm_result.csv
	rm -f doc/Report.md
