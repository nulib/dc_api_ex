# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DcApiEx.Model.PaginationInfo do
  @moduledoc """
  Pagination info for the current response.
  """

  @derive JSON.Encoder
  defstruct [
    :next_url,
    :prev_url,
    :query_url,
    :search_token,
    :current_page,
    :limit,
    :offset,
    :total_hits,
    :total_pages
  ]

  @type t :: %__MODULE__{
    :next_url => String.t | nil,
    :prev_url => String.t | nil,
    :query_url => String.t | nil,
    :search_token => String.t | nil,
    :current_page => integer() | nil,
    :limit => integer() | nil,
    :offset => integer() | nil,
    :total_hits => integer() | nil,
    :total_pages => integer() | nil
  }

  def decode(value) do
    value
  end
end

