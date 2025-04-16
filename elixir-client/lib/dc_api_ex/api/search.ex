# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DcApiEx.Api.Search do
  @moduledoc """
  API calls for all endpoints tagged `Search`.
  """

  alias DcApiEx.Connection
  import DcApiEx.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (DcApiEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): Keyword query
    - `:searchToken` (String.t): Search token from previous search response
    - `:page` (integer()): Page number of results to retrieve
    - `:size` (integer()): Maximum number of results per page
    - `:sort` (String.t): Comma-delimited list of fields to sort search results (e.g. \"create_date:asc,modified_date:desc\")
    - `:as` (String.t): Desired output format

  ### Returns

  - `{:ok, DcApiEx.Model.GetCollections200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_search(Tesla.Env.client, keyword()) :: {:ok, DcApiEx.Model.GetCollections200Response.t} | {:error, Tesla.Env.t}
  def get_search(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :searchToken => :query,
      :page => :query,
      :size => :query,
      :sort => :query,
      :as => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DcApiEx.Model.GetCollections200Response}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (DcApiEx.Connection): Connection to server
  - `models` ([String.t]): Comma-delimited list of models to search
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): Keyword query
    - `:searchToken` (String.t): Search token from previous search response
    - `:page` (integer()): Page number of results to retrieve
    - `:size` (integer()): Maximum number of results per page
    - `:sort` (String.t): Comma-delimited list of fields to sort search results (e.g. \"create_date:asc,modified_date:desc\")
    - `:as` (String.t): Desired output format

  ### Returns

  - `{:ok, DcApiEx.Model.GetCollections200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_search_with_models(Tesla.Env.client, list(String.t), keyword()) :: {:ok, DcApiEx.Model.GetCollections200Response.t} | {:error, Tesla.Env.t}
  def get_search_with_models(connection, models, opts \\ []) do
    optional_params = %{
      :query => :query,
      :searchToken => :query,
      :page => :query,
      :size => :query,
      :sort => :query,
      :as => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search/#{models}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DcApiEx.Model.GetCollections200Response}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (DcApiEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (map()): 

  ### Returns

  - `{:ok, DcApiEx.Model.GetCollections200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_search(Tesla.Env.client, keyword()) :: {:ok, DcApiEx.Model.GetCollections200Response.t} | {:error, Tesla.Env.t}
  def post_search(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/search")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DcApiEx.Model.GetCollections200Response}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (DcApiEx.Connection): Connection to server
  - `models` ([String.t]): Comma-delimited list of models to search
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): Page number of results to retrieve
    - `:size` (integer()): Maximum number of results per page
    - `:sort` (String.t): Comma-delimited list of fields to sort search results (e.g. \"create_date:asc,modified_date:desc\")
    - `:as` (String.t): Desired output format

  ### Returns

  - `{:ok, DcApiEx.Model.GetCollections200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_search_with_models(Tesla.Env.client, list(String.t), keyword()) :: {:ok, DcApiEx.Model.GetCollections200Response.t} | {:error, Tesla.Env.t}
  def post_search_with_models(connection, models, opts \\ []) do
    optional_params = %{
      :page => :query,
      :size => :query,
      :sort => :query,
      :as => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/search/#{models}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DcApiEx.Model.GetCollections200Response}
    ])
  end
end
