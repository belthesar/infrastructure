ip_blacklist:
  - 52.71.155.178    # Kontera running on AWS indexing weird stuff
  - 38.105.201.194   # guy trying to use sqlmap to do sql injections
  - 199.180.114.192  # spamming junk into the prereg form fields
  - 37.147.108.24    # spamming junk into the prereg form fields
  - 46.161.9.3       # spamming junk into the prereg form fields
  - 54.85.182.120    # Amazon bot repeatedly requesting POST only URLs
  # Since we started using fail2ban, we're no longer banning individual SSH bots
