
class: left middle normal

# Introduction to Machine Learning
___

<br>
DSAA

Albert Ruiz

---
class: center middle section-title-green

## What was the first Machine Learning application?

---
class: normal

## First ML application: *the spam filter*


.center[
  ![spam_or_ham](img/spam_or_ham_h.svg)
]

---
class: center middle section-title-green

## How would you code a spam filter?

---
class: normal

## Traditional approach: *the developer learns*

.center[
  ![spam_filter_traditional_approach](img/spam_filter_traditional_approach.drawio.svg)
]

---
class: normal

## ML approach: *the machine learns*

.center[
  ![spam_filter_ml_approach](img/spam_filter_ml_approach.drawio.svg)
]

---
class: center middle section-title-yellow

# What are we going to learn today?

---
class: normal

## Agenda

1. Introduction (5 min)

    * What is ML?
    * Why ML?

2. End-to-end ML (45 min)

    * Data
    * Processing
    * Feature extraction
    * Modelling
    * Results

3. Hands-on ML (*practice*, 1h)

---
class: center middle section-title-yellow

# Introduction

---
class: normal

## What is ML?

.middle-content[
Machine learning is the field of study that gives computers the *ability to learn* without being *explicitly programmed*.

[Arthur L. Samuel, 1959]
]


---
class: normal

## AI */* ML */*  DL */* DS */* BD

.center[
  ![ai_ml_ds](img/ai_ml_ds.svg)
]

---
class: normal

## ML can help *humans learn*!

Some modern problems are too complex for traditional approaches:

* Problems that require fine-tuning or long list of rules

* Problems with fluctuating data

* Getting insights from large amounts of data


---
class: normal

## A wide range of use cases

* Text classification

* Sentiment analysis

* Summarizing long text

* Data extraction from images

* Fraud detection

* Chatbots

* Client segmentation

* Recommending a product to a client

* Speech recognition

* Forecasting


---
class: center middle section-title-yellow

# Common steps in a ML project

---
class: normal

## The common steps

.center[
  ![common_steps](img/common_steps.svg)
]


---
class: center middle section-title-yellow

# Data

---
class: normal

.left-menu[
#### *Data*
###### Processing
###### Feature extraction
###### Modelling
###### Results
]

.right-content[
  .center[
  ## Structured */* Unstructured
  ]
  
  ![structured_vs_unstructured](img/structured_vs_unstructured.svg)
]


???

Structure data -> highly organized and formatted

---
class: normal

.left-menu[
  #### *Data*
  ###### Processing
  ###### Feature extraction
  ###### Modelling
  ###### Results
]

.right-content[
  .center[
  ## Labelled */* Unlabelled
  ]

  ![spam_or_ham_dataset](img/spam_or_ham_dataset.svg)
]

???

Dataset -> desired solutions

---
class: normal

.left-menu[
  #### *Data*
  ###### Processing
  ###### Feature extraction
  ###### Modelling
  ###### Results
]

.right-content[
  .center[
  ## Categorical */* Quantitative
  ]

  ![spam_or_ham_dataset](img/categorical_quantitative.svg)
]


???

Quantitative variables are any variables where the data represent amounts (e.g. height, weight, or age).

Categorical variables are any variables where the data represent groups. This includes rankings (e.g. finishing places in a race), classifications (e.g. brands of cereal), and binary outcomes (e.g. coin flips).


---
class: normal

.left-menu[
  #### *Data*
  ###### Processing
  ###### Feature extraction
  ###### Modelling
  ###### Results
]

