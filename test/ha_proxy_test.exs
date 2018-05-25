defmodule HaProxyTest do
  use ExUnit.Case
  doctest HaProxy

  test "greets the world" do
    assert HaProxy.hello() == :world
  end
end
