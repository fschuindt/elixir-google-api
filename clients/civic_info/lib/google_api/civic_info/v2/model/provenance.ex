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

defmodule GoogleApi.CivicInfo.V2.Model.Provenance do
  @moduledoc """


  ## Attributes

  - collidedSegmentSource (StreetSegmentList):  Defaults to: `null`.
  - ctclContestUuid (String.t):  Defaults to: `null`.
  - ctclOfficeUuid (String.t):  Defaults to: `null`.
  - datasetId (String.t):  Defaults to: `null`.
  - precinctId (String.t):  Defaults to: `null`.
  - precinctSplitId (String.t):  Defaults to: `null`.
  - tsStreetSegmentId (String.t):  Defaults to: `null`.
  - vip5PrecinctId (String.t):  Defaults to: `null`.
  - vip5StreetSegmentId (String.t):  Defaults to: `null`.
  - vipStreetSegmentId (String.t):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collidedSegmentSource => GoogleApi.CivicInfo.V2.Model.StreetSegmentList.t(),
          :ctclContestUuid => any(),
          :ctclOfficeUuid => any(),
          :datasetId => any(),
          :precinctId => any(),
          :precinctSplitId => any(),
          :tsStreetSegmentId => any(),
          :vip5PrecinctId => any(),
          :vip5StreetSegmentId => any(),
          :vipStreetSegmentId => any()
        }

  field(:collidedSegmentSource, as: GoogleApi.CivicInfo.V2.Model.StreetSegmentList)
  field(:ctclContestUuid)
  field(:ctclOfficeUuid)
  field(:datasetId)
  field(:precinctId)
  field(:precinctSplitId)
  field(:tsStreetSegmentId)
  field(:vip5PrecinctId)
  field(:vip5StreetSegmentId)
  field(:vipStreetSegmentId)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Provenance do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Provenance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Provenance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
