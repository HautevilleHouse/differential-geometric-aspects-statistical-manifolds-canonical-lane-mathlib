import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  holonomyGroup : Type v
  reducedHolonomyGroup : Type w
  berlinClassification : Prop
  holonomyClosed : Prop

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.berlinClassification ∧ H.holonomyClosed

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse