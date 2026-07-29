import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

def ConstrainedStatisticalManifoldClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_statistical_manifold_endgame (A : AdmissibleClass) :
    ConstrainedStatisticalManifoldClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
