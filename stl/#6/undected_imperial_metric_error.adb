with Ada.Text_IO; use Ada.Text_IO;

procedure Undetected_Imperial_Metric_Error is

  -- Declare two type aliases
  subtype Meters is Float;
  subtype Miles is Float;

  Dist_Imperial : Miles;

  -- Declare a constant
  Dist_Metric : constant Meters := 100.0;

begin -- Undetected_Imperial_Metric_Error

  -- No conversion to Miles type required:
  Dist_Imperial := (Dist_Metric * 1609.0) / 1000.0;

  -- Not correct, but undected:
  Dist_Imperial := Dist_Metric;

  Put_Line (Miles'Image (Dist_Imperial));
end Undetected_Imperial_Metric_Error;
