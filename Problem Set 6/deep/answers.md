# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

This approach avoids overloading the boats with excessive data, but it may result in slower search performance

## Partitioning by Hour

This approach avoids slow search queries by distributing data across specific boats, but it risks overloading a single boat, which may then require transferring its data to another boat.

## Partitioning by Hash Value

This approach avoids overloading the boats with excessive data and ensures faster retrieval of specific data. However, searching for all data may be slower because it requires hashing every value
