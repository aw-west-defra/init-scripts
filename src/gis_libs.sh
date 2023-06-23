# Sedona
## requires spark config:
### spark.kryo.registrator org.apache.sedona.core.serde.SedonaKryoRegistrator
### spark.serializer org.apache.spark.serializer.KryoSerializer
### spark.sql.extensions org.apache.sedona.viz.sql.SedonaVizExtensions,org.apache.sedona.sql.SedonaSqlExtensions
DIR=/databricks/jars
mkdir -p $DIR
VERSION="1.4.0"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/datasyslab/geotools-wrapper/1.4.0-28.2/geotools-wrapper-1.4.0-28.2.jar"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/apache/sedona/sedona-spark-shaded-3.0_2.13/$VERSION/sedona-spark-shaded-3.0_2.13-$VERSION.jar"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/apache/sedona/sedona-viz-3.0_2.13/$VERSION/sedona-viz-3.0_2.13-$VERSION.jar"
pip install \
  apache-sedona==$VERSION

# Mosaic
pip install \
  databricks-mosaic
