% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keras_deep_lstm2.R
\name{keras_deep_lstm2}
\alias{keras_deep_lstm2}
\title{keras deep lstm 2}
\usage{
keras_deep_lstm2(input_dim, embed_dim = 128, seq_len = 50,
  lstm_dim = 32, lstm_drop = 0.2, bidirectional = F,
  hidden_dims = c(32, 32, 32), output_dim = 2,
  output_fun = "softmax")
}
\arguments{
\item{input_dim}{Number of unique vocabluary/tokens}

\item{embed_dim}{Number of word vectors}

\item{seq_len}{Length of the input sequences}

\item{lstm_dim}{Number of lstm neurons (default 32)}

\item{lstm_drop}{default is 2}

\item{bidirectional}{default is F}

\item{hidden_dims}{Number of neurons per layer as vector of integers}

\item{output_dim}{Number of neurons of the output layer}

\item{output_fun}{Output activation function}
}
\value{
keras model
}
\description{
Word embedding + (bidirectional) long short-term memory + Deep dense layer
}
\details{
Taken from https://www.kaggle.com/gidutz/text2score-keras-rnn-word-embedding
}
