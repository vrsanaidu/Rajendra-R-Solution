ip <- function(packagename){
  # Verify the package is installed.
  is_installed <- any(grepl(packagename,installed.packages()))
  
  if(!is_installed){
    install.packages(packagename)
    print("Installed package")
  }
  else
  {
    print("package already installed")
  }
}

