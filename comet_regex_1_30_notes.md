Comet steps
1. search for & and <
2. find .+ replace `<p>\0</p>`
3. Tag title and author; also type in author which wasn't in original text
4. tag metadata, body, include root element
5. find "(.+)" replace with `<quote>\1</quote>`
    This works with the exception of quotes that have nonquoted text in the middle
    find "(.+)" again, replace with `</quote>\1<quote>`
