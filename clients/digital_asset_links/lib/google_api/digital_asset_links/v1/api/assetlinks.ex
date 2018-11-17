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

defmodule GoogleApi.DigitalAssetLinks.V1.Api.Assetlinks do
  @moduledoc """
  API calls for all endpoints tagged `Assetlinks`.
  """

  alias GoogleApi.DigitalAssetLinks.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Determines whether the specified (directional) relationship exists between the specified source and target assets.  The relation describes the intent of the link between the two assets as claimed by the source asset.  An example for such relationships is the delegation of privileges or permissions.  This command is most often used by infrastructure systems to check preconditions for an action.  For example, a client may want to know if it is OK to send a web URL to a particular mobile app instead. The client can check for the relevant asset link from the website to the mobile app to decide if the operation should be allowed.  A note about security: if you specify a secure asset as the source, such as an HTTPS website or an Android app, the API will ensure that any statements used to generate the response have been made in a secure way by the owner of that asset.  Conversely, if the source asset is an insecure HTTP website (that is, the URL starts with &#x60;http://&#x60; instead of &#x60;https://&#x60;), the API cannot verify its statements securely, and it is not possible to ensure that the website&#39;s statements have not been altered by a third party.  For more information, see the [Digital Asset Links technical design specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md).

  ## Parameters

  - connection (GoogleApi.DigitalAssetLinks.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :source.web.site (String.t): Web assets are identified by a URL that contains only the scheme, hostname and port parts.  The format is      http[s]://&lt;hostname&gt;[:&lt;port&gt;]  Hostnames must be fully qualified: they must end in a single period (\&quot;&#x60;.&#x60;\&quot;).  Only the schemes \&quot;http\&quot; and \&quot;https\&quot; are currently allowed.  Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https.  We call this limited URL the \&quot;site\&quot;.  All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset.  Example: the asset with the site &#x60;https://www.google.com&#x60; contains all these URLs:    *   &#x60;https://www.google.com/&#x60;   *   &#x60;https://www.google.com:443/&#x60;   *   &#x60;https://www.google.com/foo&#x60;   *   &#x60;https://www.google.com/foo?bar&#x60;   *   &#x60;https://www.google.com/foo#bar&#x60;   *   &#x60;https://user@password:www.google.com/&#x60;  But it does not contain these URLs:    *   &#x60;http://www.google.com/&#x60;       (wrong scheme)   *   &#x60;https://google.com/&#x60;          (hostname does not match)   *   &#x60;https://www.google.com:444/&#x60;  (port does not match) REQUIRED
    - :source.androidApp.packageName (String.t): Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name &#x60;com.google.android.apps.maps&#x60;. REQUIRED
    - :target.androidApp.packageName (String.t): Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name &#x60;com.google.android.apps.maps&#x60;. REQUIRED
    - :source.androidApp.certificate.sha256Fingerprint (String.t): The uppercase SHA-265 fingerprint of the certificate.  From the PEM  certificate, it can be acquired like this:      $ keytool -printcert -file $CERTFILE | grep SHA256:     SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\         42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5  or like this:      $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256     SHA256 Fingerprint&#x3D;14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\         16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5  In this example, the contents of this field would be &#x60;14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5&#x60;.  If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).
    - :relation (String.t): Query string for the relation.  We identify relations with strings of the format &#x60;&lt;kind&gt;/&lt;detail&gt;&#x60;, where &#x60;&lt;kind&gt;&#x60; must be one of a set of pre-defined purpose categories, and &#x60;&lt;detail&gt;&#x60; is a free-form lowercase alphanumeric string that describes the specific use case of the statement.  Refer to [our API documentation](/digital-asset-links/v1/relation-strings) for the current list of supported relations.  For a query to match an asset link, both the query&#39;s and the asset link&#39;s relation strings must match exactly.  Example: A query with relation &#x60;delegate_permission/common.handle_all_urls&#x60; matches an asset link with relation &#x60;delegate_permission/common.handle_all_urls&#x60;.
    - :target.web.site (String.t): Web assets are identified by a URL that contains only the scheme, hostname and port parts.  The format is      http[s]://&lt;hostname&gt;[:&lt;port&gt;]  Hostnames must be fully qualified: they must end in a single period (\&quot;&#x60;.&#x60;\&quot;).  Only the schemes \&quot;http\&quot; and \&quot;https\&quot; are currently allowed.  Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https.  We call this limited URL the \&quot;site\&quot;.  All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset.  Example: the asset with the site &#x60;https://www.google.com&#x60; contains all these URLs:    *   &#x60;https://www.google.com/&#x60;   *   &#x60;https://www.google.com:443/&#x60;   *   &#x60;https://www.google.com/foo&#x60;   *   &#x60;https://www.google.com/foo?bar&#x60;   *   &#x60;https://www.google.com/foo#bar&#x60;   *   &#x60;https://user@password:www.google.com/&#x60;  But it does not contain these URLs:    *   &#x60;http://www.google.com/&#x60;       (wrong scheme)   *   &#x60;https://google.com/&#x60;          (hostname does not match)   *   &#x60;https://www.google.com:444/&#x60;  (port does not match) REQUIRED
    - :target.androidApp.certificate.sha256Fingerprint (String.t): The uppercase SHA-265 fingerprint of the certificate.  From the PEM  certificate, it can be acquired like this:      $ keytool -printcert -file $CERTFILE | grep SHA256:     SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\         42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5  or like this:      $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256     SHA256 Fingerprint&#x3D;14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\         16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5  In this example, the contents of this field would be &#x60;14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5&#x60;.  If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).

  ## Returns

  {:ok, %GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse{}} on success
  {:error, info} on failure
  """
  @spec digitalassetlinks_assetlinks_check(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse.t()} | {:error, Tesla.Env.t()}
  def digitalassetlinks_assetlinks_check(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :"source.web.site" => :query,
      :"source.androidApp.packageName" => :query,
      :"target.androidApp.packageName" => :query,
      :"source.androidApp.certificate.sha256Fingerprint" => :query,
      :relation => :query,
      :"target.web.site" => :query,
      :"target.androidApp.certificate.sha256Fingerprint" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/assetlinks:check")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse{}])
  end
end