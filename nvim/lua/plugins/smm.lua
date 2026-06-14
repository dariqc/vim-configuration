return {
    {
        "iamt4nk/smm.nvim",
        -- Spotify client. Requires telescope + plenary (telescope is pulled in
        -- here purely as a dependency; fzf-lua remains your finder).
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        cmd = "Spotify",
        config = function()
            -- TODO: fill in your Spotify developer app credentials before use.
            -- 1. Create an app at https://developer.spotify.com/dashboard
            -- 2. Add a Redirect URI (e.g. http://localhost:8888/callback)
            -- 3. Add your Spotify account under the app's User Management list
            require("smm").setup({
                spotify = {
                    auth = {
                        client_id     = "<YOUR_SPOTIFY_CLIENT_ID>",
                        callback_url   = "http://localhost",
                        callback_port  = "8888",
                    },
                },
            })
        end,
    },
}
