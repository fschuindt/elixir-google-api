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

defmodule GoogleApi.Content.V2.Model.OrderPaymentMethod do
  @moduledoc """


  ## Attributes

  - billingAddress (OrderAddress): The billing address. Defaults to: `null`.
  - expirationMonth (integer()): The card expiration month (January &#x3D; 1, February &#x3D; 2 etc.). Defaults to: `null`.
  - expirationYear (integer()): The card expiration year (4-digit, e.g. 2015). Defaults to: `null`.
  - lastFourDigits (String.t): The last four digits of the card number. Defaults to: `null`.
  - phoneNumber (String.t): The billing phone number. Defaults to: `null`.
  - type (String.t): The type of instrument.  Acceptable values are:   - \&quot;AMEX\&quot;  - \&quot;DISCOVER\&quot;  - \&quot;JCB\&quot;  - \&quot;MASTERCARD\&quot;  - \&quot;UNIONPAY\&quot;  - \&quot;VISA\&quot;  - \&quot;\&quot; Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingAddress => GoogleApi.Content.V2.Model.OrderAddress.t(),
          :expirationMonth => any(),
          :expirationYear => any(),
          :lastFourDigits => any(),
          :phoneNumber => any(),
          :type => any()
        }

  field(:billingAddress, as: GoogleApi.Content.V2.Model.OrderAddress)
  field(:expirationMonth)
  field(:expirationYear)
  field(:lastFourDigits)
  field(:phoneNumber)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderPaymentMethod do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderPaymentMethod.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderPaymentMethod do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
