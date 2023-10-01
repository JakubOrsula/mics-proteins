rsync -av /home/jakub/git/school/diplomka/proteins/out/artifacts/proteins_jar/proteins.jar protein-jo:/home/ubuntu/protein-search/08_rebuildSeqScanAlgs/proteins-1.0-jar-with-dependencies.jar
rsync -av /home/jakub/git/school/diplomka/proteins/out/artifacts/proteins_jar/proteins.jar protein-jo:/home/ubuntu/protein-search/05_PPP-codes/jars/proteins-1.0.jar
#mvn install:install-file -Dfile=/home/jakub/git/school/diplomka/proteins/src/main/resources/messif-3.0.0-DEVEL.jar -DgroupId=messif -DartifactId=messif -Dversion=3.0.0-DEVEL -Dpackaging=jar
#mvn install:install-file -Dfile=/home/jakub/git/school/diplomka/proteins/src/main/resources/SF_v3-3.0.jar -DgroupId=sf -DartifactId=SF_v3 -Dversion=3.0 -Dpackaging=jar

mvn install:install-file -Dfile=/home/jakub/git/school/diplomka/proteins/external_dependencies/messif-3.0.0-DEVEL.jar \
                         -DgroupId=messif \
                         -DartifactId=messif \
                         -Dversion=3.0.0-DEVEL \
                         -Dpackaging=jar \

mvn install:install-file -Dfile=/home/jakub/git/school/diplomka/proteins/external_dependencies/SF_v3-3.0.jar \
                         -DgroupId=sf \
                         -DartifactId=SF_v3 \
                         -Dversion=3.0 \
                         -Dpackaging=jar \


mvn install:install-file -Dfile=/home/jakub/git/school/diplomka/proteins/src/main/resources/simcloud-1.0.0-DEVEL.jar \
                         -DgroupId=simcloud \
                         -DartifactId=simcloud \
                         -Dversion=1.0.0-DEVEL \
                         -Dpackaging=jar \

mvn install:install-file -Dfile=/home/jakub/git/school/diplomka/proteins/src/main/resources/simcloud-mapdb-1.0.0-DEVEL.jar \
                         -DgroupId=simcloud \
                         -DartifactId=simcloud-mapdb \
                         -Dversion=1.0.0-DEVEL \
                         -Dpackaging=jar \
