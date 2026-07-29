import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

def ConstrainedAmariCencovClosure (A: AdmissibleClass): Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_amari_cencov_endgame (A: AdmissibleClass): ConstrainedAmariCencovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
