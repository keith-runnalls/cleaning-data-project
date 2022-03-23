# Information about *processed_data.csv*

The tidy data produced by the *run_analysis.R* script is saved as *processed_data.csv*. This file contains 180 observations of 68 variables. There is one observation for each unique combination of activity and subject.

${6}_{activities}\times{30}_{subjects}={180}_{observations}$

The first 2 variables, *activity* and *subject* are categorical grouping variables. The next 33 (columns 3:35) are averages of measured mean kinematic parameters. The last 33 (columns 36:68) are averages of standard deviations of the same kinematic parameters.

${2}_{categorical}+{33}_{continuous}+{33}_{continuous}={68}_{variables}$

The 66 kinematic variables are derived from data that were normalized. These values thus range from [-1:1] and have no units.

## Codebook

Variable names are derived from *features.txt* in the source data set. Names have been prepended with *avg\_* to indicate they are averages of the original variables.

1.  activity
2.  subject
3.  avg_tBodyAcc-mean()-X
4.  avg_tBodyAcc-mean()-Y
5.  avg_tBodyAcc-mean()-Z
6.  avg_tGravityAcc-mean()-X
7.  avg_tGravityAcc-mean()-Y
8.  avg_tGravityAcc-mean()-Z
9.  avg_tBodyAccJerk-mean()-X
10. avg_tBodyAccJerk-mean()-Y
11. avg_tBodyAccJerk-mean()-Z
12. avg_tBodyGyro-mean()-X
13. avg_tBodyGyro-mean()-Y
14. avg_tBodyGyro-mean()-Z
15. avg_tBodyGyroJerk-mean()-X
16. avg_tBodyGyroJerk-mean()-Y
17. avg_tBodyGyroJerk-mean()-Z
18. avg_tBodyAccMag-mean()
19. avg_tGravityAccMag-mean()
20. avg_tBodyAccJerkMag-mean()
21. avg_tBodyGyroMag-mean()
22. avg_tBodyGyroJerkMag-mean()
23. avg_fBodyAcc-mean()-X
24. avg_fBodyAcc-mean()-Y
25. avg_fBodyAcc-mean()-Z
26. avg_fBodyAccJerk-mean()-X
27. avg_fBodyAccJerk-mean()-Y
28. avg_fBodyAccJerk-mean()-Z
29. avg_fBodyGyro-mean()-X
30. avg_fBodyGyro-mean()-Y
31. avg_fBodyGyro-mean()-Z
32. avg_fBodyAccMag-mean()
33. avg_fBodyBodyAccJerkMag-mean()
34. avg_fBodyBodyGyroMag-mean()
35. avg_fBodyBodyGyroJerkMag-mean()
36. avg_tBodyAcc-std()-X
37. avg_tBodyAcc-std()-Y
38. avg_tBodyAcc-std()-Z
39. avg_tGravityAcc-std()-X
40. avg_tGravityAcc-std()-Y
41. avg_tGravityAcc-std()-Z
42. avg_tBodyAccJerk-std()-X
43. avg_tBodyAccJerk-std()-Y
44. avg_tBodyAccJerk-std()-Z
45. avg_tBodyGyro-std()-X
46. avg_tBodyGyro-std()-Y
47. avg_tBodyGyro-std()-Z
48. avg_tBodyGyroJerk-std()-X
49. avg_tBodyGyroJerk-std()-Y
50. avg_tBodyGyroJerk-std()-Z
51. avg_tBodyAccMag-std()
52. avg_tGravityAccMag-std()
53. avg_tBodyAccJerkMag-std()
54. avg_tBodyGyroMag-std()
55. avg_tBodyGyroJerkMag-std()
56. avg_fBodyAcc-std()-X
57. avg_fBodyAcc-std()-Y
58. avg_fBodyAcc-std()-Z
59. avg_fBodyAccJerk-std()-X
60. avg_fBodyAccJerk-std()-Y
61. avg_fBodyAccJerk-std()-Z
62. avg_fBodyGyro-std()-X
63. avg_fBodyGyro-std()-Y
64. avg_fBodyGyro-std()-Z
65. avg_fBodyAccMag-std()
66. avg_fBodyBodyAccJerkMag-std()
67. avg_fBodyBodyGyroMag-std()
68. avg_fBodyBodyGyroJerkMag-std()
