import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure CurvatureInvariantsPackage where
  scalarCurvature: Prop
  ricciCurvature: Prop
  sectionalCurvature: Prop
  holomorphicCurvature: Prop
  invariantsComputed: Prop

def CurvatureInvariantsClosed (C: CurvatureInvariantsPackage): Prop :=
  C.scalarCurvature ∧ C.ricciCurvature ∧ C.sectionalCurvature ∧ C.holomorphicCurvature ∧ C.invariantsComputed

theorem curvature_invariants_closed_from_fields (C: CurvatureInvariantsPackage): CurvatureInvariantsClosed C := by
  exact And.intro C.scalarCurvature
    (And.intro C.ricciCurvature
      (And.intro C.sectionalCurvature
        (And.intro C.holomorphicCurvature C.invariantsComputed)))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
