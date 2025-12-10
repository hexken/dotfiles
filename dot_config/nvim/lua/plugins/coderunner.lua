return {
  "CRAG666/code_runner.nvim",
  keys = {
    {
      "<leader>r",
      ":RunCode<CR>",
      desc = "Run Code",
    },
  },
  opts = {
    mode = "better_term",
    better_term = { -- Toggle mode replacement
      clean = false, -- Clean terminal before launch
      number = 1, -- Use nil for dynamic number and set init
      init = nil,
    },
    filetype = {
      cpp = {
        "cd $dir &&",
        "mkdir -p temp &&",
        'g++ -I /opt "$dir/$fileName" -o "$dir/temp/$fileNameWithoutExt" -std=c++20 &&',
        '"$dir/temp/$fileNameWithoutExt"',
      },
    },
  },
}
