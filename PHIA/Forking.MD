.ex files are for compiled code...optimized 

.exs files since they have been interpreted...slower to run...dont require to be compiled



Auction.list_items |> Enum.map(& &1.id)

Version examples section is nice!!!

mix deps.get

CH6!!!!

mix phx.new.web auction_web

mix ecto.gen.migration create_items

mix ecto.migrations

mix ecto.migrate
mix ecto.rollback

Auction.get_item(1)
