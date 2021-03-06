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

defmodule GoogleApi.DFAReporting.V28.Model.FloodlightConfiguration do
  @moduledoc """
  Contains properties of a Floodlight configuration.

  ## Attributes

  - accountId (String.t): Account ID of this floodlight configuration. This is a read-only field that can be left blank. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of the parent advertiser of this floodlight configuration. Defaults to: `null`.
  - advertiserIdDimensionValue (DimensionValue): Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. Defaults to: `null`.
  - analyticsDataSharingEnabled (boolean()): Whether advertiser data is shared with Google Analytics. Defaults to: `null`.
  - exposureToConversionEnabled (boolean()): Whether the exposure-to-conversion report is enabled. This report shows detailed pathway information on up to 10 of the most recent ad exposures seen by a user before converting. Defaults to: `null`.
  - firstDayOfWeek (String.t): Day that will be counted as the first day of the week in reports. This is a required field. Defaults to: `null`.
    - Enum - one of [MONDAY, SUNDAY]
  - id (String.t): ID of this floodlight configuration. This is a read-only, auto-generated field. Defaults to: `null`.
  - idDimensionValue (DimensionValue): Dimension value for the ID of this floodlight configuration. This is a read-only, auto-generated field. Defaults to: `null`.
  - inAppAttributionTrackingEnabled (boolean()): Whether in-app attribution tracking is enabled. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#floodlightConfiguration\&quot;. Defaults to: `null`.
  - lookbackConfiguration (LookbackConfiguration): Lookback window settings for this floodlight configuration. Defaults to: `null`.
  - naturalSearchConversionAttributionOption (String.t): Types of attribution options for natural search conversions. Defaults to: `null`.
    - Enum - one of [EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION, INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION, INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION]
  - omnitureSettings (OmnitureSettings): Settings for Campaign Manager Omniture integration. Defaults to: `null`.
  - subaccountId (String.t): Subaccount ID of this floodlight configuration. This is a read-only field that can be left blank. Defaults to: `null`.
  - tagSettings (TagSettings): Configuration settings for dynamic and image floodlight tags. Defaults to: `null`.
  - thirdPartyAuthenticationTokens ([ThirdPartyAuthenticationToken]): List of third-party authentication tokens enabled for this configuration. Defaults to: `null`.
  - userDefinedVariableConfigurations ([UserDefinedVariableConfiguration]): List of user defined variables enabled for this configuration. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :advertiserId => any(),
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :analyticsDataSharingEnabled => any(),
          :exposureToConversionEnabled => any(),
          :firstDayOfWeek => any(),
          :id => any(),
          :idDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :inAppAttributionTrackingEnabled => any(),
          :kind => any(),
          :lookbackConfiguration => GoogleApi.DFAReporting.V28.Model.LookbackConfiguration.t(),
          :naturalSearchConversionAttributionOption => any(),
          :omnitureSettings => GoogleApi.DFAReporting.V28.Model.OmnitureSettings.t(),
          :subaccountId => any(),
          :tagSettings => GoogleApi.DFAReporting.V28.Model.TagSettings.t(),
          :thirdPartyAuthenticationTokens =>
            list(GoogleApi.DFAReporting.V28.Model.ThirdPartyAuthenticationToken.t()),
          :userDefinedVariableConfigurations =>
            list(GoogleApi.DFAReporting.V28.Model.UserDefinedVariableConfiguration.t())
        }

  field(:accountId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:analyticsDataSharingEnabled)
  field(:exposureToConversionEnabled)
  field(:firstDayOfWeek)
  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:inAppAttributionTrackingEnabled)
  field(:kind)
  field(:lookbackConfiguration, as: GoogleApi.DFAReporting.V28.Model.LookbackConfiguration)
  field(:naturalSearchConversionAttributionOption)
  field(:omnitureSettings, as: GoogleApi.DFAReporting.V28.Model.OmnitureSettings)
  field(:subaccountId)
  field(:tagSettings, as: GoogleApi.DFAReporting.V28.Model.TagSettings)

  field(
    :thirdPartyAuthenticationTokens,
    as: GoogleApi.DFAReporting.V28.Model.ThirdPartyAuthenticationToken,
    type: :list
  )

  field(
    :userDefinedVariableConfigurations,
    as: GoogleApi.DFAReporting.V28.Model.UserDefinedVariableConfiguration,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.FloodlightConfiguration do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.FloodlightConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.FloodlightConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
