# NNextflow-workflow-pipeline

############Nextflow reading materials
    https://www.nextflow.io/docs/latest/p...
    https://www.nextflow.io/docs/latest/g...
    https://biocorecrg.github.io/ELIXIR_c...
    https://carpentries-incubator.github....
##############################


First install nextflow
   https://www.nextflow.io/docs/latest/p...

mkdir nextflow
cd nextflow/
nano hello.nf


nano hello.nf
ls
hello.nf
cat hello.nf


process sayhell {

"""
echo 'Heloo world!' > /home/kobina/nextflow/file.text

"""
}

workflow {
	sayHello()
}

nextflow run hello.nf

###############then run nextflow

ls
hello.nf work
ls work/
2c
ls work 2c
ls work/2c/274..file.txt
pwd
/home/kobina/nextflow
nano hello.nf
Ctrl S
nextflow run hello.nf
now run nextflow.............
ls
file.txt hello.nf work
cat file.txt
Hello world!
nano hello.nf
cp hello.nf hello2.nf
ls
file.txt hello2.nf hello.nf work
nano hello2.nf


process sayhell {

"""
echo 'Hello subscribers'

"""
}

nextflow run hello3.nf

nextflow run hello2.nf -process.echo


process sayhell {

"""
echo 'Hello world"
"""
}
clear
nextflow run hello2.nf - orcess.echo

cat hello2.nf
process sayHello {
"""
echo "Hello world'
"""
}

workflow {sayHello()
}
clear
cp hello2.nf hellopython.nf
ls
filefile.txt helli.nf hello.nf hellopython.nf work
nano hellopython.nf

process sayhell {

"""
#!/user/bin/python

print('Hello world'

"""
}

which python
/user/bin/python
nano hellopython.nf

nextflow run hellopython.nf -process.echo

Hello world

.........................................................
Nextflow Command in Python

Next flow ---Python Command

mkdir nextflowproject
cd nextflowproject/
nano pythonwork.nf
process helloworld {
"""
#!/user/bin/python
print('heloo world')
"""
}

workflow {

helloworld()

}

nano pythonwork.nf
ls
pythonwork.nf

nextflow run pythonwork.nf -process.echo
NEXTFLOW ~ version 23.04.2
launching 'pythonwork.nf' [hopeful_aryabhata} DSL2 - revision: f12cbc5e4d
executor > local (1)
{bc/f118c5] process > helloworld [100%] 1 of 1
hello world


nano pythonwork.nf

cp pythonwork.nf add.nf
ls
add.nf pythonwork.nf work
nano add.nf
nextflow run add.nf -process.echo
NEXTFLOW ~ version 23.04.2
Lanching 'add.nf' [romantic_miescher] DSL2 ~ revision: 0ce5ce277e
executor > local (1)
[83/cdbeeb] process > helloworld [100%] 1 of 1
6

clear
nano add.nf
nextflow run add.nf -process.echo
NEXTFLOW ~ version 23.04.2
Lanching 'add.nf' [romantic_miescher] DSL2 ~ revision: 0ce5ce277e
executor > local (1)
[83/cdbeeb] process > helloworld [100%] 1 of 1
The result is 2


nano add.nf
nextflow run add.nf -process.echo
NEXTFLOW ~ version 23.04.2
Lanching 'add.nf' [romantic_miescher] DSL2 ~ revision: 0ce5ce277e
executor > local (1)
[83/cdbeeb] process > helloworld [100%] 1 of 1
The result is 6














