import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  parallelTransport : Prop
  curvingFlatness : Prop
  localHolonomy : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyGroupDefined : Nonempty H.holonomyGroup
  holonomyAlgebraDefined : Nonempty H.holonomyAlgebra
  parallelTransportClosed : H.parallelTransport
  curvingFlatnessClosed : H.curvingFlatness
  localHolonomyClosed : H.localHolonomy

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  Nonempty H.holonomyGroup ∧ Nonempty H.holonomyAlgebra ∧ H.parallelTransport ∧
  H.curvingFlatness ∧ H.localHolonomy

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyGroupDefined
    (And.intro E.holonomyAlgebraDefined
      (And.intro E.parallelTransportClosed
        (And.intro E.curvingFlatnessClosed E.localHolonomyClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse