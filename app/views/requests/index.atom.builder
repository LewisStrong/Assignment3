atom_feed do |feed|
  feed.title("LJMU Holiday Requests RSS")
  feed.updated(@requests.first.created_at)
  @requests.each do |request|
    feed.entry(request) do |entry|
    entry.title(request.user_id)
    entry.content(request.authorised)
  end
end
end

