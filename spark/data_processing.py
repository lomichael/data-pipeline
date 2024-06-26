from pyspark.sql import SparkSession

def main():
    spark = SparkSession.builder.appName("DataProcessing").getOrCreate()
    df = spark.read.csv("data/sample_data.csv", header=True, inferSchema=True)
    df.printSchema()
    df.show()
    # Example transformation: count occurrences of each value in a column
    result = df.groupBy("column_name").count()
    result.show()
    result.write.csv("output/result.csv")
    spark.stop()

if __name__ == "__main__":
    main()

