local setup, comment = pcall(require, "Comment")
if not setup then
  return
end


comment.setup()
-- comment/uncomment using g c (c) <movement)
