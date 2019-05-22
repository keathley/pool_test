# PoolTest

A quick plug setup to test pooling behaviours in different http clients.

## Running

run the mix application in this repo:


```
iex -S mix
```

Then cd into `/pool` and open a iex session there:

```
cd /pool
iex -S mix
```

Once you're in iex you can run different requests like so:

```
iex> Pool.hello()
iex> Pool.chris()
iex> (0..4) |> Enum.map(fn _ -> Task.start(fn -> Pool.hello() end) end)
```
