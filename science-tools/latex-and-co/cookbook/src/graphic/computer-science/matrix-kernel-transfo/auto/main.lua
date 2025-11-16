function corners(P, u, v, focus, nb_rows)
  local start = P + (focus[1][2] - 1)*u + (nb_rows - focus[1][1] + 1)*v

  local d_row, d_col = focus[2][1], focus[2][2]
  d_row = d_row + 1
  d_col = d_col + 1

  return {
    start,
    start - d_row*v,
    start + d_col*u - d_row*v,
    start + d_col*u
  }
end

function graph3d:Dmatgrid(Mat, P, u, v, focus)
  local nb_rows = #Mat
  local nb_cols = #Mat[1]

  self:Dpolyline3d(
    corners(P, u, v, focus, nb_rows),
    true,
    "fill = yellow, draw = none"
  )

  self:Dpolyline3d(
    {
      P,
      P + nb_cols*u,
      P + nb_cols*u + nb_rows*v,
      P + nb_rows*v
    },
    true,
    "blue, line width = 0.8pt"
  )

  for i = 1, nb_cols - 1 do
    self:Dpolyline3d(
      {
        {P + i*u, P + i*u + nb_rows*v},
      },
      "blue, line width = 0.4pt"
    )
  end

  for j = 1, nb_rows - 1 do
    self:Dpolyline3d(
      {
        {P + j*v, P + j*v + nb_cols*u},
      },
      "blue, line width = 0.4pt"
    )
  end

  for j = 1, nb_rows do
    for i = 1, nb_cols do
      self:Dlabel3d(
        "$" .. Mat[1 + nb_rows - j][i] .. "$",
        P + (j - 0.5)*v + (i - 0.5)*u,
        {
          dir = {u, v}
        }
      )
    end
  end
end

function graph3d:Dmatkernel(dist, MatIn, T, foc_in, foc_out)
  local MatOut = T(MatIn)

  local O_in, O_out = M(dist, 0, 0), M(-dist, 0, 0)

  local u, v = vecJ, vecK

  seg_pts_in  = corners(O_in, u, v, foc_in, #MatIn)
  seg_pts_out = corners(O_out, u, v, foc_out, #MatOut)

  local focus_segs = {}

  for i = 1, 4 do
    focus_segs[i] = {seg_pts_in[i], seg_pts_out[i]}
  end

  self:Dmatgrid(MatOut, O_out, u, v, foc_out)

  self:Dpolyline3d(
    focus_segs,
    "red, line width = 0.4pt"
  )

  self:Dmatgrid(MatIn, O_in, u, v, foc_in)

  self:Dpolyline3d(
    focus_segs,
    "red, dotted, line width = 0.4pt"
  )
end
