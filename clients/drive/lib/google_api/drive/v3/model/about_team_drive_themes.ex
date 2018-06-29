# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Drive.V3.Model.AboutTeamDriveThemes do
  @moduledoc """


  ## Attributes

  - backgroundImageLink (String.t): A link to this Team Drive theme&#39;s background image. Defaults to: `null`.
  - colorRgb (String.t): The color of this Team Drive theme as an RGB hex string. Defaults to: `null`.
  - id (String.t): The ID of the theme. Defaults to: `null`.
  """

  defstruct [
    :backgroundImageLink,
    :colorRgb,
    :id
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.AboutTeamDriveThemes do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.AboutTeamDriveThemes do
  def encode(value, options) do
    GoogleApi.Drive.V3.Deserializer.serialize_non_nil(value, options)
  end
end