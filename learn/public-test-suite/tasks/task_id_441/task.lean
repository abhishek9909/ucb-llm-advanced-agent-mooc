-- Implementation
def cubeSurfaceArea (size : Int) : Int :=
  -- << CODE START >>
  size * size * 6
  -- << CODE END >>


-- Theorem: The surface area of the cube is calculated correctly
def cubeSurfaceArea_spec (size : Int) (result : Int) : Prop :=
  -- << SPEC START >>
  result = 6 * size * size
  -- << SPEC END >>
