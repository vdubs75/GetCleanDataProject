\name{tidy.data}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
This data describes the mean of triaxial accelerations, angular velocities, and magnitudes measured from the accelerometers from a Samsung Galaxy S smartphone. Measurements appear either in time or frequency domain, denoted with a preceeding t(=time domain) or f(=frequency domain). Axial components of the measurements are denoted with a succeeding "X","Y", or "Z".Labels are descriptive so detailed explanation per variable is not necessary. Accelerations are measured in [g] = m/s^2), velocities are measured in rad/s.}

\format{
  A data frame with 180 observations on the following 68 variables.
  \describe{
\item{\code{testSubjectID}}{a numeric vector describing the test subjects ID. Values from 1-30}
    \item{\code{activity}}{a character vector, describing the 6 possible activity levels of the subject: 
      \describe{
        \item{Walking}
        \item{Walking Upstairs}
        \item{Walking Downstairs}
        \item{Sitting}
        \item{Standing}
        \item{Laying}
        }
    }
    \item{\code{tBodyAccelerationMeanX}}{a numeric vector}
    \item{\code{tBodyAccelerationMeanY}}{a numeric vector}
    \item{\code{tBodyAccelerationMeanZ}}{a numeric vector}
    \item{\code{tGravityAccelerationMeanX}}{a numeric vector}
    \item{\code{tGravityAccelerationMeanY}}{a numeric vector}
    \item{\code{tGravityAccelerationMeanZ}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkMeanX}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkMeanY}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkMeanZ}}{a numeric vector}
    \item{\code{tBodyAngularVelocityMeanX}}{a numeric vector}
    \item{\code{tBodyAngularVelocityMeanY}}{a numeric vector}
    \item{\code{tBodyAngularVelocityMeanZ}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkMeanX}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkMeanY}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkMeanZ}}{a numeric vector}
    \item{\code{tBodyAccelerationMagnitudeMean}}{a numeric vector}
    \item{\code{tGravityAccelerationMagnitudeMean}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkMagnitudeMean}}{a numeric vector}
    \item{\code{tBodyAngularVelocityMagnitudeMean}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkMagnitudeMean}}{a numeric vector}
    \item{\code{fBodyAccelerationMeanX}}{a numeric vector}
    \item{\code{fBodyAccelerationMeanY}}{a numeric vector}
    \item{\code{fBodyAccelerationMeanZ}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkMeanX}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkMeanY}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkMeanZ}}{a numeric vector}
    \item{\code{fBodyAngularVelocityMeanX}}{a numeric vector}
    \item{\code{fBodyAngularVelocityMeanY}}{a numeric vector}
    \item{\code{fBodyAngularVelocityMeanZ}}{a numeric vector}
    \item{\code{fBodyAccelerationMagnitudeMean}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkMagnitudeMean}}{a numeric vector}
    \item{\code{fBodyAngularVelocityMagnitudeMean}}{a numeric vector}
    \item{\code{fBodyAngularVelocityJerkMagnitudeMean}}{a numeric vector}
    \item{\code{tBodyAccelerationStdDeviationX}}{a numeric vector}
    \item{\code{tBodyAccelerationStdDeviationY}}{a numeric vector}
    \item{\code{tBodyAccelerationStdDeviationZ}}{a numeric vector}
    \item{\code{tGravityAccelerationStdDeviationX}}{a numeric vector}
    \item{\code{tGravityAccelerationStdDeviationY}}{a numeric vector}
    \item{\code{tGravityAccelerationStdDeviationZ}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkStdDeviationX}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkStdDeviationY}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkStdDeviationZ}}{a numeric vector}
    \item{\code{tBodyAngularVelocityStdDeviationX}}{a numeric vector}
    \item{\code{tBodyAngularVelocityStdDeviationY}}{a numeric vector}
    \item{\code{tBodyAngularVelocityStdDeviationZ}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkStdDeviationX}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkStdDeviationY}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkStdDeviationZ}}{a numeric vector}
    \item{\code{tBodyAccelerationMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{tGravityAccelerationMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{tBodyAccelerationJerkMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{tBodyAngularVelocityMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{tBodyAngularVelocityJerkMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{fBodyAccelerationStdDeviationX}}{a numeric vector}
    \item{\code{fBodyAccelerationStdDeviationY}}{a numeric vector}
    \item{\code{fBodyAccelerationStdDeviationZ}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkStdDeviationX}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkStdDeviationY}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkStdDeviationZ}}{a numeric vector}
    \item{\code{fBodyAngularVelocityStdDeviationX}}{a numeric vector}
    \item{\code{fBodyAngularVelocityStdDeviationY}}{a numeric vector}
    \item{\code{fBodyAngularVelocityStdDeviationZ}}{a numeric vector}
    \item{\code{fBodyAccelerationMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{fBodyAccelerationJerkMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{fBodyAngularVelocityMagnitudeStdDeviation}}{a numeric vector}
    \item{\code{fBodyAngularVelocityJerkMagnitudeStdDeviation}}{a numeric vector}
  }
}

\examples{
The variable "fBodyAccelerationMeanX" describes the average of the mean body acceleration along the x-axis in frequency domain.
}
