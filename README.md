# CA1 Integrated Assessment MSc Data Analytics CCT Semester 2
## Paper Title
**Storage Solutions and Data Analytics: RDBMS, Hadoop, and APIs in Neural Networks Contexts**

The chosen topic is storage solutions and Neural Networks, with NN being considered a type of Machine Learning (ML) process known as deep learning (Mishra and Gupta, 2017). The field of Big Data is constantly growing and encompasses a need for efficient data management and processing tools. Two well-known tools for handling and analyzing large datasets are Relational Database Management Systems (RDBMS) and Hadoop. However, the rampant advancement of Machine Learning and Neural Networks, the integration of these data management tools with advanced analytics technologies is the focus of this paper.

## A. Objectives

- Examine the current state of RDBMS, Hadoop, and APIs when used in modeling NN and a CNN.
- Store a 1.6GB dataset in both a RDBMS (MySQL) and Hadoop, and then retrieve the data into a Jupyter Notebook to model a neural network.
- Utilize an API (Keras) to model a convolutional neural network and compare its performance in conjunction with RDBMS and Hadoop.
- Discuss the rationale behind the selection of the NN and CNN model for each scenario.

## B. Conclusions

1. HDFS is more efficient than MySQL in terms of data storage memory usage and data processing.
2. A deep learning API like Keras can be an excellent starting point for non-technical users who wish to model a NN. The significant technical knowledge required to use MySQL or Hadoop highlights Keras as a viable alternative.
3. NNs must be validated; training scores alone are insufficient to determine if a model is adjusted. Validation of accuracy and loss should be conducted and compared with training scores.
4. A NN will generalize better to unseen data if more data is fed into the model. An effective approach to mitigate overfitting is to augment the dataset.
5. Dropout should be implemented and tested when a CNN is overfitted; in this case, it proved helpful in reducing overfitting.

## C. Implementation Steps

1. Extract `people.csv` zipped folder.
2. Increase dataset size by using Jupyter Notebook `1.Increasing_dataset_size.ipynb`.
3. Load the dataset into HDFS and MySQL:
   - **HDFS**:
     - Create a directory and pass the file into it:
       ```
       hadoop fs -mkdir /CA1_S2
       hadoop fs -put ./people_increased.csv /CA1_S2
       ```
   - **MySQL**:
     - Create a table, you can use `Population_data_table_creation.sql` for it. To load the data please use script `2.Importing_1.6GB_CSV_to_MySQL.ipynb`.
4. Run `3.HDFS_Data_to_model_NN.ipynb`, data stored in Hadoop will be used to model a Neural Network.
5. Run `4.MySQL_Data_to_model_NN.ipynb`, data stored in MySQL will be used to model a Neural Network.
6. Run `6.API_Data_to_model_CNN.ipynb`, we are using IMDB Keras dataset to model a Convolutional Neural Network.

---

© sba23021 CCT College
