shell:
	/bin/bash

present:
	/opt/conda/bin/jupyter nbconvert /home/dashcon-user/All_Your_Queues_DashCon_2020.ipynb --to slides --ServePostProcessor.port=8910 --ServePostProcessor.open_in_browser=False --post serve --SlidesExporter.reveal_scroll=True 

notebook:
	/opt/conda/bin/jupyter notebook --notebook-dir=/home/dashcon-user --ip='*' --port=8888 --no-browser
