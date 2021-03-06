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

defmodule GoogleApi.Jobs.V2.Model.HistogramFacets do
  @moduledoc """
  Input only.  Histogram facets to be specified in SearchJobsRequest.

  ## Attributes

  - compensationHistogramFacets ([CompensationHistogramRequest]): Optional.  Specifies compensation field-based histogram requests. Duplicate values of CompensationHistogramRequest.type are not allowed. Defaults to: `null`.
  - customAttributeHistogramFacets ([CustomAttributeHistogramRequest]): Optional.  Specifies the custom attributes histogram requests. Duplicate values of CustomAttributeHistogramRequest.key are not allowed. Defaults to: `null`.
  - simpleHistogramFacets ([String.t]): Optional. Specifies the simple type of histogram facets, for example, &#x60;COMPANY_SIZE&#x60;, &#x60;EMPLOYMENT_TYPE&#x60; etc. This field is equivalent to GetHistogramRequest. Defaults to: `null`.
    - Enum - one of 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compensationHistogramFacets =>
            list(GoogleApi.Jobs.V2.Model.CompensationHistogramRequest.t()),
          :customAttributeHistogramFacets =>
            list(GoogleApi.Jobs.V2.Model.CustomAttributeHistogramRequest.t()),
          :simpleHistogramFacets => list(any())
        }

  field(
    :compensationHistogramFacets,
    as: GoogleApi.Jobs.V2.Model.CompensationHistogramRequest,
    type: :list
  )

  field(
    :customAttributeHistogramFacets,
    as: GoogleApi.Jobs.V2.Model.CustomAttributeHistogramRequest,
    type: :list
  )

  field(:simpleHistogramFacets, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.HistogramFacets do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.HistogramFacets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.HistogramFacets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
