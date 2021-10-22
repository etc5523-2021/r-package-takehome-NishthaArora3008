test_that("direction", {
  expect_equal(warmCrush_pal()(2), c("#595952", "#70B981"))
  expect_equal(warmCrush_pal(direction = -1)(2), c("#70B981", "#595952"))
  expect_warning(warmCrush_pal()(10), "The no. of observations is greater than than palette colors")
})
