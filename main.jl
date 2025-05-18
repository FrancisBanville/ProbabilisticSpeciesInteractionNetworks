## Activate project environment
## Creates a list of packages and dependencies with specific versions used
import Pkg; Pkg.activate(".")

Pkg.instantiate()

## Load required packages

# Manipulating variables, data frames and files
import CSV 
using DataFrames 
using JLD2

# Doing statistics and models
using Distributions
using ProgressMeter
using Random
using SparseArrays
using Statistics
using StatsBase

# Making plots
using Plots 
using StatsPlots 

# Analyzing ecological networks
using EcologicalNetworks 

## Load functions
include(joinpath("code", "functions", "accumulate.jl"))
include(joinpath("code", "functions", "merge_networks.jl"))
include(joinpath("code", "functions", "prob_metaweb.jl"))
include(joinpath("code", "functions", "prob_networks.jl"))
include(joinpath("code", "functions", "sample_networks.jl"))
include(joinpath("code", "functions", "spatial_scaling.jl"))
include(joinpath("code", "functions", "spatiotemporal_model.jl"))

# The R script 00_format_data.r can be executed in R to format raw data

## Load Julia scripts
include(joinpath("code", "01_process_data.jl"))
include(joinpath("code", "02_build_prob_networks.jl"))
include(joinpath("code", "03_make_figures.jl"))


