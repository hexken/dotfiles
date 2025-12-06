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
