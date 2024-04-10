return {
    {
        "CRAG666/code_runner.nvim",
        enabled= false,
        config = true,
        keys = {
            {
                "<leader>r",
                "<cmd>RunCode<cr>",
                desc = "Run Code",
            },
        },
    },


    { "christoomey/vim-tmux-runner",

        keys = {
            {
                "<leader>r",
                "<cmd>VtrSendCommandToRunner<cr>"
                ,
                desc = "VtrSendCommandToRunner",
            },
            {
                "<leader>rf",
                "<cmd>VtrFlushCommand<cr>"
                ,
                desc = "VtrFlushCommand",
            },
            {
                "<leader>rr",
                "<cmd>VtrOpenRunner<cr>"
                ,
                desc = "VtrOpenRunner",
            },
            {
                "<leader>ra",
                "<cmd>VtrAttachToPane<cr>"
                ,
                desc = "VtrAttachToPane",
            },
            {
                "<leader>rc",
                "<cmd>VtrSendCtrlC<cr>"
                ,
                desc = "VtrSendCtrlC",
            },

        },

        enabled = true

    },

}
