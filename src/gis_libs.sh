# Sedona
## Requires DBR 14 LTS
## requires spark config:
### spark.kryo.registrator org.apache.sedona.core.serde.SedonaKryoRegistrator
### spark.serializer org.apache.spark.serializer.KryoSerializer
### spark.sql.extensions org.apache.sedona.viz.sql.SedonaVizExtensions,org.apache.sedona.sql.SedonaSqlExtensions
DIR=/databricks/jars
SPARK="3.5"
SCALA="2.12"
SEDONA="1.5.1"
GEOTOOLS="1.5.1-28.2"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/datasyslab/geotools-wrapper/$GEOTOOLS/geotools-wrapper-$GEOTOOLS.jar"
wget --no-check-certificate -NP $DIR "https://repo1.maven.org/maven2/org/apache/sedona/sedona-spark-shaded-${SPARK}_${SCALA}/$SEDONA/sedona-spark-shaded-${SPARK}_${SCALA}-$SEDONA.jar"
pip install \
  apache-sedona==$SEDONA \
  geopandas \
  keplergl \
  pydeck

# Mosaic
pip install \
  databricks-mosaic
