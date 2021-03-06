# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.IterationResult do
  @moduledoc """
  Information about a single iteration of the training run.

  ## Attributes

  - clusterInfos ([ClusterInfo]): [Beta] Information about top clusters for clustering models. Defaults to: `null`.
  - durationMs (String.t): Time taken to run the iteration in milliseconds. Defaults to: `null`.
  - evalLoss (float()): Loss computed on the eval data at the end of iteration. Defaults to: `null`.
  - index (integer()): Index of the iteration, 0 based. Defaults to: `null`.
  - learnRate (float()): Learn rate used for this iteration. Defaults to: `null`.
  - trainingLoss (float()): Loss computed on the training data at the end of iteration. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterInfos => list(GoogleApi.BigQuery.V2.Model.ClusterInfo.t()),
          :durationMs => any(),
          :evalLoss => any(),
          :index => any(),
          :learnRate => any(),
          :trainingLoss => any()
        }

  field(:clusterInfos, as: GoogleApi.BigQuery.V2.Model.ClusterInfo, type: :list)
  field(:durationMs)
  field(:evalLoss)
  field(:index)
  field(:learnRate)
  field(:trainingLoss)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.IterationResult do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.IterationResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.IterationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
