-- file ch03/Guard.hs

fromMaybe :: p -> Maybe p -> p
fromMaybe defval wrapped = 
    case wrapped of
      Nothing     -> defval
      Just value  -> value