library(digest)

mine = function (prevBlock,genesis=FALSE){
  if(genesis){
    # CREAZIONE BLOCCO GENESI
    block = list(
      number=0,
      timestamp = Sys.time(),
      data = "GENESIS BLOCK",
      parent_hash = "0"
    )
  } else {
    block = list(
      number = prevBlock$number +1,
      timestamp = Sys.time(),
      data = paste("BLOCK ",number),
      parent_hash = prevBlock$hash
    )
  }
  block$hash = digest(block,"sha256")
  return(block)
}


chain = function (nBlock){
  ch = list()
  # GENESIS
  ch = append(ch, mine(list(),TRUE))
  for (i in 1:(nBlock-1)){
    ch = append(ch,
                 mine(ch[i],FALSE)
                )
  }
  return (ch)
}



lista = chain(4)
