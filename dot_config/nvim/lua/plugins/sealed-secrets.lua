
return {
  "tinoschroeter/sealed-secrets.nvim",
  -- dir = "~/projects/sealed-secrets.nvim", -- dev only
  config = function()
    require("sealed-secrets").setup({
      -- the path can also be relative ../../sealedsecrets.pem
      cert_path = "../../../.kube/k8s.pem"
    })
  end,
}
