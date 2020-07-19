# All Your Queues Belong To Us: Optimizing the human in the loop

## Files
* `All_Your_Queues_DashCon_2020.ipynb` -- Notebook with code and presentation.
* `All_Your_Queues_DashCon_2020.slides.html` -- The slides to present generated from notebook
* `images` -- directory holding, shocker, our images.
* Dockerfile -- File with instructions to build our container
* Makefile -- commands that can be run when executing docker.



## Run Notebook
To run jupyter notebook run the following command:
```sh
$ docker run -i -t  -p 8888:8888 --name dashcon-queues dcq:1.0 notebook
```
The URL for your notebook and security token will print to stdout. Navigate to the URL with your favorite web browser and open up the file *All\_Your\_Queues\_DashCon\_2020.ipynb*. 


## Run Presentation 
To present the slides run the following command:
```sh
$ docker run -i -t -p 8910:8910 --name dashcon-queues dcq:1.0 present 
```

The presentation is available on port 8910.


# Building docker (MISC not for distro)

Building and tagging a new version of the container:
```sh
$ docker build --tag dcq:1.0.0 .
```

When testing remove the named container if you have a new build.
```sh
$ docker rm -f dcq
```
