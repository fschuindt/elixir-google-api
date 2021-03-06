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

defmodule GoogleApi.YouTube.V3.Model.SuperChatEventSnippet do
  @moduledoc """


  ## Attributes

  - amountMicros (String.t): The purchase amount, in micros of the purchase currency. e.g., 1 is represented as 1000000. Defaults to: `null`.
  - channelId (String.t): Channel id where the event occurred. Defaults to: `null`.
  - commentText (String.t): The text contents of the comment left by the user. Defaults to: `null`.
  - createdAt (DateTime.t): The date and time when the event occurred. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  - currency (String.t): The currency in which the purchase was made. ISO 4217. Defaults to: `null`.
  - displayString (String.t): A rendered string that displays the purchase amount and currency (e.g., \&quot;$1.00\&quot;). The string is rendered for the given language. Defaults to: `null`.
  - isSuperChatForGood (boolean()): True if this event is a Super Chat for Good purchase. Defaults to: `null`.
  - isSuperStickerEvent (boolean()): True if this event is a Super Sticker event. Defaults to: `null`.
  - messageType (integer()): The tier for the paid message, which is based on the amount of money spent to purchase the message. Defaults to: `null`.
  - nonprofit (Nonprofit): If this event is a Super Chat for Good purchase, this field will contain information about the charity the purchase is donated to. Defaults to: `null`.
  - superStickerMetadata (SuperStickerMetadata): If this event is a Super Sticker event, this field will contain metadata about the Super Sticker. Defaults to: `null`.
  - supporterDetails (ChannelProfileDetails): Details about the supporter. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amountMicros => any(),
          :channelId => any(),
          :commentText => any(),
          :createdAt => DateTime.t(),
          :currency => any(),
          :displayString => any(),
          :isSuperChatForGood => any(),
          :isSuperStickerEvent => any(),
          :messageType => any(),
          :nonprofit => GoogleApi.YouTube.V3.Model.Nonprofit.t(),
          :superStickerMetadata => GoogleApi.YouTube.V3.Model.SuperStickerMetadata.t(),
          :supporterDetails => GoogleApi.YouTube.V3.Model.ChannelProfileDetails.t()
        }

  field(:amountMicros)
  field(:channelId)
  field(:commentText)
  field(:createdAt, as: DateTime)
  field(:currency)
  field(:displayString)
  field(:isSuperChatForGood)
  field(:isSuperStickerEvent)
  field(:messageType)
  field(:nonprofit, as: GoogleApi.YouTube.V3.Model.Nonprofit)
  field(:superStickerMetadata, as: GoogleApi.YouTube.V3.Model.SuperStickerMetadata)
  field(:supporterDetails, as: GoogleApi.YouTube.V3.Model.ChannelProfileDetails)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.SuperChatEventSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.SuperChatEventSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.SuperChatEventSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
