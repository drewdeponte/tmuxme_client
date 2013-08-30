# Things that need doing

- Add logic at the top of the client that verifies that Remote Login is
  enabled and that the running user is listed in the access list. If it is not
  enabled then prompt the user to ask them if they want to enable it. If they
  don't then exit tmuxme. If they do enable it then make sure they are in the
  access list. If they aren't add them to the access list.
