# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DcApiEx.Model.OpenSearchResponse do
  @moduledoc """
  
  """

  @derive JSON.Encoder
  defstruct [
    :data,
    :pagination,
    :info
  ]

  @type t :: %__MODULE__{
    :data => [DcApiEx.Model.Map.t] | nil,
    :pagination => DcApiEx.Model.PaginationInfo.t | nil,
    :info => DcApiEx.Model.Info.t | nil
  }

  alias DcApiEx.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:pagination, :struct, DcApiEx.Model.PaginationInfo)
     |> Deserializer.deserialize(:info, :struct, DcApiEx.Model.Info)
  end
end