.right-content[
  .center[
  ## Invest more on data

  ![insufficient_data](img/invest_on_data.svg)
  [Microsot article (2001)](https://dl.acm.org/doi/10.3115/1073012.1073017)
  ]

]

???

Microsoft famous paper -> researches showed that very different ML algorithms (including fairly simple ones) performed almost identically well on a complex NLP problem once they were given enough data.

---
class: normal

.left-menu[
  #### *Data*
  ###### Processing
  ###### Feature extraction
  ###### Modelling
  ###### Results
]

.right-content[
  .center[
  ## And use all data!
  ]

  ![use_all_data](img/use_all_data.svg)
]

---
class: normal

.left-menu[
  #### *Data*
  ###### Processing
  ###### Feature extraction
  ###### Modelling
  ###### Results
]

.right-content[
  .center[
  ## Poor quality
  ]

  ![poor_data](img/poor_data.svg)
]


---
class: normal

.left-menu[
#### *Data*
###### Processing
###### Feature extraction
###### Modelling
###### Results
]

.right-content[

  .center[
  ## Use forms to improve quality
  ]


  <br>

  |     Name      |   Surname   |  Sex   |   Birthday   | Birthplace  | Country |      Phone      |
  | :-----------: | :---------: | :----: | :----------: | :---------: | :-----: | :-------------: |
  |      Max      | Rockatasnky |   M    | *10-11-1984* |    Perth    |   AU    | +61 8 6245 2100 |
  |   Immortan    |     Joe     |  *m*   | *01-02-1949* |  Canberra   |   AU    | +61 4 1234 5678 |
  |     James     |   Connor    |   M    |  1985-02-28  | Los Angeles |  *USA*  |    *unknown*    |
  | *Alex Murphy* |             |   M    |    *1979*    |   Detroit   |   US    |      *tbc*      |
  |     John      |   McClane   |   M    |  1969-07-17  | Los Angeles |   US    |  *4242706247*   |
  |     Pete      |  Mitchell   | *MALE* |  1972-10-10  |  San Diego  |   US    |      *tbc*      |

]


---
class: center middle section-title-yellow

# Processing

---
class: normal

.left-menu[
###### Data
#### *Processing*
###### Feature extraction
###### Modelling
###### Results
]

.right-content[

  .center[
  ## Cleansing
  ]

  ![poor_data](img/scrubing.svg)

]

---
class: normal

.left-menu[
###### Data
#### *Processing*
###### Feature extraction
###### Modelling
###### Results
]

.right-content[

  .center[
  ## But... what is exactly cleansing?
  ]

  <br>

  |      Activity       |                           Example                            |
  | :------------------ | :----------------------------------------------------------- |
  | Import              | Retrieve data from DB, files, web scraping, APIs...           |
  | Merge               | Combine data, combine tables by indexes, by column values... |
  | Handle missing data | Remove entries, substitute with similar values...            |
  | Normalize           | Numeric: Rescale values into [0, 1]                          |
  |                     | NLP: Tokenization, Lemmatization, Sentencing...              |
  | Standardize         | Rescale data to have μ = 0 and σ = 1                         |
  | De-duplicate        | Drop duplicates                                              |
  | Verify and enrich   | For dates, check dates follow the calendar and convert types |
  | Export data         | Save in a DB, in a file... (formatting) |

]

---
class: normal

.left-menu[
###### Data
#### *Processing*
###### Feature extraction
###### Modelling
###### Results
]

.right-content[

  .center[
  ## Consider removing non-representative data
  ]

  ![non_representative_data](img/non_representative_data.svg)

]

---
class: normal

.left-menu[
###### Data
#### *Processing*
###### Feature extraction
###### Modelling
###### Results
]

.right-content[

  .center[
  ## Consider removing outliers
  ]

  ![outliers](img/outliers.svg)

]

---
class: center middle section-title-yellow

# Feature extraction

---
class: normal

.left-menu[
###### Data
###### Processing
#### *Feature extraction*
###### Modelling
###### Results
]

.right-content[

  .center[
  ## The bridge
  ]

  ![feature_extraction_bridge](img/feature_extraction_bridge.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
#### *Feature extraction*
###### Modelling
###### Results
]

.right-content[

  .center[
  ## The "bridge" is not as it sounds...
  ]

  ![feature_extraction_roller_coaster](img/feature_extraction_roller_coaster.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
#### *Feature extraction*
###### Modelling
###### Results
]

.right-content[

  .center[
  ## Example: facial recognition
  ]

  ![facial_recognition](img/facial_recognition.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
#### *Feature extraction*
###### Modelling
###### Results
]

.right-content[

  ## Feature extraction applied to natural language

  Natural language text cannot be used in any algorithm as it is. It must be converted to numbers:

  There are several techniques involved

  * Tokenization
  * Lemmatization
  * Stemming
  * Vectorizers:
    * CountVectorizer
    * TfIdfVectorizer

*All these techniques will be reviewed during the hands-on session*.

]




---
class: center middle section-title-yellow

# Modelling

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Supervised learning */* Unsupervised learning
  ]

  ![supervised_unsupervised](img/supervised_unsupervised.svg)

]

---
class: center middle section-title-yellow

# Supervised learning

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Example of supervised learning: *the student*
  ]

  ![student_supervised](img/student_supervised.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Supervised learning pipeline
  ]

  ![supervised_pipeline](img/supervised_pipeline.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Under-fitting */* Robust */* Over-fitting
  ]

  ![over_under_robust](img/over_under_robust.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Some supervised learning algorithms
  ]

   ![three_supervised](img/three_supervised.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Decision Trees
  ]

  ![decision_trees](img/decision_trees.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Support Vector Machines
  ]

  ![svm](img/svm.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Neural networks
  ]

  ![nn](img/nn.svg)

]

---
class: center middle section-title-yellow

# Unsupervised learning

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Example of supervised learning: *clustering video-games clients*
  ]

  ![client_unsupervised](img/client_unsupervised.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Unsupervised learning pipeline
  ]

  ![unsupervised_pipeline](img/unsupervised_pipeline.svg)

]

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
#### *Modelling*
###### Results
]

.right-content[

  .center[
  ## Clustering
  ]

  ![clustering](img/clustering.svg)

]

---
class: center middle section-title-yellow

# Results

---
class: normal

.left-menu[
###### Data
###### Processing
###### Feature extraction
###### Modelling
#### *Results*
]

.right-content[

  .center[
  ## Results
  ]

  ![results](img/results.svg)

]

---
class: center middle section-title-yellow

# Hands-on ML (practice)

---
class: center middle normal

Go to:

https://colab.research.google.com


---
class: center middle section-title-orange

## Questions?
#### (albert.ruizalvarez@zurich.com)

---
class: center middle section-title-dark

## Thank you!