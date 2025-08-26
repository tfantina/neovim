require("travis")
print("Hello, Travis!")

function MyTabLine()
    local tabline = ""
    for index = 1, vim.fn.tabpagenr('$') do
        -- select the highlighting
        if index == vim.fn.tabpagenr() then
            tabline = tabline .. '%#TabLineSel#'
        else
            tabline = tabline .. '%#TabLine#'
        end

        -- set the tab page number (for mouse clicks)
        tabline = tabline .. '%' .. index .. 'T'

        local win_num = vim.fn.tabpagewinnr(index)
        local working_directory = vim.fn.getcwd(win_num, index)
        local project_name = vim.fn.fnamemodify(working_directory, ":t")
        tabline = tabline .. " " .. project_name .. " "
    end

    -- after the last tab fill with TabLineFill and reset tab page nr
    tabline = tabline .. '%#TabLineFill#%T'

    -- right-align the label to close the current tab page
    if vim.fn.tabpagenr('$') > 1 then
        tabline = tabline .. '%=%#TabLine#%999Xclose'
    end

    return tabline
end
-- vim.go.tabline = "%!v:lua.MyTabLine()" 

