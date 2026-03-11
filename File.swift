  if(viewModel.isLoading){
                    ProgressView("Loading...")
                }else{
                    List(viewModel.appetizer) { appetizer in
                     ApertizerListItem(appertizer: appetizer)
                    }
                }