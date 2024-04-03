return {
	'james1236/backseat.nvim',
	config = function()
        require("backseat").setup({
            -- Alternatively, set the env var $OPENAI_API_KEY by putting "export OPENAI_API_KEY=sk-xxxxx" in your ~/.bashrc
            openai_api_key = '', -- Get yours from platform.openai.com/account/api-keys
            openai_model_id = 'gpt-3.5-turbo', --gpt-4 (If you do not have access to a model, it says "The model does not exist")
            language = 'russian', -- Such as 'japanese', 'french', 'pirate', 'LOLCAT'
            split_threshold = 200,
            -- additional_instruction = "Respond like professional typescript developer with 10+ years experience", -- (GPT-3 will probably deny this request, but GPT-4 complies)
            -- additional_instruction = "Ответь на русском языке, пиши комментарии только, если они очень важны ",
            highlight = {
                icon = '', -- ''
                group = 'Comment',
            }
        })
    end,
    -- enabled = false,
}
